$(".accordion").on("click", "dd", function (event) {
$("div.active").slideToggle("slow");
$(this).find(".content").slideToggle("slow");
});
