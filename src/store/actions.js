import * as types from './mutation-types.js'

export const actions = {
	getAllData:function({commit}){
		commit(types.RECEIVE_DATA)
	}
}

