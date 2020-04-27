import React from 'react';
import "./mainContent.css";
import Todo from "../Todo/Todo"


function MainContent() {
    return (
        <div className="toDo">
            <Todo/>
            <Todo/>
            <Todo/>
            <Todo/>
        </div>
    )
}
export default MainContent;