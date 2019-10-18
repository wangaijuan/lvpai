import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
// 引入了HomePage.vue文件 
import HomePage from "./components/HomePage.vue"
import  My  from "./views/My.vue"
import  Login  from "./components/Login.vue"
<<<<<<< HEAD
import My_cart from "./components/My_cart.vue"
import Tabbar from "./components/Tabbar.vue"

=======
import List from './components/list.vue'
import Details from './components/details.vue'
import Product from './components/product.vue'
>>>>>>> ae63cf25aea4c3e1ad8538253ab2a6ee105fdd7a
Vue.use(Router)

export default new Router({
  routes: [
<<<<<<< HEAD
    //引入Tabbar.vue
    {path:"/Tabbar",name:Tabbar, component:Tabbar},
    //引入My_vcart.vue
    {path:"/My_cart",name:My_cart,component:My_cart},
=======
    {
      path: '/product',
      name: 'product',
      component: Product
  },
  {
      path: '/list',
      name: 'list',
      component: List
  },
  {
      path: '/details',
      name: 'details',
      component: Details
  },
>>>>>>> ae63cf25aea4c3e1ad8538253ab2a6ee105fdd7a
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
