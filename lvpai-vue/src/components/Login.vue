<template>
    <div class="one">
        <mt-field label="用户名" placeholder="请输入用户名" v-model="uname" :attr="{autofocus:true}"></mt-field>
        <mt-field label="密码" placeholder="请输入密码" v-model="upwd" ></mt-field>
        <mt-field label="电话" placeholder="请输入电话" v-model="phone" ></mt-field>
        <mt-button type="danger" size="large" @click="login" >登录</mt-button>
        <a href="">
            <img src="../assets/02.png" alt="">
        </a>
        <a href="">
            <img src="../assets/03.png" alt="">
        </a>

    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:"",
            phone:""
        }
    },
    methods:{
        login(){
            // 创建正则表达式3~12位 字母数字
             var ureg=/^[a-z0-9]{3,12}$/i;
             var treg=/^1[3-8]\d{9}$/;
            //获取用户名和密码
            var u=this.uname;
            var p=this.upwd;
            var t=this.phone;
            //用户
            if(ureg.test(u)==false){
                this.$messagebox("消息","用户名格式不正确");
                return;
            }
            if(ureg.test(p)==false){
                this.$messagebox("消息","密码输入错误");
                return;
            }
            if(treg.test(t)==false){
                this.$messagebox("消息","手机号输入错误");
                return;
            }
            //发送ajax请求
             var url = "login";
             var obj = {uname:u,upwd:p,phone:t};
             console.log(obj);
             this.axios.get(url,{params:obj}).then(res=>{
                if(res.data.code<0){
                this.$messagebox("消息","用户名,密码和手机号有误");
            }else{
            //跳转product组件
            this.$router.push("/product");
            } 
          })
        }
    }
}
</script>
<style scope>
    .one{
        margin:10px 8px;
    }
    img{
        padding:10px;
        width:10%;
        
    }
</style>   