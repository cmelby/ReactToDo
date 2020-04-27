import React from 'react';
import "./mainContent.css";
import Todo from "../Todo/Todo"
import todosData from "../MaintContent/todosData"


function MainContent() {

    const todoItems = todosData.map(item => 
        <Todo key={item.id} item={item}/>)

    return (
        <div className="toDo">
            {todoItems}
        </div>
    )
}
export default MainContent;