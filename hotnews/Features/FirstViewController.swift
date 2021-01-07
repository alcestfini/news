//
//  FirstViewController.swift
//  hotnews
//
//  Created by Seraphina Tatiana   on 07/01/21.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var businessCategory: UILabel!
    @IBOutlet weak var entertainmentCategory: UILabel!
    @IBOutlet weak var scienceCategory: UILabel!
    @IBOutlet weak var healthCategory: UILabel!
    @IBOutlet weak var techCategory: UILabel!
    @IBOutlet weak var sportsCategory: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let businessCat = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.openBusinessCategory))
        businessCategory.isUserInteractionEnabled = true
        businessCategory.addGestureRecognizer(businessCat)
        
        let eantertainmentCat = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.openEntertainmentCategory))
        entertainmentCategory.isUserInteractionEnabled = true
        entertainmentCategory.addGestureRecognizer(eantertainmentCat)
        
        let scienceCat = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.openScienceCategory))
        scienceCategory.isUserInteractionEnabled = true
        scienceCategory.addGestureRecognizer(scienceCat)
        
        let healthCat = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.openHealthCategory))
        healthCategory.isUserInteractionEnabled = true
        healthCategory.addGestureRecognizer(healthCat)
        
        
        let techCat = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.openTechCategory))
        techCategory.isUserInteractionEnabled = true
        techCategory.addGestureRecognizer(techCat)
        
        let sportsCat = UITapGestureRecognizer(target: self, action: #selector(FirstViewController.openSportsCategory))
        sportsCategory.isUserInteractionEnabled = true
        sportsCategory.addGestureRecognizer(sportsCat)
    }
    @objc func openBusinessCategory(sender:UITapGestureRecognizer) {
            let changePass = BusinessCategoryViewController()
            
            changePass.modalPresentationStyle = .fullScreen
            
            self.present(changePass, animated: true, completion: nil)
    }
    @objc func openEntertainmentCategory(sender:UITapGestureRecognizer) {
        let changePass = EntertainmentViewController()
        
        changePass.modalPresentationStyle = .fullScreen
        
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openScienceCategory(sender:UITapGestureRecognizer) {
        let changePass = ScienceViewController()
        
        changePass.modalPresentationStyle = .fullScreen
        
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openHealthCategory(sender:UITapGestureRecognizer) {
        let changePass = HealthViewController()
        
        changePass.modalPresentationStyle = .fullScreen
        
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openTechCategory(sender:UITapGestureRecognizer) {
        let changePass = TechnologyViewController()
        
        changePass.modalPresentationStyle = .fullScreen
        
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openSportsCategory(sender:UITapGestureRecognizer) {
        let changePass = TechnologyViewController()
        
        changePass.modalPresentationStyle = .fullScreen
        
        self.present(changePass, animated: true, completion: nil)
    }
    
}
