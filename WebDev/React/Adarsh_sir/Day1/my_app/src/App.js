import './App.css';
import { useState } from 'react';

function App() {

  const [counter, setCounter] = useState(0)

  const increment = () => {
    console.log("callback recieved for increment")
    setCounter(counter + 1)
    // or
    // setCounter(prev => prev+1)
  }

  const decrement = () => {
    console.log("callback recieved for decrement")
    setCounter(counter - 1)
    // or
    // setCounter(prev => prev-1)
  }

  return (
    <div className='container'>
      <p style={{fontSize: '100px'}}>{counter}</p>
      <button onClick={increment}>Increment</button>
      <button onClick={decrement}>Decrement</button>
    </div>
  );
}


export default App;
