import Vue from "vue";
import Vuex from "vuex";

import * as types from "../mutation-types.js";

//状态值
const state = {
	data:[],
	test:111
}

const getters = {
	allData1:function(state){
		return state.data
	}
}

const actions = {
	getAllData:function({commit}){
		console.log(222)
		commit(types.RECEIVE_DATA)
	}
}


const mutations = {
	[types.RECEIVE_DATA](state){
		console.log("success")
	}
}


//将多个store结合成一个store
export default {
	state,
	getters,
	actions,
	mutations
}