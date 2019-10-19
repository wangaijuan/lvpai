<template>
  <div>
    <!--1.面板-->
      <!--外观-->
      <!--添加父元素和三个子面板，子面板和tabbar对应-->
      <mt-tab-container v-model="active">
        <mt-tab-container-item id="tab1">
          首页面板        
        </mt-tab-container-item>
        <mt-tab-container-item id="tab2">社区面板</mt-tab-container-item>
        <mt-tab-container-item id="tab3">排行面板</mt-tab-container-item>
        <mt-tab-container-item id="tab4">商城面板</mt-tab-container-item>
        <mt-tab-container-item id="tab5">我的面板</mt-tab-container-item>
      </mt-tab-container>

    <!--2.底部导航条-->
    
      <!--底部导航条父元素-->
    <mt-tabbar v-model="active" >
      <!--添加三个按钮-->
      <mt-tab-item id="tab1">
        <img  slot="icon" src="../assets/tab/shouye2.png" class="im1">   
        首页
      </mt-tab-item>
      <mt-tab-item id="tab2">
        <img  slot="icon" src="../assets/tab/shequ2.png" class="im1">
        社区
      </mt-tab-item>
      <mt-tab-item id="tab3">
        <img slot="icon" src="../assets/tab/paihang2.png" class="im1">
        排行
      </mt-tab-item>
      <mt-tab-item id="tab4">
        <img slot="icon" src="../assets/tab/shangcheng2.png" class="im1">
        商城
      </mt-tab-item>
      <mt-tab-item id="tab5">
        <img slot="icon" src="../assets/tab/wode2.png" class="im1">
        我的
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
import Login from "./Login.vue"
export default {
  data(){
    return {
      //active作用1.保存用户选中按钮id
      active:"tab1"
    }
  }
  
}


</script>



<style scoped>
.mint-tab-item-icon > * {
    display: block;
    width: 100%;
    height: 80%;
    margin-left:-5px;

}
.mint-tab-item-label {
    font-size: 20px;
    line-height: 2;  
}
.im1{
  padding:5px;
}
</style>