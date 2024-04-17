//
//  CreditCardViewController.swift
//  Task E-Ramo
//
//  Created by Mohamed on 17/04/2024.
//

import UIKit

class CreditCardViewController: UIViewController {

    //MARK: -  Outlets
    
    @IBOutlet weak var cashPaymentView: UIView!
    
    @IBOutlet weak var creditAndDebitCardView: UIView!
    @IBOutlet weak var creditAndDebitCardBtnOutlet: UIButton!
    
    @IBOutlet weak var visaView: UIView!
    @IBOutlet weak var otherCardBtnOutlet: UIButton!
    
    @IBOutlet weak var mobileWalletView: UIView!
    
    @IBOutlet weak var backBtnOutlet: UIButton!
    
    @IBOutlet weak var confirmBtnOutlet: UIButton!
    
    @IBOutlet weak var threePageView: UIView!
    
    @IBOutlet weak var paymentTypeLabel: UILabel!
    
    //MARK: - Variables
    var isSelectedCard: Bool = true
    
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()

        cashPaymentView.layer.cornerRadius = 8
        creditAndDebitCardView.layer.cornerRadius = 8
        visaView.layer.cornerRadius = 8
        otherCardBtnOutlet.layer.cornerRadius = 8
        mobileWalletView.layer.cornerRadius = 8
        threePageView.layer.cornerRadius = 8
        backBtnOutlet.layer.cornerRadius = 8
        confirmBtnOutlet.layer.cornerRadius = 8
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        paymentTypeLabel.text = "→  ✅  Payment Type "
        paymentTypeLabel.textColor = .systemGreen
    }
    override func viewWillDisappear(_ animated: Bool) {
        paymentTypeLabel.text = "→   ✔  Payment Type"
        paymentTypeLabel.textColor = .gray
    }
    
    
    //MARK: - Action Buttons
    @IBAction func creditCardBtnPressed(_ sender: UIButton) {
        
        isSelectedCard.toggle()
        let imageDown = UIImage(systemName: "chevron.down")
        imageDown?.withTintColor(.black)
        let imageUp = UIImage(systemName: "chevron.up")
        imageUp?.withTintColor(.black)
        let image = isSelectedCard == true ? imageDown : imageUp
        creditAndDebitCardBtnOutlet.setImage(image, for: .normal)
        
        
        if isSelectedCard == true {
            UIView.animate(withDuration: 0.3) { [self] in
                visaView.isHidden = false
                view.layoutIfNeeded()
            }
        }else {
            UIView.animate(withDuration: 0.4) { [self] in
                visaView.isHidden = true
                view.layoutIfNeeded()
            }
        }
    }
    
    @IBAction func confirmBtnPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ThankViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    

}
