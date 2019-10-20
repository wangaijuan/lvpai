<template>
<div>
    <!-- 搜索 -->
    <van-search
        v-model="value"
        placeholder="搜索您想要的商品..."
        show-action
        shape="round"
        @search="onSearch">
        <div slot="action" @click="onSearch">搜索</div>
    </van-search>
    <!-- banner图 -->
    <div id="ban"><img src="../../public/img/1.jpg" /></div>
    <!-- 商品链接 -->
    <div id="ico">
        <img src="../../public/img/d1.png" @click="toDetails"/>
        <img src="../../public/img/d2.png" @click="toDetails"/>
        <img src="../../public/img/d3.png" @click="toDetails"/> 
        <img src="../../public/img/d4.png" @click="toDetails"/> 
        <img src="../../public/img/d5.png" @click="toDetails"/> 
        <img src="../../public/img/d6.png" @click="toDetails"/> 
    </div>
    <!-- 优选商家 -->
    <div id="yx">
        <p class="p_1">优选商家</p>
        <img src="../../public/img/2.jpg">
    </div>
    <!-- 人气推荐 -->
    <p class="p_2">人气推荐</p>
    <div class="rq" >
        <div class="c_lef" v-for="(item,i) of list" :key="i" @click="toProduct(item.pid)">
            <img src="../../public/img/l1.png">
            <p class="c_name">真爱殿堂 蕾丝无袖拖尾婚纱</p>
            <!-- {{item.title}} -->
            <div class="tex">
                <p class="pay">1.6w人付款</p>
                <p class="plice">￥30600.00</p>
            </div>
        </div>
    </div>
</div>
</template>

<script>
export default {
    data() {
        return {
            list:[
                //0.空数组
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00",
                 pid:1
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00",
                 pid:2
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00",
                 pid:3
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00",
                 pid:4
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00",
                 pid:5
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00",
                 pid:6
                },
            ]
        }
    },
    methods:{
        toDetails(){
            // 点击跳转到details.vue
            this.$router.push("/details");
        },
        toProduct(pid){
            console.log(pid);
            this.$router.push("/product?pid="+pid);
        }
    },
    // mounted() {
    //     //0.加载完成后发送请求
    //     this.axios.get("url").then((res)=>{
    //         console.log(res);//中间把那到的数据放在list里
    //         this.list=res.data;
    //     }).catch(function (error) {
    //         console.log(error);
    //     });
    // },
}
</script>
<style scoped>
    /* 引入公共样式
    @import '../../css/normalize.css'; */
    /* banner图大小 */
    p{margin: 0;padding: 0;}
    img{padding: 0;}
    #ban img{width:100%; height:20%;}
    /* 商品链接 */
    #ico{width: 100%; padding-top:5px;}
    #ico img{width:33%; height: 80%;}
    #ico2 img{width:33%; height: 80%;}
    /* 优选商家 */
    #yx .p_1{text-align: left; padding: 10px 0 10px 18px;  margin: 0px; font-size: 20px;}
    #yx img{width:92%;}
    /* 人气推荐 */
    .p_2{text-align: left; padding: 18px 0 15px 18px;  margin: 0px; font-size: 20px;}
    .rq{width:100%; display:flex; justify-content:space-between; flex-wrap:wrap;}
    .c_lef{width:49%; padding: 5px; box-sizing: border-box;}
    .c_lef img{width: 100%; height: auto;}
    .c_name{font-size: 18px; text-align: left;}
    .tex{display: flex; justify-content: space-between; align-items: center}
    .pay{font-size: 12px;}
    .plice{font-size: 16px; color:coral;}
</style>

