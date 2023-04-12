//
//  ViewController.swift
//  MenuCardTableView
//
//  Created by sakshi on 06/01/23.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    let foodItemOrderNumber = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
     let foodItemList = ["Pani Puri","Aloo Tikki", "Kathi Roll", "Pav Bhaji", "Vada Pav", "Chole Bhature", "Biryani", "Paratha","Palak Paneer", "Gulab Jamun"]
     let priceList = [20, 30, 40, 60, 20, 100, 150, 65, 190, 40]
     let foodItemImageList = ["panipuri","tikki", "roll", "pavbhaji", "vadapav", "bhature", "biryani", "paratha","palakpaneer", "gulabjamun"]
      
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItemList.count
    }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodItemList", for: indexPath)
        cell.textLabel?.text = foodItemList[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let main = UIStoryboard(name: "Main", bundle: .none)
        let result = main.instantiateViewController(withIdentifier: "ResultViewController")  as! ResultViewController
        self.navigationController?.pushViewController(result, animated: true)
        //self.present(result, animated: true, completion: nil)
        let foodPrice = priceList[indexPath.row]
        result.foodPriceStr = foodPrice
        let foodImage = foodItemImageList[indexPath.row]
        result.foodImageStr = foodImage
    }
}

