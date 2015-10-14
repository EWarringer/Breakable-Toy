$(".b-skill").click(function(e) {
  e.preventDefault();
  var $this = $(this);
  var skillId = $this.attr("skill-id");
  var questionId = $this.attr("question-id");

  $.ajax({
        method: "POST",
        url: "/skills/" + skillId + "/question_skills",
        dataType: "json",
        data: { questionSkill: {
          questionId: questionId, skillId: skillId
        } }
      }).done(function(resp) {
        $("#ajax-list").append("<li>" + resp.name + "</li>")
      });
});
