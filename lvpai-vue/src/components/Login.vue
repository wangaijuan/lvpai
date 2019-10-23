<template>
    <div id="container">
        <table></table>
        <div class="btn">
            <van-button color="linear-gradient(to right, #4bb0ff, #6149f6)" @click="Clogin">登录</van-button>
            <van-button color="linear-gradient(to right, #4bb0ff, #6149f6)">注册</van-button>
        </div>
    </div>
</template>
<script>
export default {
   data(){
       return{

        }
    },
    methods:{
        Clogin(){
            // 点击跳转到login.vue
            this.$router.push("/Clogin");
        }
    },
   } 

</script>
<style scoped>
   #container{
       width:375px;
        height:667px;
        margin:0 auto;
        background-image:url(../assets/Clogin/0.jpg);
        background-repeat:no-repeat;
        background-size:cover;
   }
   .btn{
       margin:428px 0;
   }
   
</style>