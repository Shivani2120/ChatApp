import consumer from "channels/consumer"

consumer.subscriptions.create("ChatRoomChannel", {
  connected() {
    console.log("Connected to the chat room channel")
  },

  disconnected() {
    console.log("Disconnect to the chat room channel")
  },

  received(data) {
    const message = data.content ? data.content : data
    const messageElement = <div class="message"><p>${message}</p></div>
  }
});
