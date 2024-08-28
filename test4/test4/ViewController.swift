//
//  ViewController.swift
//  test4
//
//  Created by Huy vu on 28/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Table_view: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Table_view.register(UINib(nibName: "Account", bundle: nil), forCellReuseIdentifier: "cell")

        //Để sử dụng UITableViewDataSource
        Table_view.dataSource = self
        Table_view.delegate = self
        
    }
  
  
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Account
        cell.title.text = "Huy"
        cell.des.text = "Vu"
        return cell
    }
    
    
    
}


extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }
}
