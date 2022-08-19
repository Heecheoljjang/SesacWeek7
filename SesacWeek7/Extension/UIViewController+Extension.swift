//
//  UIViewController+Extension.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/18.
//

import UIKit

extension UIViewController {
    
    func transitionViewController<T: UIViewController>(storyboard: String, viewController vc: T) {
        
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        guard let controller = sb.instantiateViewController(identifier: String(describing: vc)) as? T else { return }
        
        controller.modalPresentationStyle = .overFullScreen
        self.present(controller, animated: true)
        
    }
    
}
