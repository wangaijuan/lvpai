<template>
<!-- 最外层父元素 -->
<div class="parent">
  <!--搜素框 -->
    <div class="input">
      <p>西安</p >
      <van-search placeholder="DIY个性化婚礼"  />
      <!-- 小图标 -->
      <a href="#" class="a1">
        <img class="icon" src="../assets/small/phone.png" />
      </a>
      <a href="#"  class="a1">
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

<script>
    export default{

    }
</script>
<style scoped>
/* 轮播图形样式 */
    .swipe{
      width:100%;
    }
    /* 搜素框图形样式 */
     .input{
      display: flex;
    }

    .icon{
      width:30%;
      /* margin-top:0.1rem; */
      padding:18px;
       }
    .sp1{
      width:200px;
      height:5px;
      margin-top:100px;
    }
    .a1{
      width:100px;
      height:5px;
    }
  
</style>