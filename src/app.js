import Vue from 'vue';
import Vuex from "vuex";
import router from './router/router.js';

import App from './App.vue';

import store from "./store/store.js";

//引进vue懒加载
import VueLazyload from 'vue-lazyload';
//使用懒加载
Vue.use(VueLazyload,{
	loading:"",
	try:3
})

//实例vue，将vuex注入根节点
new Vue({
	el: '#app',
	router,
	store,
	data:{
		router
	},
	render: h => h(App)
})