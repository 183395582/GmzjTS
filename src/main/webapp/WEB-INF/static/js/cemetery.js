angular.module('com.gmzj.cemetery', []).service('cemeteryService',[function(){
	this.getPage = function($http){
		return $http.get("getCemeterysByPage", 
				{params:{
					"cemetery.type":"01"
				}}
		).success(function (response) {
			return response;
		});
	}
}]);