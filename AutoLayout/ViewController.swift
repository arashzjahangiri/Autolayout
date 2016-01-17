//
//  ViewController.swift
//  AutoLayout
//
//  Created by Arash Z. Jahangiri on 1/16/16.
//  Copyright © 2016 Arash. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up constraints for the superviews (Top view, Bottom left view, Bottom right view)
        let topView = UIView()
        topView.backgroundColor = UIColor.blueColor()
        
        let bottomLeftView = UIView()
        bottomLeftView.backgroundColor = UIColor.yellowColor()
        
        let bottomRightView = UIView()
        bottomRightView.backgroundColor = UIColor.grayColor()
        
        self.view.addSubview(topView)
        self.view.addSubview(bottomLeftView)
        self.view.addSubview(bottomRightView)
        
        
        topView.snp_makeConstraints { (make) -> Void in
            make.top.left.right.equalTo(0)
            make.height.equalTo(self.view.snp_height).multipliedBy(0.5)
        }
        
        bottomLeftView.snp_makeConstraints { (make) -> Void in
            make.left.bottom.equalTo(0)
            make.height.equalTo(self.view.snp_height).multipliedBy(0.5)
            make.width.equalTo(self.view.snp_width).multipliedBy(0.5)
        }
        
        bottomRightView.snp_makeConstraints { (make) -> Void in
            make.right.bottom.equalTo(0)
            make.width.equalTo(self.view.snp_width).multipliedBy(0.5)
            make.height.equalTo(self.view.snp_height).multipliedBy(0.5)
        }
        
        // Add the buttons
        let arashBtn = UIButton()
        arashBtn.setTitle("Arash Z. Jahangiri", forState: UIControlState.Normal)
        arashBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        arashBtn.backgroundColor = UIColor.redColor()
        arashBtn.addTarget(self, action: "arashBtnAction", forControlEvents: UIControlEvents.TouchUpInside)
        topView.addSubview(arashBtn)
        
        let portfolioBtn = UIButton()
        portfolioBtn.setTitle("Portfolio", forState: UIControlState.Normal)
        portfolioBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        portfolioBtn.backgroundColor = UIColor.redColor()
        portfolioBtn.addTarget(self, action: "portfolioBtnAction", forControlEvents: UIControlEvents.TouchUpInside)
        bottomRightView.addSubview(portfolioBtn)
        
        let resumeBtn = UIButton()
        resumeBtn.setTitle("Resume", forState: UIControlState.Normal)
        resumeBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        resumeBtn.backgroundColor = UIColor.redColor()
        resumeBtn.addTarget(self, action: "resumeBtnAction", forControlEvents: UIControlEvents.TouchUpInside)
        bottomLeftView.addSubview(resumeBtn)
        
        // And some constraints to center the buttons inside their containers
        arashBtn.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(topView.center)
            make.width.equalTo(self.view.snp_width).multipliedBy(0.5)
            //make.height.equalTo(topView.snp_height).multipliedBy(0.5)
            //make.width.equalTo(100)
            make.height.equalTo(50)
        }
        
        portfolioBtn.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(bottomLeftView.center)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
        
        resumeBtn.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(bottomRightView.center)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }

  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Custom methods
    func arashBtnAction(){
        let alert = UIAlertController(title: "Arash Z.J.", message: "Please rotate your device", preferredStyle: UIAlertControllerStyle.Alert)
        let yesAction = UIAlertAction(title: "Got it", style: .Default) { (action) -> Void in
            print("okay.")
        }
        // Add Actions
        alert.addAction(yesAction)
        // Show Alert View
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func portfolioBtnAction(){
        let alert = UIAlertController(title: "Portfolio", message: "Icy monkey\n LastSecond\n 7Sobh\n Advisors\n HealthCloud\n Peykart\n Yarima\n Pelake Bahari\n MCI.ir\n Peymooneh\n Persian Calendar\n  iAryanDictionary\n DoublePizza", preferredStyle: UIAlertControllerStyle.Alert)
        let yesAction = UIAlertAction(title: "Got it", style: .Default) { (action) -> Void in
            print("okay.")
        }
        // Add Actions
        alert.addAction(yesAction)
        // Show Alert View
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func resumeBtnAction(){
        let alert = UIAlertController(title: "Resume", message: "My Resume is on Portfolio", preferredStyle: UIAlertControllerStyle.Alert)
        let yesAction = UIAlertAction(title: "Got it", style: .Default) { (action) -> Void in
            print("okay.")
        }
        // Add Actions
        alert.addAction(yesAction)
        // Show Alert View
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
}

