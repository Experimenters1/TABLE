//
//  TableViewCell.swift
//  TABLE
//
//  Created by huy on 18/04/2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let heigh_cell: CGFloat = 96
    @IBOutlet weak var desLb: UILabel!
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setInfoCell(info: [String: Any]){
        titleLb.text = info["title"] as? String
    }
    
}
