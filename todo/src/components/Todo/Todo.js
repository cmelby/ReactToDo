import React from 'react'
import "./todo.css"


function Todo(props) {
    return (
        <div className="todoItem">
            <input type="checkbox" 
                    check={props.item.completed} 
                    onChange={() => props.handleChange(props.item.id)}
            />
            <p>{props.item.text}</p>
        </div>
    )
}

export default Todo;