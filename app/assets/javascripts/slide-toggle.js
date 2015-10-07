$(".accordion-navigation").on("click", ".skill-panel", function (event) {
$(this).closest(".accordion-navigation").find(".content").slideToggle("slow");
});
