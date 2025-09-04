import logo from './watch.png';
import './App.css';


function App() {

  // testing object destructuring
  // const user = { name: 'John', age: 30 };
  // const { name, age } = user;

  // console.log(name); // John
  // console.log(age);  // 30

  // spread operator
  const prev = {name: 'Johny', age: 35};
  const curr = {...prev, age: 36};

  curr.age = 31; // changing age of curr object

  console.log(prev); // {name: 'Johny', age: 35}
  console.log(curr); // {name: 'John', age: 31}

  // rest operator
  const props = {title: 'My Title', value: 42, isActive: true};
  const{title, ...rest} = props;
  console.log(title); // My Title
  console.log(rest); // {value: 42, isActive: true}


  return (
    <div className="App" style={{backgroundColor: 'black'}}>
      
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h1>
          Watch Dogs
        </h1>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>

    </div>
  );
}

export default App;
