//
//  ThankViewController.swift
//  Task E-Ramo
//
//  Created by Mohamed on 17/04/2024.
//

import UIKit

class ThankViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var browseHomeView: UIView!
    
    @IBOutlet weak var threePageView: UIView!
    
    @IBOutlet weak var doneLblOutlet: UILabel!
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        browseHomeView.layer.cornerRadius = 8
        browseHomeView.clipsToBounds = true
        browseHomeView.layer.borderWidth = 2
        browseHomeView.layer.borderColor = UIColor.darkGray.cgColor
        
        threePageView.layer.cornerRadius = 8
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        doneLblOutlet.text = "→   ✔ Done"
        doneLblOutlet.textColor = .systemGreen
    }
    


}
