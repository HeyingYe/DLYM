import Vue from "vue";
import Vuex from "vuex";

import * as types from "../mutation-types.js";

//状态值
const state = {
	data:[],
	test:"test"
}

const getters = {
	allData4:function(state){
		return state.data
	},
	test:function(state){
		return state.test
	}
}

const mutations = {
	[types.RECEIVE_DATA](state){
		
	}
}

const actions = {
	getAllData3:function({commit}){
		commit(types.RECEIVE_DATA)
	}
}

//将多个store结合成一个store
export default {
	state,
	getters,
	actions,
	mutations
}