//
//  CustomTableViewCell.swift
//  PrimeiroAppTableView
//
//  Created by ALYSSON MENEZES on 09/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageVIew: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    static let identifier : String = "CustomTableViewCell" // SEMPRE usar id com mesmo nome da classe
    
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
