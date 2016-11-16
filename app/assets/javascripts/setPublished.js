$(document).ready(function(){
  setPublished();
});

var setPublished = function(){
  var button = $("#publish_post");
  if (button[0] !== undefined) {
    var postId = button[0].getAttribute("data-id");
  }
  button.on("click", function(){
    $.ajax({
      method: "PATCH",
      url: "/publish/" + postId,
      success: function(){
        toggleUnpublished("#unpublished", "#unpublished-posts");
      }
    });
  });
};
