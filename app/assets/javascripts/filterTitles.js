$(document).ready(function() {

  $("#title-search-box").on("keyup", function() {
    var allSearch = this.value.toLowerCase();
    var $posts = $('.post');
    $posts.each(function(index, post) {
      $post = $(post);
      if ( $post.children(".post-title").text().toLowerCase().indexOf(allSearch) !== -1 ) {
        $post.show();
      } else {
        $post.hide();
      }
    });
  });

});
