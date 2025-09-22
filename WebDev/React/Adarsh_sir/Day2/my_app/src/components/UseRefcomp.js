import { useRef } from "react";
// Used to focus on a particular element

function UseRefComponent(){

    const inputElement = useRef(null);
    const focusHandler = ()=>{
        inputElement.current.focus();
    }
 
    return (
        <div>
            Welcome to UseRef hook
            <br/>
            <input ref={inputElement} />
            <button onClick={focusHandler} >Focus</button>
        </div>
    );
}

export default UseRefComponent;