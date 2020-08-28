function objectHasProperty(petsObj, petType) {
  return Object.keys(petsObj).some(key => key === petType);
}

let pets = {
  cat: 'Simon',
  dog: 'Dwarf',
  mice: null,
};

objectHasProperty(pets, 'dog');       // true
objectHasProperty(pets, 'lizard');    // false
objectHasProperty(pets, 'mice');      // true