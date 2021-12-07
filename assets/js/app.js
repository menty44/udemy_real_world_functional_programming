// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import deps with the dep name or local files with a relative path, for example:
//
//     import {Socket} from "phoenix"


import socket from "./socket"
import "phoenix_html"

let channel = socket.channel("room:lobby", {});
let chatForm = document.querySelector("#chat-input");
let messageList = document.querySelector("#messages");

chatForm.addEventListener("keypress", event => {
  if (event.keyCode === 13) {
    let message = chatForm.value;
    chatForm.value = "";
    channel.push("new_msg", {body: message});
  }
  channel.on("new_msg", payload => {
    messageList.innerHTML += `<li>${payload.body}</li>`;
    // messageList.append()
  });
});

export default socket;