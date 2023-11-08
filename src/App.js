import './App.css';
import regina from './assets/regina.png'
import chess from './assets/chess.png'

import team1 from './assets/team1.png'
import team11 from './assets/team11.png'

import team2 from './assets/team2.png'
import team22 from './assets/team22.png'

import team3 from './assets/team3.png'
import team33 from './assets/team33.png'

import team4 from './assets/team4.png'
import team44 from './assets/team44.png'

import team5 from './assets/team5.png'
import team55 from './assets/team55.png'

import team6 from './assets/team6.png'
import team66 from './assets/team66.png'

import team7 from './assets/team7.png'
import team77 from './assets/team77.png'


import { useState, useEffect } from 'react';
import { ToastContainer, toast } from 'react-toastify';

import 'react-toastify/dist/ReactToastify.css';


function App() {

  const [is_auth, setIs_Auth] = useState(false);
  const [is_admin, setIs_Admin] = useState(true);
  const [dataAdmin, setDataAdmin] = useState(null);
  const [codeInput, setCodeInput] = useState("");

  const query = new URLSearchParams(window.location.search);

  const notify_error = (customMessage) => {
    toast.error(customMessage, {
      position: "top-right",
      autoClose: 5000,
      hideProgressBar: false,
      closeOnClick: true,
      pauseOnHover: false,
      draggable: true,
      progress: undefined,
      theme: "colored",
    });
  };
  const notify_success = (customMessage) => {
    toast.success(customMessage, {
      position: "top-right",
      autoClose: 5000,
      hideProgressBar: false,
      closeOnClick: true,
      pauseOnHover: false,
      draggable: true,
      progress: undefined,
      theme: "colored",
    });
  };

  const checkCode = async () => {
    try{
      const response = await fetch('https://vot.lrmd.ro/api.php?q=check_code&code=' + codeInput, {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        },
        credentials: 'include',
      });
      const jsonData = await response.json();
      if (jsonData.status !== "OK") {
        notify_error("Codul este gresit sau folosit!");
        setCodeInput("");
      }
      else {
        notify_success("Codul este corect! Te rog sa alegi echipa favorita!");
        setIs_Auth(true);
      }
    }catch{
      
    }
  }
  const addVote = async (e) => {
    e.preventDefault();
    try{
      const response = await fetch('https://vot.lrmd.ro/api.php?q=add_vote&team=' + e.target.value, {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        },
        credentials: 'include',
      });
      const jsonData = await response.json();
      if (jsonData.status !== "OK") {
        notify_error("Ceva nu a mers bine!");
        setIs_Auth(false);
      }
      else {
        notify_success("Felicitari! Votul a fost trimis!");
        setIs_Auth(false);
      }
    }catch{
      
    }
  }

  const handleChange = (e) => {
    setCodeInput(e.target.value);
  };

  useEffect(() => {

    const checkAdmin = async () => {
      const adminToken = query.get('admintoken');
      try {
        const response = await fetch('https://vot.lrmd.ro/api.php?q=admin&admintoken=' + adminToken, {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
          },
          credentials: 'include',
        });
        const jsonData = await response.json();
        if (jsonData.status === "OK") {
          setIs_Admin(true);
          setDataAdmin(jsonData);
        }
      } catch (error) {
        // Tratează eroarea aici
        console.error(error);
      }
    };

    checkAdmin();
    
  }, []);

  return (
    <>
      <img src={chess} className="bck_img" alt="" />
      <div className='fade_bck' />

      <nav>
        <img src={regina} alt="" />
        <div className='title'>
          <h1>Contraofensiva Reginei</h1>
          <h3>- Balul Bobocilor 2023-</h3>
        </div>
        <img src={regina} alt="" />
      </nav>

      <br /><br /><br />

      <div className='askvote'>
        <h1>Votează-ți echipa favorită</h1>

        {is_auth && is_auth === true ? (
          <div className='cards'>
            <div className='card'>
              <img src={team1} alt="" />
              <div className='team'>
                <h1>Echipa 1</h1>
                <h3>Vaipan Alexandra Luciana</h3>
                <h3>Nanu Ionuț Andrei</h3>
              </div>
              <button value="1" onClick={addVote}>Votează</button>
            </div>
            <div className='card'>
              <img src={team2} alt="" />
              <div className='team'>
                <h1>Echipa 2</h1>
                <h3>Barabasa Timeea Maria</h3>
                <h3>Stefan Onofrei</h3>
              </div>
              <button value="2" onClick={addVote}>Votează</button>
            </div>
            <div className='card'>
              <img src={team3} alt="" />
              <div className='team'>
                <h1>Echipa 3</h1>
                <h3>Tanasă Denisa Dumitrița</h3>
                <h3>Pînzariu Matei</h3>
              </div>
              <button value="3" onClick={addVote}>Votează</button>
            </div>
            <div className='card'>
              <img src={team4} alt="" />
              <div className='team'>
                <h1>Echipa 4</h1>
                <h3>Ursan Miruna</h3>
                <h3>Brânzei Robert</h3>
              </div>
              <button value="4" onClick={addVote}>Votează</button>
            </div>
            <div className='card'>
              <img src={team5} alt="" />
              <div className='team'>
                <h1>Echipa 5</h1>
                <h3>Constantin Ecaterina</h3>
                <h3>Aparaschivei Apostol Andrei Matteo</h3>
              </div>
              <button value="5" onClick={addVote}>Votează</button>
            </div>
            <div className='card'>
              <img src={team6} alt="" />
              <div className='team'>
                <h1>Echipa 6</h1>
                <h3>Șnițer Ioana-Grațiela</h3>
                <h3>Știr Alexandru</h3>
              </div>
              <button value="6" onClick={addVote}>Votează</button>
            </div>
            <div className='card'>
              <img src={team7} alt="" />
              <div className='team'>
                <h1>Echipa 7</h1>
                <h3>Cuțic Ioana</h3>
                <h3>Cretu Stefan-Adrian</h3>
              </div>
              <button value="7" onClick={addVote}>Votează</button>
            </div>
          </div>
        ) : (
          <div className='formCode'>
            <input placeholder='Cod acces' value={codeInput} onChange={handleChange} />
            <button onClick={checkCode}>Verirică codul</button>
          </div>
        )}

      </div>

      <br /><br />

      {is_admin && is_admin === true && dataAdmin && (
        <>
          <div className='showvote'>
            <h1>Rezultate</h1>
            <div className='content'>
              <div className='bar'>
                <h3>Echipa 1</h3>
                <p>{dataAdmin.team1} voturi</p>
                <div className='fill' style={{width: `${(dataAdmin.team1 / 300) * 100}%`}}></div>
              </div>
              <div className='bar'>
                <h3>Echipa 2</h3>
                <p>{dataAdmin.team2} voturi</p>
                <div className='fill' style={{width: `${(dataAdmin.team2 / 300) * 100}%`}}></div>
              </div>
              <div className='bar'>
                <h3>Echipa 3</h3>
                <p>{dataAdmin.team3} voturi</p>
                <div className='fill' style={{width: `${(dataAdmin.team3 / 300) * 100}%`}}></div>
              </div>
              <div className='bar'>
                <h3>Echipa 4</h3>
                <p>{dataAdmin.team4} voturi</p>
                <div className='fill' style={{width:`${(dataAdmin.team4 / 300) * 100}%`}}></div>
              </div>
              <div className='bar'>
                <h3>Echipa 5</h3>
                <p>{dataAdmin.team5} voturi</p>
                <div className='fill' style={{width: `${(dataAdmin.team5 / 300) * 100}%`}}></div>
              </div>
              <div className='bar'>
                <h3>Echipa 6</h3>
                <p>{dataAdmin.team6} voturi</p>
                <div className='fill' style={{width: `${(dataAdmin.team6 / 300) * 100}%`}}></div>
              </div>
              <div className='bar'>
                <h3>Echipa 7</h3>
                <p>{dataAdmin.team7} voturi</p>
                <div className='fill' style={{width: `${(dataAdmin.team7 / 300) * 100}%`}}></div>
              </div>
            </div>
          </div>
          <br /><br /> 
        </>
      )}

      <div className='showteam'>
        <h1>Echipele participante</h1>
        <div className='rows'>
          <div className='row'>
            <h1>Echipa 1</h1>
            <div className='cards'>
              <div className='card'>
                <div className='image'>
                  <img src={team1} alt="" />
                </div>
                <div className='content'>
                  <h3>Vaipan Alexandra Luciana</h3>
                  <h3>Nanu Ionuț Andrei</h3>
                </div>
              </div>
              <div className='card'>
                <div className='image'>
                  <img src={team11} alt="" />
                </div>
                <div className='content'>
                  <h3>Darie Alexandra</h3>
                  <h3>Sandu Cosmin</h3>
                </div>
              </div>
            </div>
          </div>

          <div className='row'>
            <h1>Echipa 2</h1>
            <div className='cards'>
              <div className='card'>
                <div className='image'>
                  <img src={team2} alt="" />
                </div>
                <div className='content'>
                  <h3>Barabasa Timeea Maria</h3>
                  <h3>Stefan Onofrei</h3>
                </div>
              </div>
              <div className='card'>
                <div className='image'>
                  <img src={team22} alt="" />
                </div>
                <div className='content'>
                  <h3>Ana Țârlea</h3>
                  <h3>Mihoc Eduard</h3>
                </div>
              </div>
            </div>
          </div>

          <div className='row'>
            <h1>Echipa 3</h1>
            <div className='cards'>
              <div className='card'>
                <div className='image'>
                  <img src={team3} alt="" />
                </div>
                <div className='content'>
                  <h3>Tanasă Denisa Dumitrița</h3>
                  <h3>Pînzariu Matei</h3>
                </div>
              </div>
              <div className='card'>
                <div className='image'>
                  <img src={team33} alt="" />
                </div>
                <div className='content'>
                  <h3>Plugariu Lorena</h3>
                  <h3>Panțiru Răzvan</h3>
                </div>
              </div>
            </div>
          </div>


          <div className='row'>
            <h1>Echipa 4</h1>
            <div className='cards'>
              <div className='card'>
                <div className='image'>
                  <img src={team4} alt="" />
                </div>
                <div className='content'>
                  <h3>Ursan Miruna</h3>
                  <h3>Brânzei Robert</h3>
                </div>
              </div>
              <div className='card'>
                <div className='image'>
                  <img src={team44} alt="" />
                </div>
                <div className='content'>
                  <h3>Iftodie Denisa</h3>
                  <h3>Coșman Denis</h3>
                </div>
              </div>
            </div>
          </div>


          <div className='row'>
            <h1>Echipa 5</h1>
            <div className='cards'>
              <div className='card'>
                <div className='image'>
                  <img src={team5} alt="" />
                </div>
                <div className='content'>
                  <h3>Constantin Ecaterina</h3>
                  <h3>Aparaschivei Apostol Andrei Matteo</h3>
                </div>
              </div>
              <div className='card'>
                <div className='image'>
                  <img src={team55} alt="" />
                </div>
                <div className='content'>
                  <h3>Șnițer Andreea</h3>
                  <h3>Vatamanu Denis</h3>
                </div>
              </div>
            </div>
          </div>

          <div className='row'>
            <h1>Echipa 6</h1>
            <div className='cards'>
              <div className='card'>
                <div className='image'>
                  <img src={team6} alt="" />
                </div>
                <div className='content'>
                  <h3>Șnițer Ioana-Grațiela</h3>
                  <h3>Știr Alexandru</h3>
                </div>
              </div>
              <div className='card'>
                <div className='image'>
                  <img src={team66} alt="" />
                </div>
                <div className='content'>
                  <h3>Rusu Monalisa</h3>
                  <h3>Calancea Adrian</h3>
                </div>
              </div>
            </div>
          </div>

          <div className='row'>
            <h1>Echipa 7</h1>
            <div className='cards'>
              <div className='card'>
                <div className='image'>
                  <img src={team7} alt="" />
                </div>
                <div className='content'>
                  <h3>Cuțic Ioana</h3>
                  <h3>Cretu Stefan-Adrian</h3>
                </div>
              </div>
              <div className='card'>
                <div className='image'>
                  <img src={team77} alt="" />
                </div>
                <div className='content'>
                  <h3>Maftei Miruna</h3>
                  <h3>Chelariu Răzvan</h3>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <footer>
        <p>© 2023 • Toate drepturile rezervate</p>
        <a href='https://lrdm.ro/' target="_blank">Liceul Regina Maria Dorohoi</a>
        <p>Made by: <a href='https://nnmadalin.me/' target="_blank">Neaună Mădălin</a></p>
      </footer>

      <ToastContainer
        position="top-right"
        autoClose={5000}
        hideProgressBar={false}
        newestOnTop={false}
        closeOnClick
        rtl={false}
        pauseOnFocusLoss={false}
        draggable
        pauseOnHover={false}
        theme="light"
      />
    </>
  );
}

export default App;
