import React, { useState } from "react";

function FormEventComponent(){

    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
 
    const onUsernameChange = (event) => {
        setUsername(event.target.value);
        console.log("Username:", event.target.value);
    };
 
    const onPasswordChange = (event) => {
        setPassword(event.target.value);
        console.log("Password:", event.target.value);
    };
 
    return (
        <div>
            <input
                type="text"
                value={username}
                onChange={onUsernameChange}
                placeholder="Username"
            />
            <input
                type="password"
                value={password}
                onChange={onPasswordChange}
                placeholder="Password"
            />

            <button onClick={()=>{console.log("Logged in!")}}>Login</button>
        </div>
    );
}

export default FormEventComponent;