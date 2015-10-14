module UsersHelper
  def conversation_interlocutor(conversation)
    if conversation.recipient == current_user
      conversation.sender
    else
      conversation.recipient
    end
  end
end
