

function MouseEvent(){

    const mse = () =>{
    console.log("Mouse moving!");
  }

    return (
        <>
            <div style={{color:"red"}} onMouseMove={mse}>
                Welcome to mouse event
            </div>
        </>
    );
}

export default MouseEvent;