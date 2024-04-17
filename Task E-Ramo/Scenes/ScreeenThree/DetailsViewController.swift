//
//  DetailsViewController.swift
//  Task E-Ramo
//
//  Created by Mohamed on 16/04/2024.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var invoicesDetailsBtnOutlet: UIButton!
    
    ///Invoice One Details
    @IBOutlet weak var invoicesOneDetailsView: UIView!
    @IBOutlet weak var constraintInvoicesOneDetailsView: NSLayoutConstraint!
    @IBOutlet weak var invoicesOneDetailsBtnOutlet: UIButton!
    
    ///Invoice Two Deatils
    @IBOutlet weak var invoicesTwoDetailsView: UIView!
    @IBOutlet weak var constraintInvoiceTwoDetailsView: NSLayoutConstraint!
    @IBOutlet weak var invoicesTwoDetailsBtnOutlet: UIButton!
    
    
    @IBOutlet weak var payBtnOutlet: UIButton!
    
    
    @IBOutlet weak var backBtnOutlet: UIButton!
    @IBOutlet weak var confirmBtnOutlet: UIButton!
    
    @IBOutlet weak var threePageView: UIView!
    
    //MARK: - Variables
    var isSelectedOne: Bool = true
    var isSelectedTwo: Bool = true
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        invoicesDetailsBtnOutlet.layer.cornerRadius = 8
        invoicesOneDetailsView.layer.cornerRadius = 8
        
        invoicesTwoDetailsView.layer.cornerRadius = 8
        
        payBtnOutlet.layer.cornerRadius = 8
        backBtnOutlet.layer.cornerRadius = 8
        confirmBtnOutlet.layer.cornerRadius = 8
        
        threePageView.layer.cornerRadius = 8
        
    }
    
    
    //MARK: - Action Buttons
    @IBAction func invoicesOneDetailsBtn(_ sender: UIButton) {
        isSelectedOne.toggle()
        let imageDown = UIImage(systemName: "chevron.down")
        imageDown?.withTintColor(.black)
        let imageUp = UIImage(systemName: "chevron.up")
        imageUp?.withTintColor(.black)
        
        let image = isSelectedOne == true ? imageDown : imageUp
        invoicesOneDetailsBtnOutlet.setImage(image, for: .normal)
        
        
        if isSelectedOne == true {
            UIView.animate(withDuration: 0.3) { [self] in
                constraintInvoicesOneDetailsView.constant = 180

                view.layoutIfNeeded()
            }
        }else {
            UIView.animate(withDuration: 0.3) { [self] in
                constraintInvoicesOneDetailsView.constant = 40
                view.layoutIfNeeded()
            }
        }
    }
    
    @IBAction func invoicesTwoDetailsBtnPressed(_ sender: UIButton) {
        isSelectedTwo.toggle()

        let imageDown = UIImage(systemName: "chevron.down")
        imageDown?.withTintColor(.black)
        let imageUp = UIImage(systemName: "chevron.up")
        imageUp?.withTintColor(.black)
        let image = isSelectedTwo == true ? imageDown : imageUp
        invoicesTwoDetailsBtnOutlet.setImage(image, for: .normal)
        
        
        if isSelectedTwo == true {
            UIView.animate(withDuration: 0.3) { [self] in
                constraintInvoiceTwoDetailsView.constant = 180

                view.layoutIfNeeded()
            }
        }else {
            UIView.animate(withDuration: 0.3) { [self] in
                constraintInvoiceTwoDetailsView.constant = 40
                view.layoutIfNeeded()
            }
        }
    }
    
    
    @IBAction func confirmBtnPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CreditCardViewController")
        navigationController?.pushViewController(vc, animated: true)
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
    }
    
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "TeachersViewController")
        navigationController?.pushViewController(vc, animated: true)
//        vc.modalPresentationStyle = .fullScreen
//        vc.modalTransitionStyle = .coverVertical
//        present(vc, animated: true)
    }
    
}

