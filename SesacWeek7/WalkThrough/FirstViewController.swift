//
//  FirstViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myViewWidth: NSLayoutConstraint!
    @IBOutlet weak var starImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starImageView.image = UIImage(systemName: "star.fill")

        myLabel.numberOfLines = 0
        myLabel.font = .boldSystemFont(ofSize: 25)
        myLabel.text = """
        바보바보바보야
        하이하이
        """

        myView.backgroundColor = .black
        
        myLabel.alpha = 0
        myView.alpha = 0
        
        animateImageView()
        
//        UILabel.animate(withDuration: 3) {
//            self.myLabel.alpha = 1
//        } completion: { _ in
//            self.myLabel.text = "끝!"
//        }
//
    }
    
    func myViewAnimation() {
        UIView.animate(withDuration: 2) {
            self.myView.alpha = 1
        } completion: { _ in
            self.myView.backgroundColor = .systemTeal
        }

    }
    
    func animateImageView() {
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.starImageView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }

    }
    
}
