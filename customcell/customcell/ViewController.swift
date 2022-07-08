//
//  ViewController.swift
//  customcell
//
//  Created by Kesh Gurung on 08/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.TableView.backgroundColor = .systemPink
        self.TableView.dataSource = self
        
//        register cell
        self.TableView.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "XIBTableViewCell")
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section: \(section)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell", for: indexPath) as? XIBTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(imageStr: "m1", indexPath: indexPath)
        return cell
    }
     
}
