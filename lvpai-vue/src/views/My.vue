<template>
  <div @click="my">
    <img class="user-poster" src="http://qnm.hunliji.com/o_1ckro7aefro516he1koe17cj12dv7.jpg?imageView2/2/w/640">
    <van-row class="user-links">
      <van-col span="6">
        <van-icon name="pending-payment" />
        获赞
      </van-col>
      <van-col span="6">
        <van-icon name="records" />
        关注
      </van-col>
      <van-col span="6">
        <van-icon name="tosend" />
        粉丝
      </van-col>
      <van-col span="6">
        <van-icon name="logistics" />
        足迹
      </van-col>
    </van-row>

    <van-cell-group class="user-group">
      <van-cell  title="预约商家"  />
    </van-cell-group>

    <van-cell-group>
      <van-cell  title="收藏的商品/案例"  />
      <van-cell  title="收藏的社区指南"  />
      <van-cell  title="备婚工具"  />
      <van-cell  title="备婚资料"  />
      <van-cell  title="我的订单"  />
      <van-cell  title="幸福基金"  />
      <van-cell  title="我的评价"  />
      <van-cell  title="我的指南"  />
      <van-cell  title="商家合作"  />
      <van-cell  title="意见反馈"  />
      <van-cell  title="设置"  />
      <van-cell  title="致电婚礼管家   13484524420"  />
    </van-cell-group>
  </div>
</template>
<script>
import { Row, Col, Icon, Cell, CellGroup } from 'vant';
export default {
    data(){
        return{

        }
    },
    methods:{
        my(){
            // 点击跳转到login.vue
            this.$router.push("/Login");
        }
    },
    components: {
        [Row.name]: Row,
        [Col.name]: Col,
        [Icon.name]: Icon,
        [Cell.name]: Cell,
        [CellGroup.name]: CellGroup
  }
};
</script>
<style lang="less">
.user {
  &-poster {
    width: 100%;
    height: 53vw;
    display: block;
  }
  &-group {
    margin-bottom: 15px;
  }
  &-links {
    padding: 15px 0;
    font-size: 12px;
    text-align: center;
    background-color: #fff;
    .van-icon {
      display: block;
      font-size: 24px;
    }
  }
}
</style>
