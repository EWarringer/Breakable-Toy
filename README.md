If you'd like, sign in with:

email: "testuser@test123.com"

password: "password"

<br />

##### -- needs to be refactored! The testing in the process of being redone as well --

FreeLanswers: http://freelanswers.herokuapp.com/

Trello: https://trello.com/b/phvPp362/breakable-toy

#### Sign in with Linkedin OAuth and view profile
*Linkedin will Automatically grab your name, profile photo, industry, and email address to display at the top of your profile*

![signin](https://media.giphy.com/media/R5sO9t40K5uhO/giphy.gif)

<br />

#### Select some skills
*choose from a wide variety of skills to display on your profile*

![select skills](http://i.imgur.com/d0ngthR.gif)

<br />


#### Chat with, and endorse others
*Just like on Linkedin, you can see who has endorsed you for each skill. You may visit their profile by clicking on their picture. While viewing their profile, you may endorse them and/or chat with them directly.*

![endorse](http://i.imgur.com/gwRi1IA.gif)

<br />

#### Ask a question to the public
*Asking a question will post it to a public page, styled like a message board with the question, the time it was posted, the user name and photo, and a chat option. From here you can view question descriptions by clicking on the question, or chat with somebody directly. The question descriptions automatically save and display in markdown form.*

![ask](http://i.imgur.com/2L7WBOh.gif)

<br />

#### Answer others' questions in real time!
*You may also chat with somebody directly from their question description page and answer their question in a gmail-like chat.*

![chat](http://i.imgur.com/Pi2Xan3.gif)

<br />

## ER Diagram
![alt](http://i.imgur.com/DriIZE7.png)

## What is it?
freelAnswers gives users the opportunity to get questions answered live, in real time chat, in a topic of their choice, and by an expert in that field. How does it do this? Well, freeLAnswers takes the idea of using endorsements, similar to those you see on Linkedin, to give skilled users an incentive to answer questions that are being asked in a particular field. Satisfy a user with the answer they were looking for, and they can endorse you for that skill, only to benefit you by adding more experience to your resume through endorsements.

As a user with a question, you may type your question into the field, add your description, and tag the skills required to answer the question. The search function will find users, who are currently online, who are experienced in those tagged skills, and let them know that there is somebody who needs their help. Wait a few moments and you may see a chat box pop up with a person who can walk you through the problem step by step. If you are satisfied with the answer you received, let the world know by endorsing them for their knowledge!

## Why did I create it?
I believe there is a giant wealth of knowledge around us that is not being accessed to at its fullest potential. Without having to keep refreshing the page, waiting around for posts from inexperienced users, freeLancers gives one person the opportunity to build their resume while giving another person a means of getting a question answered immediately.

## What's in it?
FreelAnswers implements Linkedin OAuth for user sign-in and basic user information. Since Linkedin's API is lacking any user endorsement information, I created my own custom endorsement relation and around Linkedin's model. The chat is implemented by running Faye on a Thin server with Private Pub.
