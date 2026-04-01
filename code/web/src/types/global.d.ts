export = {}

declare global {
    // DECLARE GLOBAL TYPES ONFLY IF USE IN MULTIPLE FILES
    // Use type instead of interface

  // EXAMPLE
    type Players = {
        id: string
        count: number
    }
    // And you can declare this type global in every file without import them
    // Example how to use in General.tsx
}
