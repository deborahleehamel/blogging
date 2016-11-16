$(document).ready(function() {

  $("#author-search-box").on("keyup", function() {
    var allSearch = this.value.toLowerCase();
    var $posts = $('.post');
    $posts.each(function(index, post) {
      $post = $(post);
      if ( $post.children(".post-author").text().toLowerCase().indexOf(allSearch) !== -1 ) {
        $post.show();
      } else {
        $post.hide();
      }
    });
  });

});
