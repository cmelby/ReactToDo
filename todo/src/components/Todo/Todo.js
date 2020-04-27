import React from 'react'
import "./todo.css"


function Todo(props) {

    const completedStyle = {
        fontStyle: "italic",
        color: "#cdcdcd",
        textDecoration: "line-through"
    }

    return (
        <div className="todoItem">
            <input type="checkbox" 
                    check={props.item.completed} 
                    onChange={() => props.handleChange(props.item.id)}
            />
            <p style={props.item.completed ? completedStyle: null}>{props.item.text}</p>
        </div>
    )
}

export default Todo;