import Vue from "vue";
import Vuex from "vuex";

import * as types from "../mutation-types.js";

//状态值
const state = {
	data:[]
}

const getters = {
	allData3:function(state){
		return state.data
	}
}

const mutations = {
	[types.RECEIVE_DATA](state){
		
	}
}

const actions = {
	getAllData2:function({commit}){
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