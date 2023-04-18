//
//  ViewController.swift
//  TABLE
//
//  Created by huy on 18/04/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var listData = [[String: Any]]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sdfsdfsdf", for: indexPath) as! TableViewCell
        //cell.setInfoCell(info: listData[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TableViewCell.heigh_cell
    }

    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "sdfsdfsdf")
    }


}

