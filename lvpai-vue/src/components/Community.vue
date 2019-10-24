<template>
<!-- 最外层父元素 -->
<div class="parent">
    <!-- 轮播图 -->
    <div class="swipe">
      <van-swipe :autoplay="3000" indicator-color="white">
        <van-swipe-item>
        <a href="#"> 
          <img class="swipe" src="../assets/nange1/n11.jpg" />
        </a>
        </van-swipe-item>
        <van-swipe-item>
          <a href="#">
          <img class="swipe" src="../assets/nange1/n12.jpg" />
          </a>
        </van-swipe-item>
        <van-swipe-item>
          <a href="#">
          <img class="swipe"  src="../assets/nange1/n13.jpg" />
          </a>
        </van-swipe-item>
        <van-swipe-item>
          <a href="#">
          <img class="swipe" src="../assets/nange1/n14.jpg" />
          </a>
        </van-swipe-item>
      </van-swipe>
    </div>
   
  <!-- 导航小图标 -->
    <div @click="shop" class="nav">
        <img src="../assets/nange/n1.png" />  
        <img src="../assets/nange/n2.png" />      
        <img src="../assets/nange/n3.png" />      
        <img src="../assets/nange/n4.png" />      
    </div>
     <div @click="shop" class="p1"> 
        <p>婚纱摄影</p>
        <p>真实婚礼</p>
        <p>避坑指南</p>
        <p>婚品攻略</p>
    </div>
    <div @click="shop" class="nav">
        <img src="../assets/nange/n5.png" />  
        <img src="../assets/nange/n6.png" />      
        <img src="../assets/nange/n7.png" />      
        <img src="../assets/nange/n8.png" />        
    </div>
     <div @click="shop" class="p1"> 
        <p>婚纱探店</p>
        <p>婚前自救</p>
        <p>两性情感</p>
        <p>新娘群</p>
    </div>
    
    <div class="list">
      <div class="d1">
        <img src="../assets/nange/4.png" />       
        <van-tag round type="warning" class="guanzhu">关注</van-tag>
      </div>
      <div class="d2">
        <img src="../assets/nange1/n15.jpg" />
      </div>
      <div>
     <p> <van-tag type="danger">顶</van-tag>  真实婚礼!我的婚礼,一场与9级台风暴雨的博弈!</p>
      </div>
      <div>
         <van-tag plain type="warning">话题</van-tag>
         <van-tag plain type="warning">找婚庆</van-tag>
        <div>
          <p> 8.0w浏览  2390 点赞</p>
        </div>
      </div>
    </div>
    <div>
      <div class="d1">
        <img src="../assets/nange/3.png" />       
        <van-tag round type="warning" class="guanzhu">关注</van-tag>
      </div>
      <div class="d2">
        <img src="../assets/nange1/n16.jpg" />
      </div>
      <div>
     <p> <van-tag type="success">精</van-tag>  婚前必做5件事,解决你可能遇到的各种意外</p>
      </div>
      <div>
         <van-tag plain type="warning">话题</van-tag>
         <van-tag plain type="warning">找婚庆</van-tag>
        <div>
          <p> 8.0w浏览  2390 点赞</p>
        </div>
      </div>
    </div>
    
</div>
</template>
<script>
    export default{
      data(){
        return{
        }
      },
      methods:{
        shop(){
          // 点击跳转到商城页面  这里用于测试跳转到Login
          this.$router.push("list");
        }
      }
    }
</script>
<style scoped>  
/* 轮播图形样式 */
    .swipe{
      width:100%;
      height:50%;
      padding:0;
    }  
  /* 导航样式 */
  .nav{
    display: flex;

  }
  .nav img{
    display: flex;
    justify-content: space-around;
    padding:4px 23px;
    width:50px;
    height:50px;
  }
  .p1{
     display: flex;
  }
  .p1 p{
    margin:0;
    padding:2px;
    width:25%;
    font-size:16px;
  }
  
 
 .d1{
   display: flex;
   align-items: center;
   justify-content: space-between;
 }
 .guanzhu{
height: 20px;

 }
 .d2 img{
    width:100%;
      padding:0;
 } 
 .list{
   padding-top:20px;
 }
</style>