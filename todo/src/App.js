import React from 'react';
import logo from './logo.svg';
import './App.css';
import Navbar from './components/Navbar/Navbar'
import MainContent from './components/MaintContent/MainContent';
import Footer from "./components/Footer/Footer"

function App() {
  return (
      <div>
        <Navbar />
          <MainContent />
        <Footer />
      </div>
    
  );
}

export default App;
 