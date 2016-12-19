// video implementation from Google's API IFRAME Page
//https://developers.google.com/youtube/iframe_api_reference#Getting_Started
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
// 3. This function creates an <iframe> (and YouTube player) after the API code downloads.
var player;
// var vidId = <%= @url%>;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    height: '390',
    width: '640',
    videoId: 'oKcXr2cJaUg',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}

// 4. The API will call this function when the video player is ready.
function onPlayerReady(event) {
  event.target.playVideo();
}
//The API calls this function when the player's state changes.
//    The function indicates that when playing a video (state=1),
//    the player should play for five seconds and then stop.
var done = false;
function onPlayerStateChange(event) {
if (event.data == YT.PlayerState.PLAYING && !done) {
   setTimeout(stopVideo, 5000);
   done = true;
     }
   }
function stopVideo() {
  player.stopVideo();
}



// getting video search in JS
// app.post('/search', function(req, res){
//   var API = process.env.DEVELOPER_KEY
//   var search = req.body.search; // user's input
//   var filt = encodeURIComponent('pets'); // filter search
//   fetch('https://www.googleapis.com/youtube/v3/search?part=snippet&q='+filt+'%20'+search+'&key='+API)
//   .then(function(response){
//     return response.json();
//   })
//   .then(function(body){

//     var data = {
//       items : []
//     };
//     body.items.map(function(video){
//       // getting relavent data from API response
//       data.items.push({
//         title: video.snippet.title,
//         description : video.snippet.description,
//         img : video.snippet.thumbnails.default.url,
//         channel : video.snippet.channelTitle,
//         videoid : video.id.videoId,
//         playlistid : video.id.playlistId
//       });
//     });
//     // rerendering watch.html with data
//     res.render('watch', data);
//   });
// });

