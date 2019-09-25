//
//  StudentsTableViewCell.swift
//  PrimeraApp
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import UIKit

class StudentsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mLabelName: UILabel!
    @IBOutlet weak var mLabelEmail: UILabel!
    
    //Con este método limpiamos la celda para poderla reutilizar cuando hacemos scroll
    //Hay que darle un identificar a la celda en el storyboard para poderla utilizar
    override func prepareForReuse() {
        mImageView = nil
        mLabelName = nil
        mLabelEmail = nil
    }
    
    func configureCell (student: Student){
        
        mImageView.image = UIImage(named: student.avatar ?? "")
        mLabelName.text = student.name
        mLabelEmail.text = student.email
    }
    
}
