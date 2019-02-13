//
//  MyCollectionViewCell.swift
//  The Bake Shop
//
//  Created by Jamario Davis on 2/1/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var pictureImgView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        
        pictureImgView.layer.cornerRadius = 5
        pictureImgView.clipsToBounds = true
    }
}
