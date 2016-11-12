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
      text = (
        <div>
          Current User: {user.name}
          <a href="signout">Sign out</a>
        </div>
      )
    } else {
      text = (
        <div>
          Not logged in
          <a href="/auth/facebook">Sign in with Facebook</a>
        </div>
      )
    }

    return (
      <div className="current-user">
        {text}
      </div>
    )
  }
}
