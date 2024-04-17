//
//  InstractorCollectionViewCell.swift
//  Task E-Ramo
//
//  Created by Mohamed on 16/04/2024.
//

import UIKit

class InstractorCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var counterView: UIView! {
        didSet {
            counterView.isHidden = true
            counterView.backgroundColor = .green
            counterView.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var counterLbl: UILabel!
    
    @IBOutlet weak var instracorView: UIView!
    
    @IBOutlet weak var instrctorImage: UIImageView!
    
    @IBOutlet weak var instractorNameLbl: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var subjectLbl: UILabel!
    
    @IBOutlet weak var checkBtnOutlet: UIButton!
   
    @IBOutlet weak var ckeckView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUp(image: UIImage, name: String, price: String, subject: String) {
        instrctorImage.image = image
        instractorNameLbl.text = name
        priceLbl.text = price
        subjectLbl.text = subject
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        instrctorImage.layer.cornerRadius = 30
        instracorView.layer.cornerRadius = 8
        instracorView.clipsToBounds = true
        instracorView.layer.borderColor = UIColor.green.cgColor
        
        ckeckView.layer.cornerRadius = 8
        counterView.layer.cornerRadius = 15
       
        
        
        
    }
    
}
