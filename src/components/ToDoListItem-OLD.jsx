import { useState } from "react";

export function ToDoListItem({ id, text, checked, newItemsArray }) {
    const [checkedState, setCheckedState] = useState(checked);

    function changeCheckboxValue() {
        const newValue = !checkedState;
        setCheckedState(newValue);
        newItemsArray(id, newValue);
    }
    
    return (
        <>
            {/* <input id={`check-${id}`} type="checkbox" onChange={() => setCheckedState(!checkedState)} checked={checkedState} /> */}

            <input id={`check-${id}`} type="checkbox" onChange={changeCheckboxValue} checked={checkedState} />

            <label htmlFor={`check-${id}`}>{ text }</label><br/>

        </>
    )
}