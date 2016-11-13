import React from 'react'


export default class IndexPage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
    // INSERT LOGO HERE
    let user = this.props.user

    return (
      <div>
        INDEX PAGE
        <div>
          <div>
            Current User: {user.name}
          </div>
          <div>
            <img src={user.picture}/>
          </div>
          <div>
            <a href="dock">DOCK</a>
          </div>
          <div>
            <a href="profile">EDIT PROFILE</a>
          </div>
          <div>
            <a href="chat">CHAT</a>
          </div>
          <div onClick={this.clicked}>
            PRESS ME
          </div>
          <a href="signout">Sign out</a>
        </div>
      </div>
    )
  }
}
