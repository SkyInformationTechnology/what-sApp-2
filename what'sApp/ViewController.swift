//
//  ViewController.swift
//  what'sApp
//
//  Created by Md Akash on 20/2/24.
//

import UIKit

struct chats{
    var title:String?
    var subtitle:String?
    var photo:String?
    var date:String?
    var unseenmessage:Int?
}

class ViewController: UIViewController {
  

    @IBOutlet weak var navbarLabel: UINavigationBar!
    @IBOutlet weak var segmentLabel: UISegmentedControl!
    @IBOutlet weak var tableviewLable: UITableView!
    
    var arrChat:[chats] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableviewLable.delegate = self
//        tableviewLable.dataSource = self
        
        self.tableviewLable.register(UINib(nibName: "firstTableViewCell", bundle: nil), forCellReuseIdentifier: "firstTableViewCell")
        self.tableviewLable.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
        self.tableviewLable.register(UINib(nibName: "ForthTableViewCell", bundle: nil), forCellReuseIdentifier: "ForthTableViewCell")
        
        
        arrChat.append(chats(title: "Anik", subtitle: "Hi,How are you?", photo: "images-1", date: "Yesterday", unseenmessage: 12))
        arrChat.append(chats(title: "Anik", subtitle: "Hi,How are you?", photo: "images-2", date: "Yesterday", unseenmessage: 12))
        arrChat.append(chats(title: "Anik", subtitle: "Hi,How are you?", photo: "images-3", date: "Yesterday", unseenmessage: 12))
        arrChat.append(chats(title: "Anik", subtitle: "Hi,How are you?", photo: "images-4", date: "Yesterday", unseenmessage: 12))
        arrChat.append(chats(title: "Anik", subtitle: "Hi,How are you?", photo: "images-5", date: "Yesterday", unseenmessage: 12))
        arrChat.append(chats(title: "Anik", subtitle: "Hi,How are you?", photo: "images-6", date: "Yesterday", unseenmessage: 12))
        
    }

    @IBAction func segbutonLable(_ sender: UISegmentedControl) {
        self.tableviewLable.reloadData()
        
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//        switch segmentLabel.selectedSegmentIndex{
//        case 0:
//            return firstnib.count
//        case 1:
//            return arrChat.count
//        case 2:
//            return 0
//        case 3:
//            return 0
//            
//        default:
//            break
//        }
//        
//        return 0
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    
    
    
}

