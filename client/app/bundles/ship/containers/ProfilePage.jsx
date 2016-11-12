import React from 'react'
import 'styles/Profile.styl'

export default class ProfilePage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
    let user = this.props.user

    return (
      <div>
        PROFILE PAGE

      </div>
    )
  }
}
