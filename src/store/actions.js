import * as types from './mutation-types.js'

export const actions = {
	getAllData:function({commit}){
		console.log(11)
		commit(types.RECEIVE_DATA)
	}
}

