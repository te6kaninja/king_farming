import React from 'react'

// Lucide Icons installed use them for icons
// Split code to multiple files for more flexibility

function General(players: Players) {
  return (
    <div>
      <div>CONTENT</div>
      <div>{players.count}</div>
    </div>
  )
}

export default General
