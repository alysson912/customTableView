//
//  CustomTableViewCell.swift
//  PrimeiroProjetoTabBar
//
//  Created by ALYSSON MENEZES on 10/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userTitleLabel: UILabel!
    
    static let identifier : String = "CustomTableViewCell" // SEMPRE usar id com mesmo nome da classe
    
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(_ data : Pessoa){
        userImageView.image = data.image
        userTitleLabel.text = data.nome
        
        
    }
    
}
