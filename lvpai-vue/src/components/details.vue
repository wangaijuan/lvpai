<template>
    <div>
        <!-- 导航栏 -->
        <van-nav-bar
            title="婚纱礼服"
            left-arrow    
            @click-left="goBack"
            style="position:fixed; top:0;
            width:100%;"
        />
        <!-- 商品列表 -->
        <div class="c_lis">
            <div class="c_one" v-for="(item,i) of list" :key="i">
                <img src="../../public/img/l1.png">
                <p class="c_name">真爱殿堂 蕾丝无袖拖尾婚纱</p>
                <div class="tex">
                    <p class="pay">1.6w人付款</p>
                    <p class="plice">￥30600.00</p>
                </div>
            </div>
        </div>
        <!-- 加载底部 -->
        <p class="bot">没有更多啦！</p>
    </div>
</template>
<script>
export default {
    data() {
        return {
            list:[
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
                {img:"../../public/img/l1.png",
                 uname:"真爱殿堂 蕾丝无袖拖尾婚纱",
                 pay:"1.6w人付款",
                 plice:"￥30600.00"
                },
            ]
        }
    },
    methods: {
        goBack() {
            this.$router.push("/list");
        }
    },
}
</script>
<style scoped>
    /* 导航栏 */
    .van-nav-bar .van-icon{color:#000;}
    /* 商品列表 */
    p{margin:0; padding:0;}
    .c_lis{margin-top:15px; display:flex; justify-content:space-between; flex-wrap:wrap;}
    .c_one{width:49%; padding:5px; box-sizing:border-box;}
    .c_one img{width:100%; }
    .c_name{font-size:18px; text-align: left;}
    .tex{display:flex; justify-content: space-between; align-items: center; margin-top:5px;}
    .pay{font-size: 12px;}
    .plice{font-size:16px; color: coral;}
    /* 加载底部 */
    .bot{margin:15px; text-align:center; font-size:14px; color: silver}
</style>


