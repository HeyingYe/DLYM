import Vue from "vue";
import Vuex from "vuex";

import * as actions from "./actions.js";
import * as getters from "./getters.js";

import index from "./modules/index.js";
import banner from "./modules/banner.js";
import bannerList from "./modules/bannerList.js";
import goodsDetail from "./modules/goodsDetail.js";
import goodList from "./modules/goodsList.js";

Vue.use(Vuex)

const debug = process.env.NODE_ENV !== 'production'

//将多个store结合成一个store
export default new Vuex.Store({
	actions,
	getters,
	modlues:{
		index,
		banner,
		bannerList,
		goodsDetail,
		goodList
	},
  strict: debug
})