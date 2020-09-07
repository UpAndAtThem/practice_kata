function objectsEqual(obj, otherObj) {
  let objKeys = Object.keys(obj);
  let otherObjKeys = Object.keys(otherObj);
  let objValues = Object.values(obj);
  let otherObjValues = Object.values(otherObj);

  let result = true;

  if(objValues.length !== otherObjValues.length || objKeys.length !== otherObjKeys.length) {
    result = false;
  }

  objKeys.forEach((key) => {
    if(!Object.prototype.hasOwnProperty.call(otherObj, key)) {
      result = false;
    }
  });

  objValues.forEach((value) => {
    if(!otherObjValues.some(val => val === value)) {
      result = false;
    }
  });

  return result;
}

console.log(objectsEqual({a: 'foo', b: 'baz'}, {a: 'foo', b: 'baz'}));  // true
console.log(objectsEqual({a: 'foo', b: 'bar'}, {a: 'foo'}));            // false
console.log(objectsEqual({}, {}));                                      // true
console.log(objectsEqual({a: 'foo', b: undefined}, {a: 'foo', c: 1}));  // false