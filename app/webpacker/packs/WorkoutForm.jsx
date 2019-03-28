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
      workoutCondition: "",
      amount: "",
      weight: "",
      notes: ""
    };
    this.handleChange = this.handleChange.bind(this);
  };

  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });

    if (this.state.workoutCondition === "time") {
      console.log("For time!");
    } else if (this.state.workoutCondition === "reps" ) {
      console.log("Reps!");
    }
  };
  
  render() {
    return(
      <div className="workout-form">
        <h3>New Workout</h3>
        <div className="input-group">
          <label>Name</label>
          <input name="name" value={this.state.name} type="text" onChange={this.handleChange}></input>
        </div>
        <div className="select-group">
          <select value={this.state.workoutCondition} onChange={this.handleChange} >
            <option value="time">For Time</option>
            <option value="reps">Max Reps</option>
            <option value="weight">Max Weight</option>
          </select>
        </div>
        <div className="input-group">
          <label>Time</label>
          <input name="time" value={this.state.time} type="text" onChange={this.handleChange}></input>
        </div>
        <div className="input-group">
          <label>Total Reps</label>
          <input name="time" value={this.state.reps} type="text" onChange={this.handleChange}></input>
        </div>
        <div className="input-group">
          <label>Max Weight</label>
          <input name="time" value={this.state.weight} type="text" onChange={this.handleChange}></input>
        </div>
        <div className="input-group">
          <label>Notes</label>
          <textarea name="notes" value={this.state.notes} type="text" onChange={this.handleChange}></textarea>
        </div>
      </div>
    );
  }
}


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <WorkoutForm name="test workout" />,
    document.body.appendChild(document.createElement('div')),
  )
})