//
//  DetailViewController.swift
//  customcell
//
//  Created by Kesh Gurung on 08/07/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var ImageLabel: UIImageView!
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var detailDismissButton: UIButton!
    
    var imageStr: String?
    var indexPath: IndexPath?
    
//    func configure(imageStr: String, indexPath: IndexPath){
//        self.ImageView.image = UIImage(named: imageStr)
//        self.TextLabel.text = "IndexPath: \(indexPath)"
//        self.ButtonLabel.backgroundColor = .systemCyan
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.ImageLabel.image = UIImage(named: imageStr ?? "")
        self.TextLabel.text = "IndexPath: \(indexPath)"
    }
   
    @IBAction func detailDismissedButtonPressed(_ sender: UIButton){
}
}
