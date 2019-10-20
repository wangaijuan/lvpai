<template>
    <div>
       <!-- 导航栏 -->
       <van-nav-bar
            left-arrow
            @click-left="onClickLeft" style="position:fixed; top:0; backgroundColor:rgba(0,0,0,0.1);width:100%"/>
        <!-- 主图 -->
        <img class="big_img" src="../../public/img/long-1.png"/>
        <div class="c_1">
            <p class="c_name">真爱殿堂 蕾丝无袖拖尾婚纱</p>
            <span class="money_1">￥</span>
            <span class="money_2">30600.00</span>
            <br>
            <del class="money_3">￥36000.00</del>
            <div class="tex">
                <p class="tex_1">有运费</p>
                <p class="tex_2">15956人付款</p>
            </div>
        </div>
        <!-- 分界线 -->
        <div class="line">  </div>
        <!-- 图文详情 -->
        <p class="pro">图文详情</p>
        <img class="pro_img" src="../../public/img/long.jpg" />
        <!-- 加入购物车 -->
        <div style="position:fixed; bottom:0;width:100%;display:flex;height:auto;">
            <van-button icon="cart" size="large" @click="toCart">购物车</van-button>
            <van-button color="#FF6100" size="large">加入购物车</van-button>
            <van-button type="danger" size="large" @click="toCart">立即购买</van-button>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            
        }
    },
    methods: {
        onClickLeft() {
            this.$router.push("/list");
        },
        toCart(){
            this.$router.push("/My_cart");
        }
    },
    mounted() {
        console.log(this.$route.params.pid);
    },
}
</script>
<style>
/* 修改组件库样式 */
    #nav{padding: 0;}
</style>
<style scoped>
    p{margin: 0;padding: 0;}
    /* 导航栏 */
    .van-nav-bar .van-icon {color:#fff;}
    /* 主图 */
    .big_img{width:100%; padding: 0;}
    .c_1{margin:10px; text-align:left;}
    .c_name{font-size:18px;text-align:left;margin-bottom:5px;}
    .money_1{font-size:12px;color:sandybrown;}
    .money_2{font-size:24px;color:sandybrown;}
    .money_3{font-size:12px;color: darkgray}
    .tex{margin-top:10px; display:flex; justify-content:space-between;font-size:14px;color:darkgray;}
    /* 分界线 */
    .line{border:2px solid #efefef;}
    /* 图文详情 */
    .pro{text-align:left; margin:10px;}
    .pro_img{width:90%;}
    /* 购物车 */
    
</style>

