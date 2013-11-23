(function(){

  W.ns("Push.Manage");

  Push.Manage = {
    publish_nba: function(channel){
      // console.log(channel);
      var content = $("#nba_content").val();
      if(content.length == 0)
        return;
      $("#show_nba_content").prepend(content + "<br/>");
      $("#nba_content").val("");
      var cfg = new Push.Channel.Cfg();
      var uri = cfg.protocol() + "://" + cfg.host() + ":" + cfg.port() + "/pub?id=" + channel;
      $.ajax({
        url: uri,
        type: "POST",
        data: content,
        success: function(ret){

        }
      });
    }
  }

})();