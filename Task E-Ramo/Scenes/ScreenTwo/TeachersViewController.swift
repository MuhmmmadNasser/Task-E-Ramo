//
//  TeachersViewController.swift
//  Task E-Ramo
//
//  Created by Mohamed on 16/04/2024.
//

import UIKit

class TeachersViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backBtnOutlet: UIButton!
    @IBOutlet weak var confirmBtnOutlet: UIButton!
   
    
    //MARK: - Variables
    var arr: [String] = []
    var count = 0
    var instractorModelArray: [InstractorModel] = [InstractorModel(image: UIImage(named: "person")!, name: "MR.Mohamed", price: "4500EGP", subject: "Math Subject"),InstractorModel(image: UIImage(named: "person")!, name: "MR.Mohamed", price: "4500EGP", subject: "Math Subject"),InstractorModel(image: UIImage(named: "person")!, name: "MR.Mohamed", price: "4500EGP", subject: "Math Subject"),InstractorModel(image: UIImage(named: "person")!, name: "MR.Mohamed", price: "4500EGP", subject: "Math Subject"),InstractorModel(image: UIImage(named: "person")!, name: "MR.Mohamed", price: "4500EGP", subject: "Math Subject"),InstractorModel(image: UIImage(named: "person")!, name: "MR.Mohamed", price: "4500EGP", subject: "Math Subject"),InstractorModel(image: UIImage(named: "person")!, name: "MR.Mohamed", price: "4500EGP", subject: "Math Subject")]
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.layer.cornerRadius = 50
        backBtnOutlet.layer.cornerRadius = 8
        confirmBtnOutlet.layer.cornerRadius = 8
        
        registerCollectionViews()
    }
    
    //MARK: - Helper Functions
    func registerCollectionViews() {
        collectionView.register(UINib(nibName: "InstractorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "InstractorCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
    }
    
    //MARK: - Action Buttons
    
    @IBAction func confirmBtnPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController")
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        vc.modalPresentationStyle = .fullScreen
        //vc.modalTransitionStyle = .coverVertical
        present(vc, animated: true)
        
    }
    
}


extension TeachersViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return instractorModelArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InstractorCollectionViewCell", for: indexPath) as! InstractorCollectionViewCell
        let model = instractorModelArray[indexPath.row]
        cell.setUp(image: model.image, name: model.name, price: model.price, subject: model.subject)
        return cell
    }
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //arr.append(instractorModelArray[indexPath.row].name)
        let cell = collectionView.cellForItem(at: indexPath) as! InstractorCollectionViewCell
        //cell.layer.borderWidth = 2.0
        //cell.layer.borderColor = UIColor.systemGreen.cgColor
        //cell.layer.cornerRadius = 8
        
        cell.instracorView.layer.cornerRadius = 8
        cell.instracorView.layer.borderWidth = 1
        cell.instracorView.layer.borderColor = UIColor.systemGreen.cgColor
        
        cell.ckeckView.backgroundColor = .green
        cell.clipsToBounds = true
        cell.checkBtnOutlet.setTitle("Booked", for: .normal)
        cell.checkBtnOutlet.setImage(UIImage(systemName: "checkmark.message"), for: .normal)
        
        count += 1
        print(count)
        cell.counterView.isHidden = false
        
        cell.counterLbl?.text = "\(count)"
        //collectionView.reloadData()
        
        
                
        
    }

}


extension TeachersViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.width
        let height = collectionView.frame.height
        
        return CGSize(width: width / 2 - 5, height: height/2.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    
}


