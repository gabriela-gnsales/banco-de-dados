import { ToDoListItem } from '../components/ToDoListItem';
import { useState } from "react";
import './Home.css';

export function Home() {
    // const [itemsArray, setItemsArray] = useState([
    const itemsArray = [
        { id: 1, text: "Acordar 7 horas da manhã", checked: false },
        { id: 2, text: "Lavar toda a louça suja que está dentro e fora da pia", checked: false },
        { id: 3, text: "Levar os cachorros para passear por 30 min", checked: false },
        { id: 4, text: "Lavar o carro todo", checked: true },
    ]; 

    // localStorage.setItem("abc", "oi, tudo bem?");

    // sessionStorage.setItem("def", "olá!")

    console.log("To-do list inicial:", itemsArray);

    function updateChecked(id, checked) {
        const buscaIndex = itemsArray.findIndex(item => {
            return item.id == id
        })
        itemsArray[buscaIndex].checked  = checked; 
        console.log("To-do list atualizada:",itemsArray);
        
        // filter retorna um novo array
    }

    return (
        <div className="container">
            
            {/* <ToDoListItem id={1} text="Acordar cedo"/> */}
            
            {itemsArray.map(({id, text, checked}) => {
                return <ToDoListItem id={id} text={text} checked={checked} updateChecked={updateChecked} />
            })}

            {/* <input type="button" onClick={addItemToDoList} /> */}

            {/* {itemsArray.map((obj) => {
                return <ToDoListItem {...obj} />
            })} */}
            
        </div>

    )
}