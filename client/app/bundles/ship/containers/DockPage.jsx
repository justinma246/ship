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
  let user1 = this.props.user1
  let user2 = this.props.user2
    return (
      <div className = "row">
        <div className = "col-md-5">
          <div className="dockpic" id="user1">
            <h1>{user1.name}</h1>
            <img src={user1.picture} width = "200" id = "profile-img"/>
            <h2>INFO HERE</h2>
          </div>
        </div>  
        <div className = "col-md-2">
          <div className = "decision">
            <p>
              <button className="btn btn-danger" 
                onClick = {()=> {$.ajax({url: "dock/sink",})}}>
                Sink
              </button>
            </p>
            <p>
              <a href="#"><button className="btn btn-success" 
                onClick = {()=> {$.ajax({url: "dock/sail",})}}>
                Sail
              </button></a>
            </p>
            <p id = "test">
            </p>
          </div>
        </div>
        <div className = "col-md-5">
          <div className="dockpic" id="user2">
            <h1>{user2.name} </h1>
            <img src={user2.picture} width = "200" id = "profile-img"/>
            <h2>INFO HERE</h2>
          </div>
        </div>
      </div>
    )
  }
}
