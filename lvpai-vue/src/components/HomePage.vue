<template>
<!-- 最外层父元素 -->
<div class="parent">

  <!--搜素框 -->
    <div class="input">
      <p id="p1">西安</p>
      <van-search placeholder="DIY个性化婚礼"  />
      <!-- 小图标 -->
       <div class="a1">
        <img  src="../assets/small/phone.png" />
        <img  src="../assets/s  mall/message.png" />
       </div>
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
  <!-- 导航小图标 -->
    <div @click="shop" class="nav">
        <img src="../assets/small/hnav1.png" />  
        <img src="../assets/small/hnav2.png" />      
        <img src="../assets/small/hnav3.png" />      
        <img src="../assets/small/hnav4.jpg" />      
        <img src="../assets/small/hnav5.png" />   
    </div>
    <div @click="shop" class="p1"> 
        <p>全球旅拍</p>
        <p>婚纱摄影</p>
        <p>婚礼策划</p>
        <p>结婚礼服</p>
        <p>全部商家</p>
    </div>
    <!-- 导航小图标 -->
    <div @click="shop" class="nav">
        <img src="../assets/small/hnav01.png" />  
        <img src="../assets/small/hnav02.png" />
        <img src="../assets/small/hnav03.png" /> 
        <img src="../assets/small/hnav04.png" />     
        <img src="../assets/small/hnav05.png" />   
    </div>
    <div @click="shop" class="p1"> 
        <p>电子请柬</p>
        <p>结婚吉日</p>
        <p>结婚事项</p>
        <p>晒结婚照</p>
        <p>更多功能</p>
    </div>
    <!-- 热门推荐 -->
    <div class="homeRe"> 
      <van-tabs v-model="active">
  <van-tab title="热门推荐">
    <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
  <van-tab title="全球旅拍">
    <!-- 全球旅拍 -->
     <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
  <van-tab title="婚纱摄影">
    <!-- 婚纱摄影 -->
     <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
  <van-tab title="婚礼策划">
    <!-- 婚礼策划 -->
     <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
  <van-tab title="结婚礼服">
    <!-- 结婚礼服 -->
     <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
  <van-tab title="婚宴酒店">
    <!-- 婚宴酒店 -->
     <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
  <van-tab title="珠宝首饰">
    <!-- 珠宝首饰 -->
     <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
  <van-tab title="婚礼跟拍">
    <!-- 婚礼跟拍 -->
     <img src="../assets/homeRe/home3.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥4999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home2.jpg" />
      <p class="homeP1">提拉米苏环球旅拍&nbsp;&nbsp;
        <span class="s1">￥7277</span>
      </p>
      <p class="homeP2">韩匠全球旅拍摄影</p>
      <img src="../assets/homeRe/home1.jpg" />
      <p class="homeP1">【IDO全球旅拍】精修底片
        <span class="s1">￥6999</span>
      </p>
      <p class="homeP2">IDO艾杜环球旅拍</p>
      <img src="../assets/homeRe/home4.jpg" />
      <p class="homeP1">可可里拉环球旅拍&nbsp;
        <span class="s1">￥5969</span>
      </p>
      <p class="homeP2">遇见菲灵旅拍摄影</p>
      <img src="../assets/homeRe/home5.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥5999</span>
      </p>
      <p class="homeP2">碧海印象婚纱旅拍</p>
      <img src="../assets/homeRe/home6.jpg" />
      <p class="homeP1">天空之境   定制全国旅拍&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥9611</span>
      </p>   
      <p class="homeP2">克拉恋人婚纱旅拍</p>
      <img src="../assets/homeRe/home7.jpg" />
      <p class="homeP1">碧蓝之约   高端定制&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="s1">￥8920</span>
      </p>
      <p class="homeP2">MINI原创 旅拍婚纱</p>
  </van-tab>
</van-tabs>
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
  /* 热门推荐 */
  .homeP1{
    font-family: Arial;
    font-size:1.5rem;
    margin:0;
    padding:0 5px;
    display: flex;
    justify-content:space-between;              
  }
  .s1{
    color:red;
  }
  .homeP2{
   font-size:15px;
   padding:0;
   margin:0;
   margin-right:63%;
   color:#ccd;
  }
/* 西安 .. */
   #p1{
     padding:5px;
   }
/* 首页推荐 */
 .homeRe img{
   width:90%;
   border-radius:50% ;
 }
  .p1{
    display: flex;
  }
  .p1 p{
     margin:0;
    padding:5px;
    font-size:16px;
  }
/* 轮播图形样式 */
    .swipe{
      width:100%;
      padding:0;
    }
    /* 搜素框图形样式 */
     .input{
      display: flex;
    }
    .sp1{
      width:200px;
      height:5px;
      margin-top:100px;
    }
    /* 搜索框旁边的小图 */
    .a1{
      width:100px;
      height:5px;
      margin-top:5px;
    }
    .a1 img{
      padding:10px;
      width:30%;
    }
  /* 导航样式 */
  .nav{
    display: flex;
  }
  /* 导航图片 */
  .nav img{
    display: flex;
    justify-content: space-around;
    padding:18px;
    width:40px;
    height:40px;
  }
  .nav img p{
    margin:0;
  }
</style>