import React from 'react';
import "./mainContent.css";
import Todo from "../Todo/Todo"
import todosData from "../MaintContent/todosData"


class MainContent extends React.Component {

    constructor() {
        super()
        this.state = {
            todos: todosData
        }
    this.handleChange = this.handleChange.bind(this)
    }
    
    handleChange(id) {
        this.setState(prevState => {
            const updatedTodos = prevState.todos.map(todo => {
                if (todo.id === id) {
                    return {
                        ...todo,
                        completed: !todo.completed
                    }
                }
                return todo
            })
            console.log(prevState.todos)
            console.log(updatedTodos)
            return {
                todos: updatedTodos
            }
        })
    }

    render() {
        const todoItems = this.state.todos.map(item => 
            <Todo key={item.id}
                item={item} 
                handleChange={this.handleChange}
             />)


            return (
                <div className="toDo">
                    {todoItems}
                </div>
            )
    }

}
export default MainContent;