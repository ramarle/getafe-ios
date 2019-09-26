//
//  DefaultData.swift
//  PrimeraApp
//
//  Created by Dev2 on 23/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import Foundation

// *************** DEFAULT DATA ***************

let defaultStudents = [Student(name: "Paco",
                               email: "paco@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 1984, month: 9, day: 30)),
                               avatar: "img_student_1"),
                       Student(name: "Mireya",
                               email: "mireya@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 1945, month: 8, day: 23)),
                               avatar: "img_student_2"),
                       Student(name: "Maria",
                               email: "maria@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2007, month: 7, day: 24)),
                               avatar: "img_student_3") ,
                       Student(name: "Juan",
                               email: "juan@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2012, month: 4, day: 12)),
                               avatar: "img_student_4"),
                       Student(name: "Lorenzo",
                               email: "lorenzo@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 1982, month: 1, day: 6)),
                               avatar: "img_student_5"),
                       Student(name: "Laura",
                               email: "laura@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2002, month: 2, day: 1)),
                               avatar: "img_student_6"),
                       Student(name: "Pablo",
                               email: "pablo@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2000, month: 10, day: 8)),
                               avatar: "img_student_7")]

let defaultTeachers = [Teacher(name: "Monica",
                               email: "monicalopez@gmail.com",
                               type: .extern,
                               avatar: "img_teacher_1"),
                       Teacher(name: "David",
                               email: "david@gmail.com",
                               type: .intern,
                               avatar: "img_teacher_2"),
                       Teacher(name: "Pedro",
                               email: "pedro@gmail.com",
                               type: .intern,
                               avatar: "img_teacher_3"),
                       Teacher(name: "Eugenia",
                               email: "eugenia@gmail.com",
                               type: .extern,
                               avatar: "img_teacher_4")]

let defaultSubjects = [Subject(name: "Android",
                               //Los ?? indican que si la izquierda es nil se devuelve la derecha
                            //$0 hace referencia a cada elemento del array
                                teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                                students: defaultStudents.filter{$0.name?.contains("a") ?? false},
                                logo: "img_subject_android"),
                       Subject(name: "iOS",
                               teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("e") ?? false},
                               logo: "img_subject_dart"),
                       Subject(name: "JavaScript",
                               //Los ?? indican que si la izquierda es nil se devuelve la derecha
                        //$0 hace referencia a cada elemento del array
                        teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                        students: defaultStudents.filter{$0.name?.contains("i") ?? false},
                        logo: "img_subject_ios"),
                       Subject(name: "Math",
                               teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("o") ?? false},
                               logo: "img_subject_javascript"),
                       Subject(name: "English",
                               teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("u") ?? false},
                               logo: "img_subject_python") ]
