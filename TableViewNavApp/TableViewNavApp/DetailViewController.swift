//
//  DetailViewController.swift
//  TableViewNavApp
//
//  Created by Kesh Gurung on 6/07/2022.
//

import UIKit

protocol DismissDetailDelegate: AnyObject {
    func dismissDetail()
}
class DetailViewController: UIViewController {

    var indexValue: String?
    var imgName: String?
    var delegate: DismissDetailDelegate?
    
    @IBOutlet weak var imageLabel: UIImageView!
   
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var indexLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail View"
        indexLabel.text = "Your index is: \(indexValue ?? "0")"
        self.imageLabel.image = UIImage(named: imgName ?? "m3")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DismissButton(_ sender: UIButton) {
//        dismiss(animated: true)
        self.delegate?.dismissDetail()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
