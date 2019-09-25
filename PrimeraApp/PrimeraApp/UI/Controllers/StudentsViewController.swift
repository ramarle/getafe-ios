//
//  StudentsViewController.swift
//  PrimeraApp
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
    }

    
}

//Con extension añadimos funcionalidades a la clase, al sacarlo fuera encapsulamos el código y en caso de cambiar el elemtno que muestra los datos sólo hay que cambiar esta parte
extension StudentsViewController: UITableViewDataSource, UITableViewDelegate{
    
    //Configure table view with default options
    func configureTableView (){
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    //Definimos el número de celdas que tiene la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultStudents.count
    }
    
    //Esta función se ejecuta tantas veces como el return de la función anterior
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Definimos la celda dekl tipo studenViewCell y con el indexPath sabemos cuál es
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StudenViewCell", for: indexPath) as? StudentsTableViewCell else {
            return UITableViewCell()
        }
        
        if(indexPath.row < defaultStudents.count){
            let student = defaultStudents[indexPath.row]
            cell.configureCell(student: student)
        }
        
        return cell
    }

}
