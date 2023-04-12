//
//  ResultViewController.swift
//  MenuCardTableView
//
//  Created by sakshi on 09/01/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageUIImage: UIImageView!
    @IBOutlet weak var priceUILabel: UILabel!
    
    var foodPriceStr = 0
    var foodImageStr = ""
    
    override func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        priceUILabel.text = "\(foodPriceStr)"
        imageUIImage.image = UIImage(named: foodImageStr)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
}
