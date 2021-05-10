$(function() {
    // jquery loaded
    $(".post-like").on("click", function() {
        console.log("helo");
        var post_id = $(this).data("id");
        $.ajax({
            url: "post/like/" + post_id,
            method: "GET",
            dataType: "script"
        }).done(function(response) {
            console.log(response);
        });
    });
});