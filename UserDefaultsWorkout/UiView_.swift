//
//  UiView_.swift
//  UserDefaultsWorkout
//
//  Created by Yawo Echitey on 3/27/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

@IBDesignable
class UiView_: UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

}
