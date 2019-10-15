<template>
    <div>
        <van-image width="100" height="100" src="../../assets/01.png"></van-image>
        <van-cell islink @click="showPopup">预约商家</van-cell>
        <van-popup v-model="show" position="top"
        :style="{ height:'20%' }">这里空空如也</van-popup>
        <van-cell islink @click="showPopup">收藏的商品/案例</van-cell>
        <van-popup v-model="show">您还没有收藏的东东,赶紧去看看吧</van-popup>
        <van-cell islink @click="showPopup">收藏的社区指南</van-cell>
        <van-popup v-model="show">这里也空空如也</van-popup>
        <van-cell islink @click="showPopup">备婚工具</van-cell>
        <van-popup v-model="show" >热门工具</van-popup>
        <van-cell islink @click="showPopup">备婚资料</van-cell>
        <van-popup v-model="show">备婚新娘必备</van-popup>
        <van-cell islink @click="showPopup">我的订单</van-cell>
        <van-popup v-model="show">还没有相关订单</van-popup>
        <van-cell islink @click="showPopup">幸福基金</van-cell>
        <van-popup v-model="show">总基金￥0.0</van-popup>
        <van-cell islink @click="showPopup">我的评价</van-cell>
        <van-popup v-model="show">您还没有撰写过商家评价奥~马上写评价,迎幸福基金</van-popup>
        <van-cell islink @click="showPopup">我的指南</van-cell>
        <van-popup v-model="show">这里也空空如也</van-popup>
        <van-cell islink @click="showPopup">商家合作</van-cell>
        <van-popup v-model="show">百合云梯系统深度赋能婚礼企业</van-popup>
        <van-cell islink @click="showPopup">意见反馈</van-cell>
        <van-popup></van-popup>
        <van-cell islink @click="showPopup">设置</van-cell>
        <van-popup v-model="show">致电婚礼管家</van-popup>
    </div>
</template>
<script>
export default {
  data(){
      return{
          show:false
      }
  },
  methods:{
      showPopup(){
          this.show=true;
      }
  } 
}
</script>