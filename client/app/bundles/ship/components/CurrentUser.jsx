import React from 'react'

import 'styles/CurrentUser.styl'


export default class CurrentUser extends React.Component {
  static propTypes = {
    user: React.PropTypes.object
  }

  render () {
    let user = this.props.user
    let text
    if (user) {
      text = <div>Current User: {user.name}</div>
    } else {
      text = <div>Not logged in</div>
    }

    return <div className="current-user">{text}</div>
  }
}
