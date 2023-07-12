import { useState } from "react";
import { useEffect } from "react";
function Main(){
    const [toggleTwo, setToggleTwo] = useState(false);
    const [count, setCount] = useState(0);
    useEffect(() => {
        console.log('UseEffect2 Ran');
        if (toggleTwo)
        console.log('toggleTwo slice of state is true so this code runs');
    
      }, [toggleTwo]);
      useEffect(() => {
        setInterval(() => {
          console.log(`UseEffect3 with interval number ${count} is running`);
        }, 1000);
      }, [count]);
    //   console.log(
    //     `UseEffect3 cleanup ran.\nsetInterval number ${count} is being cleared out`
    //   );
    //   clearInterval(myInterval);
  
    return (
        <>
        <h1>za
        Main Component
        <button onClick={()=>setToggleTwo(!toggleTwo)}>ToggleTwo</button>
        <button onClick={()=>setCount(count+1)}> count</button>
        </h1>
    
        </>
    )
}
export default Main;