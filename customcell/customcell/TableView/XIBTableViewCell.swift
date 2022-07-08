//
//  XIBTableViewCell.swift
//  customcell
//
//  Created by Kesh Gurung on 08/07/2022.
//

import UIKit

class XIBTableViewCell: UITableViewCell {

    
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var ButtonLabel: UIButton!
    @IBOutlet weak var SLider: UISlider!
    
    func configure(imageStr: String, indexPath: IndexPath){
        self.ImageView.image = UIImage(named: imageStr)
        self.TextLabel.text = "IndexPath: \(indexPath)"
        self.ButtonLabel.backgroundColor = .systemCyan
    }
    
    @IBAction func ViewDetailsButtonPressed(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "DetailView") as? DetailViewController else { return }
        
        vc.imageStr = "m1"
//        vc.indexPath = IndexPath
        vc.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func SliderValueChange(_ sender: UISlider) {
    }
}
