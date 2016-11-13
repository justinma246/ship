import React from 'react'
import $ from 'jquery'
import classNames from 'classnames'

import 'styles/Chat.styl'


export default class ChatPage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
    conversations: React.PropTypes.array,
  }

  constructor(props) {
    super(props)

    this.cable = ActionCable.createConsumer()
    this.initializeConversations(props.conversations)

    this.state = {
      conversations: props.conversations,
      current: null,
    }
  }

  componentDidMount() {
      /* $.ajax({
       *   url: "chat/conversations",
       *   success: this.initializeConversations,
       *   error: (self, status, error) => {
       *     console.log("Error retrieving conversations:")
       *     console.log(status)
       *     console.log(error)
       *   },
       * })*/
  }

  initializeConversations = conversations => {
    let user = this.props.user

    conversations.forEach(conversation => {
      let first = Math.min(user.id, conversation.user.id)
      let second = Math.max(user.id, conversation.user.id)
      let roomName = first + "-" + second
      let room = this.cable.subscriptions.create(
        {
          channel: 'ChatChannel',
          room: roomName,
        },
        {
          received: message => {
            conversation.messages.push(message)
            this.forceUpdate()
          }
        }
      )

      conversation.messages = conversation.messages || []
      conversation.room = room
    })
  }

  submitMessage = () => {
    let message = this.refs.messageInput.value
    this.state.current.room.send({
      user: this.props.user.id,
      content: message,
    })
    $(this.refs.messageInput).val("")
  }

  setCurrent(conversation) {
    this.setState({ current: conversation })
  }

  handleInputKeyPress = event => {
    if (event.which == 13 || event.keyCode == 13) {
      this.submitMessage()
    }
  }

  formatConversation() {
    if (!this.state.current) {
      return <div className="no-conversation">No conversation selected</div>
    }

    let i = 0
    let messages = this.state.current.messages.map(message => {
      let classes = classNames("message", {
        left: message.user != this.props.user.id,
        right: message.user == this.props.user.id,
      })
      return (
        <div key={i++} className={classes}>
          <div className="content">{message.content}</div>
        </div>
      )
    })

    return (
      <div className="conversation">
        <div className="messages">
          {messages}
        </div>
        <div className="message-writer">
          <input
              className="input"
              ref="messageInput"
              type="text"
              onKeyPress={this.handleInputKeyPress}
          />
          <div className="send" onClick={this.submitMessage}>
            Send
          </div>
        </div>
      </div>
    )
  }

  render() {
    let conversations = this.state.conversations.map(conversation => {
      let buttonClasses = classNames("conversation-button", {
        current: conversation == this.state.current,
      })
      return (
        <div
            key={conversation.user.id}
            className={buttonClasses}
            onClick={() => this.setCurrent(conversation)}
        >
          <img className="conversation-pic" src={conversation.user.picture}/>
        </div>
      )
    })

    return (
      <div className="conversations">
        <div className="conversation-list">
          {conversations}
        </div>
        {this.formatConversation()}
      </div>
    )
  }
}
