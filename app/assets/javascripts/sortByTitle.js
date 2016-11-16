$(document).ready(function() {
  sortByTitle();
});

var sortByTitle = function() {
  $("#sort-title-button").on('click', function() {
    $.ajax({
      method: "GET",
      url: "/api/v1/posts/sort_by_title",
      success: function(sortedPosts) {
         $('#published-posts').empty();
         $('#published-posts').append("<h1>Published Posts</h1>");
         $.each(sortedPosts, function(index, post) {
          var postHtmlElement = $("<div class='post'><h2 class='title post-title'>" +  post.title + "</h2>");
           $('#published-posts').append(postHtmlElement);
         });
      }
    });
  });
};
