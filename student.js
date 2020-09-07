// foo = createStudent('Foo', '1st');
// > foo.info();
// = Foo is a 1st year student
// > foo.listCourses();
// = [];
// > foo.addCourse({ name: 'Math', code: 101 });
// > foo.addCourse({ name: 'Advanced Math', code: 102 });
// > foo.listCourses();
// = [{ name: 'Math', code: 101 }, { name: 'Advanced Math', code: 102 }]
// > foo.addNote(101, 'Fun course');
// > foo.addNote(101, 'Remember to study for algebra');
// > foo.viewNotes();
// = Math: Fun Course; Remember to study for algebra
// > foo.addNote(102, 'Difficult subject');
// > foo.viewNotes();
// = Math: Fun Course; Remember to study for algebra
// = Advanced Math: Difficult Subject
// > foo.updateNote(101, 'Fun course');
// > foo.viewNotes();
// = Math: Fun Course
// = Advanced Math: Difficult Subject

function createStudent(studentName, year) {  
  const info = () => {
    console.log(`${studentName} is a ${year} year student`);
  };

  const listCourses = () => {
    console.log(courses);
  };

  const addCourse = ({name, code}) => {
    codeDictionary[code] = name;
    courses.push({[code]: name});
  };

  const addNote = (code, note) => {
    if(courseNotes[code]) {
      courseNotes[code].push(note);
    } else {
      courseNotes[code] = [note];
    }
  };

  const viewNotes = () => {
    console.log(courseNotes);
  };

  const updateNotes = (updatedCode, updatedNote) => {
    for(let code in courseNotes) {
      if(+code === +updatedCode) {
        courseNotes[updatedCode] = [updatedNote];
      }
    }
  };

  const courses = [];
  const codeDictionary = {};
  const courseNotes = {};

  const userObj = {
    info: info,
    listCourses: listCourses,
    addCourse: addCourse,
    addNote: addNote,
    viewNotes: viewNotes,
    updateNotes: updateNotes
  };

  return userObj;
}

const student1 = createStudent('Jason', '100th');

student1.info();
student1.addCourse({name: 'Math', code: 101});
student1.listCourses();
student1.addNote(101, 'This is tought');
student1.viewNotes();
student1.addNote(101, 'This is easy');
student1.viewNotes();
student1.updateNotes(101, 'This was fun');
student1.viewNotes();