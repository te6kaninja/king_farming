// HERE IMPORT ALL IMAGES AND CAN USE IN EVERY FILE WITH EXPORT/IMPORT

// Example

import name from 'path'

const images = {
    name: name
}

export default images

// -----------------------

// How to use in files ?

import images from 'path'

<img src = {images.name}/>
