import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter } from 'react-router-dom';
import App from './App';
import './index.css';
import {Provider} from 'react-redux'
import ConfigureStore from './store/index'
import './index.css';
const store = ConfigureStore()
ReactDOM.render(
  <React.StrictMode>
      <Provider store={store}>
      <BrowserRouter>
        <App />
      </BrowserRouter>
      </Provider>
  </React.StrictMode>,
  document.getElementById('root')
);