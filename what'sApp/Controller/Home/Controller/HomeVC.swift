//
//  HomeVC.swift
//  what'sApp
//
//  Created by Asir Ahmed on 25/2/24.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var segmentOptions: UISegmentedControl! {
        didSet {
            
        }
    }
    
    @IBOutlet weak var homeCollectionView: UICollectionView! {
        didSet {
            self.homeCollectionView.register(HomeCollectionCell.nib(), forCellWithReuseIdentifier: HomeCollectionCell.identifier)
            
            self.homeCollectionView.dataSource = self //HomeVC\
            self.homeCollectionView.delegate = self
            
//            self.homeCollectionView.isScrollEnabled = false
        }
    }
    
    
    struct OptionType {
        let name: String
        let icon: String
    }
    
    private var options = [OptionType]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.getOption()
    }
    
    private func getOption() {
        
        let option1 = OptionType(name: "Groups", icon: "camera.fill")
        let option2 = OptionType(name: "Chats", icon: "camera.fill")
        let option3 = OptionType(name: "Updates", icon: "camera.fill")
        let option4 = OptionType(name: "Calls", icon: "camera.fill")
        
        self.options = [option1, option2, option3, option4]
        
        self.homeCollectionView.reloadData()
    }
    
    
    private func goToPage(index: Int) {
        
        let indexPath = IndexPath(item: index, section: 0)
        
        self.homeCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    
    
    @IBAction func optionSegmentActions(_ sender: UISegmentedControl) {
        
        self.goToPage(index: sender .selectedSegmentIndex)
        

    }
}



extension HomeVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.options.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionCell.identifier, for: indexPath) as! HomeCollectionCell
        
        let option = self.options[indexPath.item]
        cell.configure(name: option.name)
        
        return cell
    }
}


extension HomeVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.view.frame.size.width
        
        let height: CGFloat = self.view.frame.size.height - 120
        
        return CGSize(width: width, height: height)
//        return self.homeCollectionView.frame.size
    }
}
