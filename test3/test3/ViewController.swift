//
//  ViewController.swift
//  test3
//
//  Created by Huy vu on 27/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    //Mảng để cho myTableView hiển thị
       let array = [ MenuItem(name: "Cà ri massaman (Thái Lan)", country: "Thái Lan"),
                     MenuItem(name: "Pizza ở Napoli (Italia)", country: "Italia"),
                     MenuItem(name: "Socola (Mexico)", country: "Mexico"),
                     MenuItem(name: "Sushi (Nhật Bản)", country: "Nhật Bản"),
                     MenuItem(name: "Vịt quay (Trung Quốc)", country: "Trung Quốc"),
                     MenuItem(name: "Hamburger (Đức)", country: "Đức"),
                     MenuItem(name: "Penang assam laksa (Malaysia)", country: "Malaysia"),
                     MenuItem(name: "Tom yum goong (Thái Lan)", country: "Thái Lan"),
                     MenuItem(name: "Kem (Mỹ)", country: "Mỹ"),
                     MenuItem(name: "Gà Muamba (Gabon Châu Phi)", country: "Gabon Châu Phi"),
       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "mycell")

        //Để sử dụng UITableViewDataSource
        myTableView.dataSource = self
        myTableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "mycell",for: indexPath)
            
        let item = array[indexPath.row]
            
            //Đây là các thuộc tính mặc định của cell có Style là Subtitle
            
            cell.textLabel?.text = item.name
            cell.detailTextLabel?.text = item.country
//            cell.textLabel?.text = "Dòng \(indexPath.row)"
            return cell
            
        
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // In ra giá trị của cell khi nhấn vào
                let selectedItem = array[indexPath.row]
        print("you tapped me : \(selectedItem.name) với : \(selectedItem.country)")
        print(indexPath.row)
    }
}
