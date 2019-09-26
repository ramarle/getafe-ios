//
//  TeachersTableViewCell.swift
//  PrimeraApp
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 company. All rights reserved.
//

import UIKit

class TeachersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mLabelName: UILabel!
    @IBOutlet weak var mLabelEmail: UILabel!
    
    override func prepareForReuse() {
        mImageView.image = nil
        mLabelName.text = nil
        mLabelEmail.text = nil
    }
    
    func configureCell (teacher: Teacher){
        
        mImageView.image = UIImage(named: teacher.avatar ?? "")
        mLabelName.text = teacher.name
        mLabelEmail.text = teacher.email
    }
}
