<template>
  <div>
    <!--1.面板-->
      <!--外观-->
      <!--添加父元素和三个子面板，子面板和tabbar对应-->
      <mt-tab-container v-model="active" >
        <mt-tab-container-item id="tab1">
        <HomePage ></HomePage>
        </mt-tab-container-item>
        <mt-tab-container-item id="tab2">
          <login ></login>
        </mt-tab-container-item>
        <mt-tab-container-item id="tab3">
          <rank></rank>
        </mt-tab-container-item>
        <mt-tab-container-item id="tab4">
         <List ></List>
        </mt-tab-container-item>
        <mt-tab-container-item id="tab5">
         <My></My>
        </mt-tab-container-item>
      </mt-tab-container>

    <!--2.底部导航条-->    
      <!--底部导航条父元素-->
    <mt-tabbar v-model="active" fixed>
      <!--添加按钮-->
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
import HomePage from "./HomePage.vue"
import Login from "./Login.vue"
import Rank from "./Rank.vue"
import List from "./list.vue"
import My from "./My.vue"

export default {
  data(){
    return {
      //active作用1.保存用户选中按钮id
      active:"tab1"
    }
  },
  components:{  //注册子组件
    "HomePage":HomePage,  //子组件名：对象 
    "login":Login,
    "rank":Rank,
    "List":List,
    "My":My  ,   
  } 
}
</script>



<style scoped>
.mint-tab-item-icon {
    display: block;
    width: 100%;
    height: 80%;
    margin-left:-10px;


} 
.mint-tab-item-label {
    font-size: 18px;
    line-height: 2;  
}
/*图标 */
.im1{
  padding:5px;
}
/*大图标 */
.mint-tab-item {
    display: block;
    padding: -5px 0;
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    text-decoration: none;
}

.im1[data-v-7b7e5f8e] {
    padding: 0px;
}
</style>