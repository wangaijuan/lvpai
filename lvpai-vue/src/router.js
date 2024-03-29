//在项目本地安装axios:
//npm i -save axios


import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
// 引入了HomePage.vue文件 
import HomePage from "./components/HomePage.vue"
// 引入了My.vue文件 
import  My  from "./components/My.vue"
// 引入了Login.vue文件 
import  Login  from "./components/Login.vue"
// 引入了My_cart .vue文件 
import My_cart from "./components/My_cart.vue"
// 引入了Tabbar .vue文件
import Tabbar from "./components/Tabbar.vue"
// 引入了 List.vue文件 
import List from './components/list.vue'
// 引入了 Details.vue文件 
import Details from './components/details.vue'
// 引入了Product .vue文件 
import Product from './components/product.vue'
// 引入了 Rank.vue文件 
import Rank from './components/Rank.vue'
// 引入了ChooseLogin.vue文件
import Clogin  from './components/Clogin.vue'
// 引入了Community.vue文件
import Community  from './components/Community.vue'

Vue.use(Router)

export default new Router({
  routes: [
    // 引入Community.vue
    {path:"/Community",name:Community,component:Community},
    // 引入Chooselogin.vue
    {path:"/Clogin",name:Clogin,component:Clogin},
    //引入Tabbar.vue
    {path:"/Tabbar",name:Tabbar, component:Tabbar},
    //引入My_cart.vue
    {path:"/My_cart",name:'my_cart',component:My_cart},   
    //引入Rank.vue
    {path:"/Rank",name:'rank',component:Rank},
    // 引入My.vue
    {path:"/My",name:'my',component:My},
    // 引入Login.vue
    {path:"/Login",name:'login',component:Login},
    // 引入product.vue
    {path: '/product',name: 'product',component: Product},
    // 引入list.vue
    {path: '/list',name: 'list',component: List},
     // 引入details.vue
    {path: '/details',name: 'details',component: Details},
    //引入HomePage.vue 路径的格式按照以下的方式  
    {path:"/HomePage",name:HomePage,component:HomePage},
    {path: '/',name: 'home',component: Home},
    {path: '/about',name:'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
