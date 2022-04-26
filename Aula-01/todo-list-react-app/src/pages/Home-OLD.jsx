import { ToDoListItem } from '../components/ToDoListItem'
import './Home.css'

export function Home() {
    const itemsArray = [
        { id: 1, text: "Acordar 7 horas da manhã", checked: false },
        { id: 2, text: "Lavar toda a louça suja que está dentro e fora da pia", checked: false },
        { id: 3, text: "Levar os cachorros para passear por 30 min", checked: false },
        { id: 4, text: "Lavar o carro todo", checked: true },
    ]; 

    // localStorage.setItem("abc", "oi, tudo bem?");

    // sessionStorage.setItem("def", "olá!")

    console.log("To-do list inicial:", itemsArray);

    function newItemsArray (id, bool) {
        const index = itemsArray.findIndex((itemsArray) => itemsArray.id == id);
        itemsArray[index].checked = bool;
        console.log("To-do list alterada:", itemsArray);
    }

    return (
        <div className="container">
            
            {/* <ToDoListItem id={1} text="Acordar cedo"/> */}
            
            {itemsArray.map(({id, text, checked}) => {
                return <ToDoListItem id={id} text={text} checked={checked} newItemsArray={newItemsArray} />
            })}

            {/* {itemsArray.map((obj) => {
                return <ToDoListItem {...obj} />
            })} */}
            
        </div>

    )
}