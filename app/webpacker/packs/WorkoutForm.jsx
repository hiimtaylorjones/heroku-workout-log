// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React, { Component } from 'react';
import ReactDOM from 'react-dom'

class WorkoutForm extends Component {
  constructor(props) {
    super(props);
    this.state = { 
      name: "",
      description: "",
      amount: "",
      weight: "",
      notes: ""
    };
  };

  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  };
  
  render() {
    return(
      <div className="workout-form">
        <h3>New Workout</h3>
        <div className="input-group">
          <label>Name</label>
          <input name="name" value={this.state.name} type="text" onChange={this.handleChange}></input>
        </div>
        <div className="input-group">
          <label>Time</label>
          <input name="time" value={this.state.time} type="text" onChange={this.handleChange}></input>
        </div>
        <div className="input-group">
          <label>Notes</label>
          <textarea name="notes" value={this.state.notes} type="text" onChange={this.handleChange}></textarea>
        </div>
      </div>
    );
  }
}

// export default Workout;

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <WorkoutForm name="test workout" />,
    document.body.appendChild(document.createElement('div')),
  )
})