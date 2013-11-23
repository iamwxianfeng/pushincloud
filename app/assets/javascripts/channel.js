(function(){

  W.ns("Push.Channel");

  var Channel = function(){
    return {
      protocol: function(){
        return "http"
      },
      host: function(){
        if(window.location.port == 3000)
          return "localhost"
        else
          return "www.pushincloud.com"
      },
      port: function(){
        return 80
      }
    }
  };

  Push.Channel.Cfg = Channel;

})();