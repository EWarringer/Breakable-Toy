$(".profile-skill").click(function(e) {
  e.preventDefault();
  var $this = $(this);
  var userSkillId = $this.attr("userskill-id");
  var userId = $this.attr("user-id");

  $.ajax({
        method: "POST",
        url: "/endorsements",
        dataType: "json",
        data: { endorsement: {
          userId: userId, userSkillId: userSkillId
        } }
      }).done(function(resp) {
        debugger
        $("#endorsements-" + userSkillId).html( resp.skill + ": " + resp.count);
        $("#user-skill-" + userSkillId).html( resp.endorseButton );
      });
});
