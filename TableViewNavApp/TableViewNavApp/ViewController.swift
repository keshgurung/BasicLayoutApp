//
//  ViewController.swift
//  TableViewNavApp
//
//  Created by Kesh Gurung on 6/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var indexValue = "0.1"
    var imgName = "m1"


    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TableView.backgroundColor = .systemPink
        self.TableView.dataSource = self
        TableView.delegate = self
//        register cell
        self.TableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetail" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.indexValue = indexValue
            destinationVC.imgName = imgName
        }
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        cell.configure(imageStr: "m1", indexPath: indexPath)
        return cell
    }
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
//            self.navigationController?.pushViewController(vc, animated: true)
//        }
//    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me \(indexPath)")

        print([indexPath.row])

        indexValue = String(indexPath.row)



        self.performSegue(withIdentifier: "goToDetail", sender: self)

    }
}
