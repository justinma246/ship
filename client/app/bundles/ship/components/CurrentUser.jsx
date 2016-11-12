import React from 'react'

import 'styles/CurrentUser.styl'


export default class CurrentUser extends React.Component {
  static propTypes = {
    user: React.PropTypes.object
  }

  render () {
    let user = this.props.user
    let text
    let picture
    if (user) {
      text = <div>Current User: {user.name}</div>
      console.log(user)
      picture = <img src={user.picture}/>
    } else {
      text = <div>Not logged in</div>
      picture = <img src="https://s-media-cache-ak0.pinimg.com/originals/28/c7/ad/28c7adffc9af705dcd8a8b77b1a9c0e8.jpg"/>
    }

    return <div className="current-user">{text}{picture}</div>
  }
}
