$(".get-register").click(function () {
    $(".manager-box").removeClass("right").addClass("left").removeClass("active");
});

$(".get-login").click(function () {
    $(".manager-box").removeClass("left").addClass("right").addClass("active");
});

$(".btn-register,.btn-login").click(function () {
    $(".loading").fadeIn("slow");
});