//
//  ViewController.swift
//  test1
//
//  Created by Huy vu on 26/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var names: [String] = ["Tí",
                              "Tèo",
                              "Hùng",
                              "Lam",
                              "Thuỷ",
                              "Tuấn",
                              "Trung",
                              "Hạnh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
            //register cell
            tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
               //delegate & datasouce
                tableview.delegate = self
                tableview.dataSource = self
    }


}

//Bước 3: Load cell
//Tạo 1 extension cho HomeViewController và implement 2 protocol là:
//UITableViewDelegate
//UITableViewDataSource
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int { //Có bao nhiêu danh sách cần hiển thị?
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // Có bao nhiêu phần tử cần hiển thị có từng danh sách?
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Tôi cần 1 cell, ông Controller cho tôi loại cell nào đây? Tôi có thứ tự của cell là indexPath
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //người dùng vừa chọn vào cell của tao (TableView), ta báo cho mi
        print("selected cell: \(names[indexPath.row])")
    }
    
}
