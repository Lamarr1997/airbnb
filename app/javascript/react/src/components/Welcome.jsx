import * as React from 'react';
import * as ReactDOM from 'react-dom/client';


const Welcome = () => {
  return(
    <div className='container '>
      <h1>Luxury Suite</h1>
      <p>This app is going to be a airbnb type app displaying luxury flats. The type of customers i'm advertising for are upper middle class.</p>
    </div>
  )
}

const container = document.getElementById('welcome');
const root = ReactDOM.createRoot(container);

root.render(
  <React.StrictMode>
    <Welcome />
  </React.StrictMode>
);



export default Welcome;
