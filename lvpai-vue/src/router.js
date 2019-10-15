import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
//测试 引入了Index.vue文件 
import Index from "./components/Index.vue"
Vue.use(Router)

export default new Router({
  routes: [
    //测试:引入index.vue
    {path:"/Index",component:Index},
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
