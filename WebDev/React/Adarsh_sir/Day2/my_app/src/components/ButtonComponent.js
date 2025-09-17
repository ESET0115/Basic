function BtnComponent() {

  const buttonHandler = () =>{
    console.log("Button Clicked!");
  }

  return (
    <>
      <button onClick={buttonHandler}>Click me</button>
    </>
  );
}

export default BtnComponent;
