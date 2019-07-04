//
//  ViewController.swift
//  iOSAssignmentAertrip
//
//  Created by Kondya on 04/07/19.
//  Copyright © 2019 Fortune4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.segmentControl.removeAllSegments()
       
    }
    
    @IBAction func firstBtnAction(_ sender: UIButton) {
        
        self.segmentControl.removeAllSegments()
        for (index,value) in [0,1,2,3,4,5,6,7,8].enumerated() {
           
            
            if index >= 4 {
                self.segmentControl.setTitle("\(index-3)+ Stop", forSegmentAt:3)
            }else{
                 self.segmentControl.insertSegment(withTitle: "\(value) Stop", at: index, animated: true)
            }
        }
        self.segmentControl.selectedSegmentIndex = 0
        
    }
    
    @IBAction func secondBtnAction(_ sender: UIButton) {
        
        self.segmentControl.removeAllSegments()
        for (index,value) in [0,1,2].enumerated() {
            self.segmentControl.insertSegment(withTitle: "\(value) Stop", at: index, animated: true)
        }
        self.segmentControl.selectedSegmentIndex = 0
        
    }
    @IBAction func thirdBtnAction(_ sender: UIButton) {
        
        self.segmentControl.removeAllSegments()
        for (index,value) in [0,1].enumerated() {
            self.segmentControl.insertSegment(withTitle: "\(value) Stop", at: index, animated: true)
        }
        self.segmentControl.selectedSegmentIndex = 0
       
    }
    
    @IBAction func fourthBtnAction(_ sender: UIButton) {
        
        self.segmentControl.removeAllSegments()
        for (index,value) in [0].enumerated() {
            self.segmentControl.insertSegment(withTitle: "\(value) Stop", at: index, animated: true)
        }
        self.segmentControl.selectedSegmentIndex = 0
        
    }
    


}

