(function(){
  W.ns("Push.Index");

  Push.Index = {
    getApi: function(){
      var email = $("#email").val();
      if(W.String.isEmpty(W.String.trim(email)))
        return alert("Email不能为空!");
      $.ajax({
        url: "/users",
        type: "POST",
        data: {
          "user[email]": email
        },
        success: function(ret){
          if(ret.code)
            alert("获取API KEY成功,请检查你的Email");
          else
            alert(ret.error);
        }
      });
    }
  };

})();