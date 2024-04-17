//
//  ViewController.swift
//  Task E-Ramo
//
//  Created by Mohamed on 16/04/2024.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtnOutlet: UIButton!
    

    
    @IBOutlet weak var headerView: UIView!
    
    var arr: [String] = []
    
    var subjectName = ["Math", "English", "Biology", "France", "History", "Geography", "Chemistry", "France"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCollectionViews()
        nextBtnOutlet.layer.cornerRadius = 8
        
        headerView.layer.cornerRadius = 50
        
    }
    
    func registerCollectionViews() {
        collectionView.register(UINib(nibName: "SubjectCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SubjectCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
 
    }
    
    
    //MARK: - Actions Buttons
    @IBAction func nextTappedBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TeachersViewController")
        navigationController?.pushViewController(vc, animated: true)
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
    }
    
    
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subjectName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubjectCollectionViewCell", for: indexPath) as! SubjectCollectionViewCell
        cell.subjectName.text = subjectName[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arr.append(subjectName[indexPath.row])
        let cell = collectionView.cellForItem(at: indexPath) as! SubjectCollectionViewCell
        cell.layer.borderWidth = 2.0
        cell.layer.borderColor = UIColor.systemGreen.cgColor
        cell.layer.cornerRadius = 8
        cell.shadowView.isHidden = false
        cell.shadowView.layer.opacity = 0.2
        cell.shadowView.backgroundColor = .green
        cell.markLbl.isHidden = false    
        
    }

}


extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.width
        let height = collectionView.frame.height
        
        return CGSize(width: width / 2 - 5, height: height/3)
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


