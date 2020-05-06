//
//  DET.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 2/12/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import Foundation
import UIKit
class DET: UIView{

override func layoutSubviews() {
    self.clipsToBounds = true
    self.isMultipleTouchEnabled = false
    self.contentMode = .scaleToFill
    self.isUserInteractionEnabled = false
}
}
