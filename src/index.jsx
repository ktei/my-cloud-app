import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import { BrowserRouter as Router } from 'react-router-dom';

import { Shell } from './App';
import Routes from './Routes';

import './styles/app.css';

axios.defaults.baseURL = 'https://lms1210.azurewebsites.net';
axios.defaults.headers.common.Authorization = 'Bearer Izolnwc6N7CCLXLREWrgWkZAHGoUl7ntKFg2CwHR871_9LWwt9622-pGVO6npzeygHa5K1R71svMaGT7MvHDsUflbCQbnfa5H5kYL2gnmNQdhZvojIXbcg61uvuD9uVoTHjwavgBhOMV2uxGmsZFiCURMBSx75TdtpY2OL5h7L2kLOureacDHiVe2oTAdUKNeCY94voG_GgshtGf3pWDQKmj19AXOMDOSWeO5zDXiy0';

const App = () => {
  return (
    <Router basename="/Prod/app">
      <Shell>
        <Routes />
      </Shell>
    </Router>
  );
};

ReactDOM.render(<App />, document.getElementById('root'));
