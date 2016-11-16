$(document).ready(function(){
  toggleUnpublished("#unpublished", "#unpublished-posts");
});

var toggleUnpublished = function(buttonId, postId){
  $(buttonId).on("click", function(){
    $(postId).toggleClass("hidden");
    togglePublished();
  });
};

function togglePublished(){
  $("#published-posts").toggleClass("hidden");
}
