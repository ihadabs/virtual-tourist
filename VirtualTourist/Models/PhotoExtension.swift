//
//  PhotoExtension.swift
//  VirtualTourist
//
//  Created by Hadi Albinsaad on 23/10/2018.
//  Copyright © 2018 Hadi. All rights reserved.
//

import UIKit


extension Photo {
    
    func set(image: UIImage) {
        self.image = image.pngData()
    }
    
    func getImage() -> UIImage? {
        return (image == nil) ? nil : UIImage(data: image!)
    }

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}

