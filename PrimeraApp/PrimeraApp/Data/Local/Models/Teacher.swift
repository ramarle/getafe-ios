//
//  Teacher.swift
//  PrimeraApp
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import Foundation

enum TeacherType: String {
    case intern
    case extern
    
    var description: String {
        switch self {
            case .intern:
            return "Interno"
            
            case .extern:
            return "Externo"
            
            //Con unknown default podemos devolver lo que queramos en el caso de que
            // no se de ninguno de los cases
            //@unknown default:
            //return ""
        }
    }
}

class  Teacher: Hashable, CustomStringConvertible {
    
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        return ObjectIdentifier (lhs) == ObjectIdentifier (rhs)
    }
    
    var hasValue: Int {
        return ObjectIdentifier(self).hashValue
    }
    
    func hash (into hasher: inout Hasher){
        return hasher.combine(ObjectIdentifier(self))
    }
    
    var name: String?
    var email: String?
    var type: TeacherType?
    
    var description: String {
        return "\(String(describing: name))"
    }
    
    //Cuando hay que passar parámetros al constructor mejor crear un convinience init y no sobreescribir el init
    convenience init (name: String, email: String? = nil, type: TeacherType? = nil) {
        self.init()
        
        self.name = name
        self.email = email
        self.type = type
    }
}
