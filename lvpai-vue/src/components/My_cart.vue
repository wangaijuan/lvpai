<template>
  <div>
    <p class="p1">购物车</p>
    <hr class="h1" style="color:red">
    <!--1.复选框：商品名，价格，删除-->
    <div class="cart-item">
      <div class="left">
        <input type="checkbox">
        <img src="../assets/cart/01.jpg">
        <div class="lname">真爱殿堂 一字肩蕾丝蓬蓬纱婚纱</div>
      </div>
      <div class="price">
        <p>16888.00</p>
        <button>-</button>
				<span>1</span>
				<button>+</button>
        <p>删除</p>
      </div>
    </div>
    <div class="cart-item">
      <div class="left">
        <input type="checkbox">
        <img src="../assets/cart/02.jpg">
        <div class="lname">真爱殿堂 蕾丝婚纱</div>
        
      </div>
      <div class="price">
        <p>3600</p>
        <button>-</button>
				<span>1</span>
				<button>+</button>
        <p>删除</p>
      </div>
    </div>
  <!--3.数量及合计-->
    <van-submit-bar :price="3050" button-text="合计"/>
  </div>
</template>

<script>
export default {
  
}
</script>
<style>
/*购物车 */
.p1{
  font-size: 22px;
}
/*图片 */
.left img{
  width:80px;
  height:80px;
}
.cart-item{
  /*1.购物车商品内容*/
  display:flex;
  justify-content: space-between;
  border-bottom:1px solid #ccc;
  margin:25px;
}
/*2.左侧复选框文字弹性布局*/
.left{
  display:flex;
  align-items:center;  /*垂直居中*/
}
/*3.修饰商品名称*/
.lname{ 
  color:#333;

}
/*4.修饰商品价格*/
.price{
  margin:20px 0;
  color:red;
}
/*hr宽度 */
.h1{
  width:325px;
}


</style>