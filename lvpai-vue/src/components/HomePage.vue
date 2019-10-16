<template>
<!-- 最外层父元素 -->
<div class="parent">
  <!--搜素框 -->
  <div class="input">
     <van-search placeholder="请输入搜索关键词" v-model="value" />
  </div> 
    <!-- 小图标 -->
    <div >
      <a href="#">
          <img class="icon" src="../assets/small/phone.png" />
        </a>
        <a href="#">
          <img class="icon" src="../assets/small/message.png" />
        </a>
  
  </div>
 
      
  <!-- 轮播图 -->
  <div class="swipe">
    <van-swipe :autoplay="3000" indicator-color="white">
      <van-swipe-item>
       <a href="#"> 
         <img class="swipe" src="../assets/home/focus1.jpg" />
       </a>
      </van-swipe-item>
      <van-swipe-item>
        <a href="#">
         <img class="swipe" src="../assets/home/focus2.jpg" />
        </a>
      </van-swipe-item>
      <van-swipe-item>
        <a href="#">
         <img class="swipe"  src="../assets/home/focus3.jpg" />
        </a>
      </van-swipe-item>
      <van-swipe-item>
        <a href="#">
         <img class="swipe" src="../assets/home/focus4.jpg" />
        </a>
      </van-swipe-item>
    </van-swipe>
  </div>
 </div> 
</template>
<style scoped>
/* 轮播图形样式 */
    .swipe{
      width:100%;
    }
    /* 搜素框图形样式 */
     .input{
     
      display: flex;
    }
      /*
      搜索框内边距 
    .input input{
      padding:0.5rem;
    } */
    .icon{
      width:8%;
      /* margin-top:0.1rem; */
       }
  
</style>