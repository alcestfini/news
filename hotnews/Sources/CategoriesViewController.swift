import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var businessCategory: UILabel!
    @IBOutlet weak var entertainmentCategory: UILabel!
    @IBOutlet weak var scienceCategory: UILabel!
    @IBOutlet weak var healthCategory: UILabel!
    @IBOutlet weak var techCategory: UILabel!
    @IBOutlet weak var sportsCategory: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let businessCat = CategoryTapGesture(target: self, action: #selector(CategoriesViewController.openBusinessCategory))
        businessCategory.isUserInteractionEnabled = true
        businessCat.category = "business"
        businessCategory.addGestureRecognizer(businessCat)
        
        let eantertainmentCat = CategoryTapGesture(target: self, action: #selector(CategoriesViewController.openEntertainmentCategory))
        entertainmentCategory.isUserInteractionEnabled = true
        eantertainmentCat.category = "entertainment"
        entertainmentCategory.addGestureRecognizer(eantertainmentCat)
        
        let scienceCat = CategoryTapGesture(target: self, action: #selector(CategoriesViewController.openScienceCategory))
        scienceCategory.isUserInteractionEnabled = true
        scienceCat.category = "science"
        scienceCategory.addGestureRecognizer(scienceCat)
        
        let healthCat = CategoryTapGesture(target: self, action: #selector(CategoriesViewController.openHealthCategory))
        healthCategory.isUserInteractionEnabled = true
        healthCat.category = "health"
        healthCategory.addGestureRecognizer(healthCat)
        
        let techCat = CategoryTapGesture(target: self, action: #selector(CategoriesViewController.openTechCategory))
        techCategory.isUserInteractionEnabled = true
        techCat.category = "technology"
        techCategory.addGestureRecognizer(techCat)
        
        let sportsCat = CategoryTapGesture(target: self, action: #selector(CategoriesViewController.openSportsCategory))
        sportsCategory.isUserInteractionEnabled = true
        sportsCat.category = "sports"
        sportsCategory.addGestureRecognizer(sportsCat)
    }
    @objc func openBusinessCategory(sender:CategoryTapGesture) {
            let changePass = SourceViewController()
        changePass.category = sender.category
            changePass.modalPresentationStyle = .fullScreen
            self.present(changePass, animated: true, completion: nil)
    }
    @objc func openEntertainmentCategory(sender:CategoryTapGesture) {
        let changePass = SourceViewController()
        changePass.category = sender.category
        changePass.modalPresentationStyle = .fullScreen
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openScienceCategory(sender:CategoryTapGesture) {
        let changePass = SourceViewController()
        changePass.category = sender.category
        changePass.modalPresentationStyle = .fullScreen
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openHealthCategory(sender:CategoryTapGesture) {
        let changePass = SourceViewController()
        changePass.category = sender.category
        changePass.modalPresentationStyle = .fullScreen
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openTechCategory(sender:CategoryTapGesture) {
        let changePass = SourceViewController()
        changePass.category = sender.category
        changePass.modalPresentationStyle = .fullScreen
        self.present(changePass, animated: true, completion: nil)
    }
    @objc func openSportsCategory(sender:CategoryTapGesture) {
        let changePass = SourceViewController()
        changePass.category = sender.category
        changePass.modalPresentationStyle = .fullScreen
        self.present(changePass, animated: true, completion: nil)
    }
    
}
