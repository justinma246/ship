import React from 'react'
import 'styles/Profile.styl'

export default class ProfilePage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
    let user = this.props.user

    return (
      <div class="row">
        <div class="col-md-4">
          <div class="profile" id="user1">
            <h1> Username: {user.name} </h1>
            <img src={user.picture}/>
            <h1>INFO</h1>
            <h1>SETTINGS</h1>
            <h1>HELP</h1>
          </div>
        </div>
        <div class="col-md-4">
          <div class="profile" id="user1">
            <h1> Username: {user.name} </h1>
            <img src={user.picture}/>
            <h1>INFO</h1>
            <h1>SETTINGS</h1>
            <h1>HELP</h1>
          </div>
        </div>
      </div>
      
    )
  }
}
