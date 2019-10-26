<template>
<!-- 最外层父元素 -->
<div class="parent">
  <div class="recommend">
    <van-tabs v-model="active">
      <van-tab title="推荐">
        <!-- 推荐导航栏下所有的内容 -->
        <div class="parent_reco">
          <div class="reco">
            <img  src="../assets/community/icon.png" />            
          </div>
            <div class="navImage">
              <img src="../assets/community/nav1.png" />
              <img src="../assets/community/nav2.png" />
              <img src="../assets/community/nav3.png" />
              <img src="../assets/community/nav4.png" />
            </div>
            <div class="nav_p">
              <p>婚纱摄影</p>
              <p>真实婚礼</p>
              <p>避坑指南</p>
              <p>婚品攻略</p>
            </div>
            <div class="navImage">
              <img src="../assets/community/nav01.png" />
              <img src="../assets/community/nav02.png" />
              <img src="../assets/community/nav03.png" />
              <img src="../assets/community/nav04.png" />
            </div>
            <div class="nav_p">
              <p>婚纱探店</p>
              <p>婚前自救</p>
              <p>两性情感</p>
              <p>新娘交流</p>
            </div>
          <h2 id="h1">你的精选之旅</h2>  
        <div class="v1">
          <video controls src="../assets/community/video.mp4"></video>
          <video controls src="../assets/community/v1.mp4"></video>
          <video controls src="../assets/community/v2.mp4"></video>
          <video controls src="../assets/community/v3.mp4"></video>
        </div>
        </div>  
      </van-tab>
        <van-tab title="案例欣赏">内容 2</van-tab>   
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
       
      }
    }
</script>
<style scoped> 
    .v1 video{
      width:100%;
      height: 50%;
      border-radius: 10%;
    }
    #h1{margin-right: 13rem}
    .nav_p{
      display: flex;
      justify-content: space-around;
    }
    .navImage{
      display: flex;
      justify-content: space-around;
      margin-top:0.7rem;
    }
    .reco{
      height: 5rem;
      background:	#f5f5f5;
    }
    .reco img{
      margin-top:19px;
    }
  
</style>