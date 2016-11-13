import React from 'react'
import 'styles/Profile.styl'

export default class ProfilePage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
    let user = this.props.user

    return (
      <div className="row">
        <div className="col-md-2">
          <div className="profile wrapper" id="user1">         
            <img src={user.picture} className="circle"/>
            <h3> {user.name} </h3>
            <h1>INFO</h1>
            <h1>SETTINGS</h1>
            <h1>HELP</h1>
          </div>
        </div>
      </div>
      
    )
  }
}
