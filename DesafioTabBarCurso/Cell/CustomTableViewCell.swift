//
//  CustomTableViewCell.swift
//  DesafioTabBarCurso
//
//  Created by user218997 on 25/10/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        nameLabel.textColor = .white
        userImageView.tintColor = .opaqueSeparator
        contentView.backgroundColor = .black
    }

    public func setupCell(profile: Profile) {
        userImageView.image = profile.photo
        nameLabel.text = profile.name
    }
  
}
