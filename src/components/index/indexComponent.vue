<template>
	<h1>Index</h1>
</template>
<script>
import {mapGetters,mapActions} from "vuex";
	export default{
		data:function(){
			return{
				test:11
			}
		},
		methods:{
			getAllData () {
				this.$store.dispatch("getAllData")
			}
		},
		created:function(){
			// console.log(this.$store._modules.root._rawModule.modlues)
			// console.log(this.$store.state.index)
			// console.log(this.getAllData)
			this.getAllData();
		}
	}
</script>