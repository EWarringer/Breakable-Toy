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
        $("#endorsements-" + userSkillId).
        html('<a href="#" class="endorsenumber" style="color:black;background-color:skyblue;">' + resp.count + '</a> | ' + resp.skill);
        $("#user-skill-" + userSkillId).
        html( resp.endorseButton );
      });
});
