import logo from './logo.svg';
import './App.css';
import Boton from './componentes/Boton';
import Contador from './componentes/Contador';
import { useState } from 'react';

function App() {

  const [numClics, setNumClics] = useState(0);

  const manejarClic = () => {
    console.log('clic');
    setNumClics(numClics + 1)
  };

  const reiniciarContador = () => {
    console.log('reiniciar');
    setNumClics(0)
  };

  return (
    <div className="App">
      <div className='contenedor-principal'>
        <Contador numClics={numClics} />
        <Boton 
          texto={'Clic'}
          esBotonClic={true}
          manejarClic={manejarClic}
        />
        <Boton 
          texto={'Reiniciar'}
          esBotonClic={false}
          manejarClic={reiniciarContador}
        />
      </div>
    </div>
  );
};

export default App;
