//
//  Account.swift
//  test4
//
//  Created by Huy vu on 28/8/24.
//

import UIKit

class Account: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var des: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // Làm cho ảnh tròn bằng cách thiết lập cornerRadius cho 1 nửa chiều rộng của UIImageView
        img.layer.cornerRadius = img.frame.size.width / 2
        img.layer.masksToBounds = true
        
        // Thiết lập thuộc tính clipsToBounds cho UIImageView để đảm bảo ảnh không thò ra ngoài vòng bo
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
