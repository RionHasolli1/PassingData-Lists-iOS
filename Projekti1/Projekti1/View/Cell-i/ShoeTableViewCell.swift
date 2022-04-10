//
//  ShoeTableViewCell.swift
//  Projekti1
//
//  Created by Rion on 31.3.22.
//

import UIKit

class ShoeTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel1: UILabel!
    @IBOutlet weak var cellLabel2: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDetails(shoeobj:Shoe){
        
        
        imageView1.image = UIImage(named: shoeobj.image ?? "")
        cellLabel2.text = "\(shoeobj.title ?? "")"
        cellLabel1.text = "\(shoeobj.price ?? 0) €"
    }
    
}


