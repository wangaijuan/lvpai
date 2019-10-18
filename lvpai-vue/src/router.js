import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
// 引入了HomePage.vue文件 
import HomePage from "./components/HomePage.vue"
import  My  from "./views/My.vue"
import  Login  from "./components/Login.vue"
import My_cart from "./components/My_cart.vue"
import Tabbar from "./components/Tabbar.vue"

Vue.use(Router)

export default new Router({
  routes: [
    //引入Tabbar.vue
    {path:"/Tabbar",name:Tabbar, component:Tabbar},
    //引入My_vcart.vue
    {path:"/My_cart",name:My_cart,component:My_cart},
    //引入HomePage.vue 路径的格式按照以下的方式  
    {
      path:"/HomePage",
      name:HomePage,
      component:HomePage
    },
    {path:"/",name:'my',component:My},
    {path:"/Login",name:'login',component:Login},
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
