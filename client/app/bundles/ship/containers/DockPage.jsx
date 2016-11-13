import React from 'react'
import 'styles/DockStyles.styl'

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
    return (
      <div className = "row">
        <div className = "col-md-5">
          <div className="profile" id="user1">
            <h1>{user1.name}</h1>
            <img src={user1.picture} width = "200" id = "profile-img"/>
            <h2>INFO HERE</h2>
          </div>
        </div>  
        <div className = "col-md-2">
          <div className = "decision">
            <p>
            <Sail_decision />
            </p>
            <p>
            <Sink_decision />
            </p>
            <p id = "test">
            </p>
          </div>
        </div>
        <div className = "col-md-5">
          <div className="profile" id="user2">
            <h1>{user2.name} </h1>
            <img src={user2.picture} width = "200" id = "profile-img"/>
            <h2>INFO HERE</h2>
          </div>
        </div>
      </div>
    )
  }
}
