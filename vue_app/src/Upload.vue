<!--src/componets/Exam01.vue-->
<template>
  <!-- 先创建一个根元素 div-->
  <div class="app-exam01">
       <div class="dropbox p-3">
        <h2 v-if="files.length===0" class="text-center">把要上传的文件拖动到这里</h2>
        <div class="border m-2 d-inline-block p-4" style="width:15rem" v-for="file in files">
            <h5 class="mt-0">{{ file.name }}</h5>
        </div>
    </div>
  </div>
</template>
<script>
  export default {//组件默认导出对象 
     data(){
       return {
           files: []
       }  //组件操作数据 
     },
        methods: {
            uploadFile: function (file) {
                var item = {
                    name: file.name,
                    uploadPercentage: 0
                };
                this.files.push(item);
                var fd = new FormData();
                fd.append('logo', file);

                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'http://127.0.0.1:3000/upload', true);
                xhr.upload.addEventListener('progress', function (e) {
                    item.uploadPercentage = Math.round((e.loaded * 100) / e.total);
                }, false);
                xhr.send(fd);
            },
            onDrag: function (e) {
                e.stopPropagation();
                e.preventDefault();
            },
            onDrop: function (e) {
                e.stopPropagation();
                e.preventDefault();
		//在进行拖放操作时，DataTransfer 对象用来保存，通过拖放动作，拖动到浏览器的数据
                var dt = e.dataTransfer;
                for (var i = 0; i !== dt.files.length; i++) {
		   //循环上传多个文件
                    this.uploadFile(dt.files[i]);
                }
            }
        },
        mounted: function () {
	    //获取父元素 为拖动目录元素绑定事件
            var dropbox = document.querySelector('.dropbox');
	    //拖动进入 拖动 悬停 阻止事件默认行为
            dropbox.addEventListener('dragenter', this.onDrag, false);
            dropbox.addEventListener('dragover', this.onDrag, false);
            dropbox.addEventListener('drop', this.onDrop, false);
        }
  }
</script>
<style>
  .app-exam01{
     color:red;
     font-size:16px;    
  }
</style>