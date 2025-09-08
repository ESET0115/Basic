import logo from './logo.svg';
import './App.css';

function App() {
  // Template literals
  const name = "John";
  const msg = `Hello, ${name}! Welcome to React.`;
  const age = 25;

  const person = { name, age };
  const utils = { isAdult: age >= 18, isSenior: age >= 65 };
  const profile = { ...person, ...utils };
  
  console.log(profile);
  // { name: 'John', age: 25, isAdult: true, isSenior: false }

  // Array methods - map, filter, reduce
  const items = ['a', 'b', 'c', 1, 2, 3];
  const list = items.map((it, idx) => <li key={idx}>{it}</li>);
  console.log(list);
  // [<li key="0">A</li>, <li key="1">B</li>, <li key="2">C</li>, <li key="3">1</li>, <li key="4">2</li>, <li key="5">3</li>]
  const doubled = items.map(nums => typeof nums === 'number' ? nums * 2 : NaN);

  console.log(doubled);
  // [NaN, NaN, NaN, 2, 4, 6]

  const evens = items.filter(num => typeof num === 'number' && num % 2 === 0);
  console.log(evens);
  // [2]

  const sum = items.reduce((acc, val) => typeof val === 'number' ? acc + val : acc, 0); // initial acc = 0, val = 1,2,3, acc = acc + val
  console.log(sum);
  // 6
  const max = items.reduce((acc, val) => typeof val === 'number' && val > acc ? val : acc, -Infinity);
  console.log(max);
  // 3

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          {msg}
        </p>
      </header>
    </div>
  );
}

export default App;
