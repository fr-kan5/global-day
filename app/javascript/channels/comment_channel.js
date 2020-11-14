import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const obj = document.getElementById('avatar-img');
    function icon(){
      return obj}
    const html = `
      <div class='comment-context'>
        <li>
          <img src="${icon()["src"]}" class="avatar-post" id="avatar-post" ></img>
        <a href="user_path${data.user.id}">${data.user.name}</a>： ${data.content.text}</li>
      </div>`
    const comment = document.getElementById("comment-do")
    const comments = document.getElementById('comments');
    const newComment = document.getElementById('comment_text');
    comments.insertAdjacentHTML('afterbegin', html);
    comment.remove();
    newComment.value='';
  }
});
