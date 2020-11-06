import consumer from "./consumer"

consumer.subscriptions.create("MemoChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `
    <div class="title-frame">
    <input id="memo-check-${data.content}" class="memo-check" type="checkbox">
    <label class="memo-label", for="memo-check-${data.content}">${data.content.title}</label>
    <div class="memo-content">
    <p>${data.content.content}</p>
    </div>
    </div>
    `;
    const messages = document.getElementById('title-brock');
    const newMessage = document.getElementById('memo_area');
    messages.insertAdjacentHTML('afterbegin', html);
    newMessage.value='';
  }
});
