import { useEffect } from "react";
import { useState } from "react";

function Sibling1(props){
    return (
        <div>
            {props.count}
        </div>
    )
}

function Sibling2({setCount}){
    const incrementHandler = ()=>{
        setCount(prev=>prev+1)
    }

    const decrementHandler = ()=>{
        setCount(prev=>prev-1)
    }

    return (
        <div>
            {props.count}
        </div>
    )
}

function ParentComponent(){
    const [count, setCount] = useState(0);

    return (
        <div>
            <Sibling1 count = {count}/>
            <Sibling2 setCount = {setCount}/>
        </div>
    );
}

export default ParentComponent;