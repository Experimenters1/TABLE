//
//  ViewController.swift
//  test2
//
//  Created by Huy vu on 26/8/24.
//

import UIKit

class ViewController: UIViewController {
    var names: [[String]] =
           [
               ["Tí", "Tèo", "Hùng", "Lam", "Thuỷ", "Tuấn", "Trung", "Hạnh"],
               ["Bình", "Khánh", "Toàn", "Tâm", "An", "Hương", "Huy", "Quang", "Vân", "Đài", "Tiến"]
       ]
    
    var titles: [String] = ["iOS", "Android"]
    
    
    @IBOutlet weak var tableview1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview1.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        //delegate & datasouce
         tableview1.delegate = self
         tableview1.dataSource = self
        
    }


}


//Bước 3: Load cell
//Tạo 1 extension cho HomeViewController và implement 2 protocol là:
//UITableViewDelegate
//UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Có bao nhiêu phần tử cần hiển thị cho từng danh sách?
        return names[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // Thêm title cho mỗi section
        return titles[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Tạo và trả về cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Xử lý khi người dùng chọn vào một cell
        print("Selected cell: \(names[indexPath.section][indexPath.row])")
    }
    
    
}
