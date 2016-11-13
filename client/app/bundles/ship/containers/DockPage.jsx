import React from 'react'
import 'styles/DockStyles.styl'
// import 'styles/base.styl'


export default class DockPage extends React.Component {
  static propTypes = {
    user1: React.PropTypes.object.isRequired,
    user2: React.PropTypes.object.isRequired,
  }

  constructor(props) {
    super(props)

    this.state = {
      user1: props.user1,
      user2: props.user2,
    }
  }

  handleDecision(pass) {
    $.ajax({
      method: 'POST',
      url: 'dock/decision',
      data: { pass },
      success: nextShip => {
        this.setState(nextShip)
      }
    })
  }

  formatUser(user) {
    return (
      <div className="dockpic">
        <img src={user.picture} width = "200" id = "profile-img"/>
        <div className="blurb">
          <h1 className="userToShip">{user.name}</h1>
          <h3 className="ageInfo">{user.gender.slice(0,1)}, {user.age} </h3>
          <h2 className="userInfo">{user.bio}</h2>
        </div>
      </div>
    )
  }

  render() {
    let { user1, user2 } = this.state

    return (
      <div className = "row">
        <div className = "col-md-6 user leftUser">
          {this.formatUser(user1)}
        </div>

        <div className = "decision">
          <p className ="buttonPar">
            <button id="sailButton" className="btn"
                    onClick = {() => this.handleDecision(1)}>
              Sail <span className="glyphicon glyphicon-hand-up"></span>
            </button>
          </p>
          <p className ="buttonPar">
            <button id="sinkButton" className="btn"
                    onClick = {() => this.handleDecision(0)}>
              Sink <span className="glyphicon glyphicon-hand-down"></span>
            </button>
          </p>
        </div>
        
        <div className = "col-md-6 user rightUser">
          {this.formatUser(user2)}
        </div>
      </div>
    )
  }
}
