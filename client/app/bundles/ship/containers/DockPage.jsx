import React from 'react'
import 'styles/DockStyles.styl'
import 'styles/base.styl'

class Sail_decision extends React.Component {
  render() {
    return (
      <button className="btn btn-success" 
        onClick = {()=> $.ajax({url: "dock/sail",})}>
        Sail
      </button>
    );
  }
}
class Sink_decision extends React.Component{
  render() {
    return (
      <button className="btn btn-danger" 
        onClick = {()=> $.ajax({url: "dock/sink",})}>
        Sink
      </button>
    );
  }
}
export default class DockPage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
  let user1 = this.props.user1
  let user2 = this.props.user2
    return (
      <div className = "row">
        <div className = "col-md-5 user leftUser">
          <div className="dockpic" id="user1">
            
            <img src={user1.picture} width = "200" id = "profile-img"/>
            <div className="blurb">
              <h1 className="userToShip">{user1.name}</h1>
              <h2 className="userInfo">Bio: {user1.bio}</h2>
            </div>
          </div>
        </div>  
        <div className = "col-md-2">
          <div className = "decision">
            <p className ="buttonPar">
              <button id="sailButton" className="btn" 
                onClick = {()=> {$.ajax({url: "dock/sail",})}}>
                Sail <span className="glyphicon glyphicon-hand-up"></span>
              </button>
            </p>
            <p className ="buttonPar">
              <button id="sinkButton" className="btn" 
                onClick = {()=> {$.ajax({url: "dock/sink",})}}>
                Sink <span className="glyphicon glyphicon-hand-down"></span>
              </button>
            </p>
            <p id = "test">
            </p>
          </div>
        </div>
        <div className = "col-md-5 user rightUser">
          <div className="dockpic" id="user2">
            <img src={user2.picture} width = "200" id = "profile-img"/>
            <div className="blurb">
              <h1 className="userToShip">{user2.name} </h1>
              <h2 className="userInfo">Bio: {user2.bio}</h2>
            </div>
          </div>
        </div>
      </div>
    )
  }
}
