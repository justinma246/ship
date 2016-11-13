import React from 'react'
import $ from 'jquery'


export default class ChatPage extends React.Component {
    static propTypes = {
        user: React.PropTypes.object.isRequired,
    }

    constructor() {
        super()

        this.state = {
            conversations: [],
        }
    }

    componentDidMount() {
        $.ajax({
            url: "chat/conversations",
            success: conversations => {
                this.setState({ conversations })
            },
            error: (self, status, error) => {
                console.log("Error retrieving conversations:")
                console.log(status)
                console.log(error)
            },
        })
    }

    clicked = () => {
        console.log("clicked")
        var dispatcher = new WebSocketRails('localhost:3000/websocket')
    }

    render() {
        
        let user = this.props.user

        return (
            <div>
                CHAT PAGE
            </div>
        )
    }
}
