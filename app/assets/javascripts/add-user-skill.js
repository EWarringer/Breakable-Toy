$(".a-skill").click(function(e) {
  e.preventDefault();
  var $this = $(this);
  var skillId = $this.attr("skill-id");
  var userId = $this.attr("user-id");

  $.ajax({
        method: "POST",
        url: "/skills/" + skillId + "/user_skills",
        dataType: "json",
        data: { userSkill: {
          userId: userId, skillId: skillId
        } }
      }).done(function(resp) {
        $("#ajax-list").append("<li>" + resp.name + "</li>")
      });
});
