require("HelloWorld.js")
import React from "react"
import {BrowserRouter, Route, Router, Link} from 'react-router-dom'

class App extends React.Component{

    render () {
        return (
            <Router history='he'> 
                <Route path='/roster' component={HelloWorld}>
                </Route>
            </Router>
            );

    }


}

export default App
