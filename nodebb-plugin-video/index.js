(function(module) {
    "use strict";
    var Video = {},
        embed = '<div id="player" config="$1"></div>';

    Video.parse = function(postContent, callback) {
        var re = /<a.*((http|\/uploads).*?(m3u8|mp4)).*?\/a>/gm;
        if (re.test(postContent) !== false) {
            var pros = /\[video(.*)]/mg;
            var arr = postContent.match(pros);
            if(arr && arr.length){
                var pro = arr[0].replace(pros, '$1');
                try{
                    var wh = pro.split('&');
                    var width = wh[0];
                    if(parseFloat(width)){
                        var height;
                        if(wh.length == 2){
                            height = wh[1];
                        }
                        if(!parseFloat(height)){
                            height = parseFloat(width)*9/16;
                        }
                        embed = '<div id="player" config="$1" width="'+width+'" height="'+height+'"></div>';
                    }
                }catch(e){

                }
                postContent = postContent.replace(pros, '');
            }
            postContent = postContent.replace(re, embed);
        }
        callback(null, postContent);
    };

    module.exports = Video;
}(module));