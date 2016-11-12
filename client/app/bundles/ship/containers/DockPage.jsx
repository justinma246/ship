import React from 'react'
import 'styles/DockStyles.styl'

class Sail_decision extends React.Component {
  render() {
    return (
      <button>
        Sail
      </button>
    );
  }
}
class Sink_decision extends React.Component{
  render() {
    return (
      <button>
        Sink
      </button>
    );
  }
}
class Decision extends React.Component {
  render() {
    return (
      <div className = 'decision'>
        <Sail_decision />
        <Sink_decision />
      </div>
    )
  }
}
export default class DockPage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
    let user = this.props.user
    return (
      <div>
        <h1>dock hello</h1>
        <Decision />
        <div class="profile" id="user1">
          <h1> USERNAME: {user.name} </h1>
          <img src={user.picture}/>
        </div>
        <div class="profile" id="user2">
          <h1> USERNAME: {user.name} </h1>
          <img src={user.picture}/>
        </div>
      </div>
    )
  }
}
