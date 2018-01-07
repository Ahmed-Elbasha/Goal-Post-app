//
//  UIViewControllerExtension.swift
//  Post-Goal
//
//  Created by Ahmed Elbasha on 1/6/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition =  CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.03
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
    
}
