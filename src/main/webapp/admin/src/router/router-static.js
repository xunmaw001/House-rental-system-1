import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import fangwuleixing from '@/views/modules/fangwuleixing/list'
    import news from '@/views/modules/news/list'
    import tuifangpingjia from '@/views/modules/tuifangpingjia/list'
    import chat from '@/views/modules/chat/list'
    import dingdanxinxi from '@/views/modules/dingdanxinxi/list'
    import discussfangwuzulin from '@/views/modules/discussfangwuzulin/list'
    import hetongxinxi from '@/views/modules/hetongxinxi/list'
    import fangwuzulin from '@/views/modules/fangwuzulin/list'
    import huiyuan from '@/views/modules/huiyuan/list'
    import storeup from '@/views/modules/storeup/list'
    import config from '@/views/modules/config/list'
    import users from '@/views/modules/users/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/fangwuleixing',
        name: '房屋类型',
        component: fangwuleixing
      }
          ,{
	path: '/news',
        name: '公告信息',
        component: news
      }
          ,{
	path: '/tuifangpingjia',
        name: '退房评价',
        component: tuifangpingjia
      }
          ,{
	path: '/chat',
        name: '客服中心',
        component: chat
      }
          ,{
	path: '/dingdanxinxi',
        name: '订单信息',
        component: dingdanxinxi
      }
          ,{
	path: '/discussfangwuzulin',
        name: '房屋租赁评论',
        component: discussfangwuzulin
      }
          ,{
	path: '/hetongxinxi',
        name: '合同信息',
        component: hetongxinxi
      }
          ,{
	path: '/fangwuzulin',
        name: '房屋租赁',
        component: fangwuzulin
      }
          ,{
	path: '/huiyuan',
        name: '会员',
        component: huiyuan
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
