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
                               bithdate: Calendar.current.date(from: DateComponents(year: 1984, month: 9, day: 30))),
                       Student(name: "Mireya",
                               email: "mireya@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 1945, month: 8, day: 23))),
                       Student(name: "Maria",
                               email: "maria@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2007, month: 7, day: 24))) ,
                       Student(name: "Juan",
                               email: "juan@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2012, month: 4, day: 12))),
                       Student(name: "Lorenzo",
                               email: "lorenzo@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 1982, month: 1, day: 6))),
                       Student(name: "Laura",
                               email: "laura@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2002, month: 2, day: 1))),
                       Student(name: "Pablo",
                               email: "pablo@gmail.com",
                               bithdate: Calendar.current.date(from: DateComponents(year: 2000, month: 10, day: 8)))]

let defaultTeachers = [Teacher(name: "Monica",
                               email: "monicalopez@gmail.com",
                               type: .extern),
                       Teacher(name: "David",
                               email: "jorgedavid@gmail.com",
                               type: .intern),
                       Teacher(name: "Pedro",
                               email: "pedrop@gmail.com",
                               type: .intern),
                       Teacher(name: "Eugenia",
                               email: "naranjoeu@gmail.com",
                               type: .extern)]

let defaultSubjects = [Subject(name: "Android",
                               //Los ?? indican que si la izquierda es nil se devuelve la derecha
                            //$0 hace referencia a cada elemento del array
                                teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                                students: defaultStudents.filter{$0.name?.contains("a") ?? false}),
                       Subject(name: "iOS",
                               teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("e") ?? false}),
                       Subject(name: "JavaScript",
                               //Los ?? indican que si la izquierda es nil se devuelve la derecha
                        //$0 hace referencia a cada elemento del array
                        teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                        students: defaultStudents.filter{$0.name?.contains("i") ?? false}),
                       Subject(name: "Math",
                               teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("o") ?? false}),
                       Subject(name: "English",
                               teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("u") ?? false}) ]
