//
//  RoundedImageView.swift
//  msv-test
//
//  Created by HoangTV on 8/23/16.
//  Copyright © 2016 HoangTV. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
}
