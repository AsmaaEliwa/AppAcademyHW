import Main from "./Main";
import React from 'react';
import { useEffect } from 'react';
import { useState } from "react";
function App() {
  useEffect(() => {
    console.log('UseEffect1 Ran');
  },[]);
  const [toggleOne, setToggleOne] = useState(false);
  return (
    <>
    {console.log('rendered or re-rendered')}
      <Main/>
      <button onClick={()=>setToggleOne(!toggleOne)}>ToggleOne</button>
    </>
  );
}

export default App;