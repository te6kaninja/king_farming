import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './global.css'
import General from './components/General'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <General />
  </StrictMode>,
)
