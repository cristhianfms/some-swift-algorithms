import Foundation

/**
 Exercise 4:
 We are going to create a school where we will create the necessary data structure using structs instead of classes.

 Struct for Teachers, with name and age.
 Struct for Subjects, with subject name and courses where it is taught.
 Struct for Students, with name, age, and grade.
 Struct for Courses with the tutor (teacher) and students.
 Struct of the School with the different courses in it.
 We want to be able to extract listings and/or counts of the subjects taught by each teacher, how many students each has, and how many distinct students there are in the school who are at least in one subject.
 To test that it works, create a series of test data.
 */

struct Teacher {
    let name: String
    let age: Int
}

struct Subject {
    let name: String
    let courses: [Course]
}

struct Student {
    let name: String
    let age: Int
    let grade: Float
}

struct Course {
    let id: Int
    let tutor: Teacher
    let students: [Student]
}


struct School {
    let courses: [Course]
}

struct TeacherSummary {
    let teacher: String
    var subjects: [String]
    var numberOfStudents: Int
}


let teacherA: Teacher = Teacher(name: "Teacher A", age: 40)
let teacherB: Teacher = Teacher(name: "Teacher B", age: 50)

let student1: Student = Student(name: "Student 1", age: 20, grade: 5.5)
let student2: Student = Student(name: "Student 2", age: 18, grade: 10)
let student3: Student = Student(name: "Student 3", age: 19, grade: 4.6)
let student4: Student = Student(name: "Student 4", age: 30, grade: 7)
let student5: Student = Student(name: "Student 5", age: 34, grade: 2)
let student6: Student = Student(name: "Student 6", age: 28, grade: 9.5)
let student7: Student = Student(name: "Student 6", age: 28, grade: 9.5)


let course1: Course = Course(id: 1, tutor: teacherA, students: [student1, student2])
let course2: Course = Course(id: 2, tutor: teacherB, students: [student3, student4, student5])
let course3: Course = Course(id: 3, tutor: teacherA, students: [student6])


let school: School = School(courses: [course1, course2, course3])
let subjects: [Subject] = [Subject(name: "Math", courses: [course1, course2]), Subject(name: "Literature", courses: [course3])]


func getCoursesByTeacher() -> [TeacherSummary] {
    var teacherSummary: [TeacherSummary] = []
    for c in school.courses {
        if let index = teacherSummary.firstIndex(where: { $0.teacher == c.tutor.name}) {
            let subject:Subject = getCourseSubject(course: c)
            teacherSummary[index].subjects.append(subject.name)
            teacherSummary[index].numberOfStudents += c.students.count
        } else {
            let subject:Subject = getCourseSubject(course: c)
            let summary = TeacherSummary(teacher: c.tutor.name, subjects: [subject.name], numberOfStudents: c.students.count)
            teacherSummary.append(summary)
        }
    }
    
    return teacherSummary
}


func getCourseSubject(course: Course) -> Subject {
    let subject = subjects.first(where: {$0.courses.contains(where: {$0.id == course.id})})
    
    return subject!
}


func getStudentsInAtLeastOneCourse() -> Int {
    var studentsInCourses: [Student] = []
    for c in school.courses {
        for s in c.students {
            if !studentsInCourses.contains(where: {$0.name == s.name}) {
                studentsInCourses.append(s)
            }
        }
    }
    
    return studentsInCourses.count
}



// Get summary
getCoursesByTeacher()
getStudentsInAtLeastOneCourse()







