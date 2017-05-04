//
//  UIViewExtensions.swift
//  UOHelpers
//
//  Created by Jonathan  Silva on 04/05/17.
//  Copyright © 2017 Uroboros Studios. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    public var circle: UIView {
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
        return self
    }
    
    // USE this extension class when circular edges doesn't apply correctly in UIView
    // Normaly apply to larger sizes of UIView
    public var title: UIView {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        return self
    }
    
    public func getViewsByTag(tag:Int) -> Array<UIView?>{
        return subviews.filter { ($0 as UIView).tag == tag } as [UIView]
    }
}

public extension UIViewController {
    public func showAlertOk(title t:String?,message m:String,okTitle:String, callback: ((UIAlertAction)->())?) {
        let alert = UIAlertController(title: t, message: m, preferredStyle: .alert)
        let ok = UIAlertAction(title: okTitle, style: .default, handler: callback)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    public func showAlertOptions(title t:String?,message m:String,okTitle:String,cancelTitle:String, Okcallback: ((UIAlertAction)->())?,Cancelcallback: ((UIAlertAction)->())?) {
        let alert = UIAlertController(title: t, message: m, preferredStyle: .alert)
        let ok = UIAlertAction(title: okTitle, style: .default, handler: Okcallback)
        let cancel = UIAlertAction(title: cancelTitle, style: .default, handler: Cancelcallback)
        alert.addAction(ok)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
}
