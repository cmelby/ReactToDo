import React from 'react'
import "./todo.css"


function Todo(props) {
    return (
        <div className="todoItem">
            <input type="checkbox"/>
                <p>{props.item.text}</p>
        </div>
    )
}

export default Todo;