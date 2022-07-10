//
//  TableViewCell.swift
//  TableViewNavApp
//
//  Created by Kesh Gurung on 6/07/2022.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var imageLabel: UIImageView!
    
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var indexLabel: UILabel!
    
//    var slideVal : String?
    func configure(imageStr: String, indexPath: IndexPath){
        self.imageLabel.image = UIImage(named: imageStr)
        self.indexLabel.text = "IndexPath: \(indexPath)"
     
        
    }
    
  
    
    @IBAction func SliderValueChange(_ sender: UISlider) {
       let slideVal = "Value: \(String(Int(sender.value)))"
        sliderValueLabel.text = slideVal
    }
    
    
    @IBAction func ViewDetailsButtonPressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "goToDetail", sender: self)
        
    }
}
