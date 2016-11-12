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
        topView.backgroundColor = UIColor.blue
        
        let bottomLeftView = UIView()
        bottomLeftView.backgroundColor = UIColor.yellow
        
        let bottomRightView = UIView()
        bottomRightView.backgroundColor = UIColor.gray
        
        self.view.addSubview(topView)
        self.view.addSubview(bottomLeftView)
        self.view.addSubview(bottomRightView)
        
        
        topView.snp.makeConstraints { (make) -> Void in
            make.top.left.right.equalTo(0)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
        }
        
        bottomLeftView.snp.makeConstraints { (make) -> Void in
            make.left.bottom.equalTo(0)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
            make.width.equalTo(self.view.snp.width).multipliedBy(0.5)
        }
        
        bottomRightView.snp.makeConstraints { (make) -> Void in
            make.right.bottom.equalTo(0)
            make.width.equalTo(self.view.snp.width).multipliedBy(0.5)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
        }
        
        // Add the buttons
        let arashBtn = UIButton()
        arashBtn.setTitle("Arash Z. Jahangiri", for: UIControlState())
        arashBtn.setTitleColor(UIColor.white, for: UIControlState())
        arashBtn.backgroundColor = UIColor.red
        arashBtn.addTarget(self, action: #selector(ViewController.arashBtnAction), for: UIControlEvents.touchUpInside)
        topView.addSubview(arashBtn)
        
        let portfolioBtn = UIButton()
        portfolioBtn.setTitle("Portfolio", for: UIControlState())
        portfolioBtn.setTitleColor(UIColor.white, for: UIControlState())
        portfolioBtn.backgroundColor = UIColor.red
        portfolioBtn.addTarget(self, action: #selector(ViewController.portfolioBtnAction), for: UIControlEvents.touchUpInside)
        bottomRightView.addSubview(portfolioBtn)
        
        let resumeBtn = UIButton()
        resumeBtn.setTitle("Resume", for: UIControlState())
        resumeBtn.setTitleColor(UIColor.white, for: UIControlState())
        resumeBtn.backgroundColor = UIColor.red
        resumeBtn.addTarget(self, action: #selector(ViewController.resumeBtnAction), for: UIControlEvents.touchUpInside)
        bottomLeftView.addSubview(resumeBtn)
        
        // And some constraints to center the buttons inside their containers
        arashBtn.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(topView.snp.centerX)
            make.centerY.equalTo(topView.snp.centerY)
            //make.width.equalTo(self.view.snp.width).multipliedBy(0.5)
            make.width.greaterThanOrEqualTo(50)
            make.height.equalTo(50)
        }
        
        portfolioBtn.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(bottomRightView.snp.centerX)
            make.centerY.equalTo(bottomRightView.snp.centerY)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
        
        resumeBtn.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(bottomLeftView.snp.centerX)
            make.centerY.equalTo(bottomLeftView.snp.centerY)
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
        let alert = UIAlertController(title: "Arash Z.J.", message: "Please rotate your device", preferredStyle: UIAlertControllerStyle.alert)
        let yesAction = UIAlertAction(title: "Got it", style: .default) { (action) -> Void in
            print("okay.")
        }
        // Add Actions
        alert.addAction(yesAction)
        // Show Alert View
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func portfolioBtnAction(){
        let alert = UIAlertController(title: "Portfolio", message: "Icy monkey\n LastSecond\n 7Sobh\n Advisors\n HealthCloud\n Peykart\n Yarima\n Pelake Bahari\n MCI.ir\n Peymooneh\n Persian Calendar\n  iAryanDictionary\n DoublePizza", preferredStyle: UIAlertControllerStyle.alert)
        let yesAction = UIAlertAction(title: "Got it", style: .default) { (action) -> Void in
            print("okay.")
        }
        // Add Actions
        alert.addAction(yesAction)
        // Show Alert View
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func resumeBtnAction(){
        let alert = UIAlertController(title: "Resume", message: "My Resume is on Portfolio", preferredStyle: UIAlertControllerStyle.alert)
        let yesAction = UIAlertAction(title: "Got it", style: .default) { (action) -> Void in
            print("okay.")
        }
        // Add Actions
        alert.addAction(yesAction)
        // Show Alert View
        self.present(alert, animated: true, completion: nil)
        
    }
}

