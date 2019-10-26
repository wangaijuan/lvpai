<template>
    <div @click="rank">
        <!-- 顶部图片 -->
        <div>
            <img src="../assets/hitpa/0.jpg" />
            <!-- 搜索框 -->
            <van-search v-model="value" placeholder="搜索商品、商家" class="input"></van-search>
        </div>
       <!-- 滚动字 -->
        <div class="tab">
            <van-tabs v-model="active" class="title">
                <van-tab  title="全部">全部</van-tab>
                <van-tab title="婚礼策划" >婚礼策划</van-tab>
                <van-tab title="全球旅拍">全球旅拍</van-tab>
                <van-tab title="蜜月旅游" >蜜月旅游</van-tab>
                <van-tab title="婚礼司仪" >婚礼司仪</van-tab>
                <van-tab title="珠宝首饰" >婚礼司仪</van-tab>
                <van-tab title="婚纱摄影" >婚礼司仪</van-tab>
                <van-tab title="婚礼跟妆" >婚礼司仪</van-tab>
                <van-tab title="婚礼跟拍" >婚礼司仪</van-tab>
                <van-tab title="婚礼司仪" >婚礼司仪</van-tab>
                <van-tab title="花艺甜品" >婚礼司仪</van-tab>
            </van-tabs>    
        </div>
        <!-- 两张图片 -->
        <div class="image">
            <img src="../assets/hitpa/1.jpg" alt="">
            <img src="../assets/hitpa/2.jpg" alt="">
        </div>
        <!-- 小视频 -->
        <div class="container">
            <video src="../assets/hitpa/3.mp4" controls loop preload="metadata" id="v3"></video>
        </div>
        <!-- 商家权威排名 -->
        <div class="big">
            <h4>商家权威排名</h4>
            <img class="img1" src="../assets/hitpa/4.jpg" alt="">
            <img class="img2" src="../assets/hitpa/3.jpg" alt="">
            <img class="img3" src="../assets/hitpa/5.jpg" alt="">
            <img class="img4" src="../assets/hitpa/1.png" alt=""> 
            <img class="img5" src="../assets/hitpa/2.png" alt="">      
            <div> 
              <p class="p1">优质创意商家推荐榜</p>
              <p class="p2">要玩创意,专业搞事情商家推荐</p>
           </div>
        </div>
        <div style="margin-top:91px;">
           <img class="img1" src="../assets/hitpa/7.jpg" alt="">
            <img class="img2" src="../assets/hitpa/8.jpg" alt="">
            <img class="img3" src="../assets/hitpa/9.jpg" alt="">
            <img class="img4" src="../assets/hitpa/1.png" alt=""> 
            <img class="img5" src="../assets/hitpa/2.png" alt="">      
            <div> 
              <p class="p3">口碑商家推荐榜</p>
              <p class="p4">好评商家榜,来自一群挑剔的人</p>
           </div> 
        </div>
        <div style="margin-top:28px;">
           <img class="img1" src="../assets/hitpa/10.jpg" alt="">
            <img class="img2" src="../assets/hitpa/11.jpg" alt="">
            <img class="img3" src="../assets/hitpa/12.jpg" alt="">
            <img class="img4" src="../assets/hitpa/1.png" alt=""> 
            <img class="img5" src="../assets/hitpa/2.png" alt="">   <div> 
              <p class="p5">优惠力度商家推荐榜</p>
              <p class="p6">限时抢,钜惠商家精选</p>
           </div> 
        </div>
</div>
</template>
<script>
export default {
    data(){
        return {
            active:2
        }
    },
     methods:{
        rank(){
            // 点击跳转到login.vue
            this.$router.push("/list");
        }
    },
}
</script>
<style scoped>
   img{
       width:100%;
       margin-top:-20px;
       margin-left:10px;
    }
    /* 父元素相对定位 */
    .container{
        position:relative;
        width:75px;
        height:251px;
        margin:20px 0;
    }
    /* 视频元素绝对定位 */
    #v3{
        position:absolute;
        width:369px;
        height:207px;
        z-index:0;
        margin:-7px -35px;
    }
    .big{
        margin:-64px 0;
    }
    .input{
      margin:-40px 0;
  }
  .tab{
      margin:27px 0;
  }
  .image{
      width:173px;
      height:157px;
      display:flex;
  }
    h4{
        margin:24px 0;
    }
  .img1{
      position:relative;
      z-index:0;
      border-radius: 10%;
      }
  .img2{
      position:absolute;
      z-index:1;
      display:flex;
      width:40%;
      margin-top:-37%;
      margin-left:5%;
      border-radius: 50%;
  }
  .img3{
      position:absolute;
      z-index:1;
      display:flex;
      width:40%;
      margin-top:-36%;
      margin-left:52%;
      border-radius: 50%;
  }
  .img4{
      position:absolute;
      z-index:1;
      width:26px;
      display:flex;
      margin-top:-20%;
      margin-left:6%;
  }
  .img5{
      position:absolute;
      z-index:1;
      width:26px;
      display:flex;
      margin-top:-20%;
      margin-left:55%; 
  }
  .p1{
      position:absolute;
      z-index:1;
      margin-top:-99%;
      margin-left:10%; 
      color:#fff;
  }
  .p2{
      position: absolute;
      margin-top:-88%;
      margin-left:12%; 
      font-size:0.6rem;
      color:rgba(255, 255, 255, 0.582);
  }
  .p3{
       position: absolute;
       margin-top:-64%;
       margin-left:5%; 
       color:#fff;
     }
    .p4{
      position: absolute;
      margin-top: -57%;
      margin-left: 5%;
      font-size: 0.6rem;
      color:rgba(255, 255, 255, 0.582);
     }
    .p5{
       position: absolute;
       margin-top:-72%;
       margin-left:5%; 
       color:#fff; 
    }
    .p6{
       position: absolute;
       margin-top: -64%;
       margin-left: 5%;
      font-size: 0.6rem;
      color:rgba(255, 255, 255, 0.582); 
    }
</style>