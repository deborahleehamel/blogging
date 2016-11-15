$(document).ready(function(){
  setPublished();
});

var setPublished = function(){
  var button = $("#publish_post");
  var postId = button[0].getAttribute("data-id");
  button.on("click", function(){
    $.ajax({
      method: "PATCH",
      url: "/publish/" + postId,
      success: function(){
      }

    });
  });
};
