/**
 * Created by mani on 14-6-29.
 */
$(document).ready(function() {
    $(window).on('action:topic.loaded', function () {
        var player = $("#player");
        var config = '';
        try{
            config = player.attr('config');
        }catch(e){
            console.log(e);
        }
        if(config){
            var options = {
                playlist: [{
                    sources: [{
                        file: config
                    }]
                }],
                flashplayer:'/plugins/nodebb-plugin-video/files/jwplayer.flash.swf',
                html5player: '/plugins/nodebb-plugin-video/files/jwplayer.html5.js',
                autostart:false,
                width: "100%",
                aspectratio: "16:9",
                primary: "html5"
            }
            var width = player.attr('width');
            if(width){
                options.width = width;
                var height = player.attr('height');
                options.height = height;
            }
            jwplayer("player").setup(options);
        }
    });

    $(window).on('action:post.edit', function (){
        var player = $("#player");
        var config = '';
        try{
            config = player.attr('config');
        }catch(e){
            console.log(e);
        }
        if(config){
            jwplayer().load([{file:config}]);
        }
    });
});
