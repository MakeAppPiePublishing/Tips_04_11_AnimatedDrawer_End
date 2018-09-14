//
//  ViewController.swift
//  AnimatedDrawer
//
//
//  An exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UIViewController {
    private var isOpen = true //The state of the drawer
    @IBOutlet weak var drawerTrailingConstriant: NSLayoutConstraint!
    @IBOutlet weak var drawer: UIView!
    
    //toggle the state of the drawer
    @IBAction func openCloseDrawer(_ sender: UIButton) {
        if isOpen{
            let animation = UIViewPropertyAnimator(duration: 1.0, dampingRatio: 0.2) {
                self.closedDrawer()
            }
            animation.startAnimation()
        }else{
            let animation = UIViewPropertyAnimator(duration: 1.0, dampingRatio: 0.85) {
                self.openedDrawer()
            }
            animation.startAnimation()
        }
    }
    
    // Code the state of the drawer here.
    func closedDrawer(){
        drawer.alpha = 0.0
        isOpen = false
        drawerTrailingConstriant.constant = -(drawer.frame.width)
        view.layoutIfNeeded()
    }
    
    func openedDrawer(){
        drawer.alpha = 1.0
        isOpen = true
        drawerTrailingConstriant.constant = 0
        view.layoutIfNeeded()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Start with a closed drawer
        closedDrawer()
    }


}

