//
//  Student.swift
//  PrimeraApp
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import Foundation

class Student: CustomStringConvertible {
   
    //MARK: Properties
    //Optinal variables
    var name: String?
    var email: String?
    var birthdate: Date?
    
    //Use description to print this class with custom string format
    var description: String {
        return "\(String(describing: name)) \(String(describing:email))"
    }
    
    //Cuando hay que passar parámetros al constructor mejor crear un convinience init y no sobreescribir el init
    convenience init (name: String, email: String? = nil, bithdate: Date? = nil){
        self.init ()
        
        self.name = name
        self.email = email
        self.birthdate = bithdate
    }
}
