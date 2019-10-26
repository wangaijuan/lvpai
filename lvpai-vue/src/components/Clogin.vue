<template>
    <div id="container">
        <table></table>
    <div class="btn">
        <input class="input1" type="text" placeholder="请输入用户名" v-model="uname" :attr="{autofocus:true}">
        <input class="input2" type="text" placeholder="请输入密码" v-model="upwd" :attr="{autofocus:true}">
        <input class="input3" type="text" placeholder="请输入电话" v-model="phone" :attr="{autofocus:true}">
        <button class="btn1" @click="login" >登录</button>
    </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:"",
            phone:""
        }
    },
    methods:{
        login(){
            // 创建正则表达式3~12位 字母数字
             var ureg=/^[a-z0-9]{3,12}$/i;
             var treg=/^1[3-8]\d{9}$/;
             //获取用户名和密码
              var u=this.uname;
              var p=this.upwd;
              var t=this.phone;         
            //验证用户
            if(ureg.test(u)==false){
                this.$messagebox("消息","用户名格式不正确");
                return;
            };
            if(ureg.test(p)==false){
                this.$messagebox("消息","密码输入错误");
                return;
            }
            if(treg.test(t)==false){
                this.$messagebox("消息","手机号输入错误");
                return;
            }
            //发送ajax请求
             var url = "Clogin";
             var obj = {uname:u,upwd:p,phone:t};
            //console.log(obj);
            console.log(obj);
             this.axios.get(url,{params:obj}).then(res=>{
                //console.log(res);
                 console.log(res.data.code);  
               if(res.data.code<0){
                this.$messagebox("消息","用户名,密码和手机号有误");
            }else{
             //跳转product组件
            this.$router.push("/Tabbar");
                } 
            });
        }
    }
}
</script>
<style scope>
    #container{
        width:375px;
        height:667px;
        margin:0 auto;
        background-image:url(../assets/login/0.jpg);
        background-repeat:no-repeat;
        background-size:cover;
    }
    .input1{
       padding:14px; 
    }
    .input2{
        margin:40px 0; 
        padding:14px;
    }
    .input3{
        padding:14px;
    }
    .btn{
        margin:305px 8px;
        background-color:rgba(0,0,0,0.3);
    }
    .btn1{
        width:77%;height:51px;
		color:#77747a;
		font-size:20px;
		margin-top:31px;
    }
</style>   