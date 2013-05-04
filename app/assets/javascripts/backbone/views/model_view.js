AwsWhitepapersTracker.Views.ModelView = Backbone.View.extend({	
	template: _.template($("#whitepaperTemplate").html()),
	render: function(){
		this.template(this.model.attributes) ;
	}
})