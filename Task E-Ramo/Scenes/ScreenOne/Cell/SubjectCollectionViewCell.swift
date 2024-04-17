//
//  SubjectCollectionViewCell.swift
//  Task E-Ramo
//
//  Created by Mohamed on 16/04/2024.
//

import UIKit

class SubjectCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var subjectView: UIView!
 
    @IBOutlet weak var markLbl: UIImageView!{
        didSet{
            markLbl.isHidden = true
        }
    }
    @IBOutlet weak var shadowView: UIView!
    {
        didSet {
            shadowView.isHidden = true
            shadowView.layer.opacity = 0.6
            //markLbl.layer.opacity = 3
            shadowView.layer.cornerRadius = 8
            shadowView.backgroundColor = .green
            shadowView.clipsToBounds = true
            shadowView.layer.borderWidth = 2
            shadowView.layer.borderColor = UIColor.systemGray4.cgColor
        }
    }
    
    @IBOutlet weak var subjectName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
       // markLbl.isHidden = true
        
        subjectView.layer.cornerRadius = 8
        subjectView.clipsToBounds = true
        subjectView.layer.borderWidth = 2
        subjectView.layer.borderColor = UIColor.systemGray5.cgColor
        
//        shadowView.isHidden = true
//        shadowView.layer.opacity = 0.6
//        shadowView.layer.cornerRadius = 8
//        
//        shadowView.clipsToBounds = true
//        shadowView.layer.borderWidth = 2
//        shadowView.layer.borderColor = UIColor.green.cgColor
    }
    

}
