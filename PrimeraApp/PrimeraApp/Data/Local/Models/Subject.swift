//
//  Subject.swift
//  PrimeraApp
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import Foundation

class Subject {
    
    var name: String?
    
    //Es mejor inicializar listas de datos para evitar tener que comprobar si es nil
    var teachers: [Teacher] = []
    var students: [Student] = []
    
    //Variables computadas/autocalculadas. Al acceder al valor de la variable se ejecuta ese bloque de código, las variables no almacén valor, al acceder a ellas se calculan cada vez
    var numTeacher: Int {
        return teachers.count
    }
    var numStudent: Int {
        return students.count
    }
    
    //Cuando hay que passar parámetros al constructor mejor crear un convinience init y no sobreescribir el init
    convenience init(name: String, teachers: [Teacher] = [], students: [Student] = []) {
        self.init()
        
        self.name = name
        self.teachers = teachers
        self.students = students
    }
}
