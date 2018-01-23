//
//  ViewController.swift
//  CamboLive
//
//  Created by brst on 1/16/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit
import QuartzCore


import SafariServices


class ViewController: UIViewController, SFSafariViewControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
   
    
    
//    @IBOutlet var done: UIButton!
//    @IBOutlet var cancel: UIButton!
//    @IBOutlet var pickerView: UIPickerView!
    var Array = ["SELECT CITY", "LOS ANGELES", "CALIFORNIA", "LAS VEGAS", "PHNOM PENH"]
    var PlacementAnswer = 0
    @IBOutlet var ClubBtnImage: UIButton!
    @IBOutlet var BarsPubsImage: UIButton!
    @IBOutlet var LiveMusicImage: UIButton!
    @IBOutlet var clubsImage: UIImageView!
    @IBOutlet var liveImage: UIImageView!
    @IBOutlet var barPubsImage: UIImageView!
    @IBOutlet var barpubsButton: UIButton!
    @IBOutlet var selectCity: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
  
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(doSomething))
        BarsPubsImage.addGestureRecognizer(panGesture)
        LiveMusicImage.addGestureRecognizer(panGesture)
        ClubBtnImage.addGestureRecognizer(panGesture)

//        pickerView.delegate = self
//        pickerView.dataSource = self
//        self.pickerView.isUserInteractionEnabled = false
//        self.pickerView.isHidden = true
//         done.isHidden = true
//         cancel.isHidden = true
    }
    
   
  
    
    @objc func doSomething() {
        //do something here
        if BarsPubsImage.isTouchInside {
             self.BarsPubsImage.alpha = 0.7
            BarsPubsImage.isHighlighted = true
            //Do something
        }else if LiveMusicImage.isTouchInside {
            //Do something else
            self.LiveMusicImage.alpha = 0.7
            LiveMusicImage.isHighlighted = true
        }
        else if ClubBtnImage.isTouchInside {
              self.ClubBtnImage.alpha = 0.7
            ClubBtnImage.isHighlighted = true
        }

    }
    
    @IBAction func selectCity(_ sender: Any) {
//        self.pickerView.isHidden = false
//         done.isHidden = false
//        cancel.isHidden = false
//        self.pickerView.isUserInteractionEnabled = true
//        self.pickerView.selectRow(0, inComponent: 0, animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // How many rows are there is each component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.Array.count
    }
    
    
    // title/content for row in given component
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.Array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      
        selectCity.setTitle(Array[row], for: .normal)
       
    }
    ////////////////////////////////////////
    @IBAction func cancelButton(_ sender: Any) {
//        pickerView.isHidden = true
//        done.isHidden = true
//        cancel.isHidden = true
//        selectCity.setTitle("SELECT CITY", for: .normal)
    }
    
    @IBAction func DoneButton(_ sender: Any) {
        
//         pickerView.isHidden = true
//         done.isHidden = true
//         cancel.isHidden = true
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        // dismiss image picker controller
        picker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openWithSafari(_ sender: Any) {
        
        let svc = SFSafariViewController(url: URL(string: "https://www.google.com")!)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Comments(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CommentsViewController") as! CommentsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func BarsPubs(_ sender: Any) {
//
//        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
//        }, completion: nil)
//
      
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(8/10), execute: {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
            vc.fromWhichVC = "bar"
            
            self.navigationController?.pushViewController(vc, animated: true)
            // Put your code which should be executed with a delay here
        })

        
    }
    
    @IBAction func LiveMusic(_ sender: Any) {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseOut, animations: {
            //self.liveImage.alpha = 0.6
        }, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5/10), execute: {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
            
            vc.fromWhichVC = "music"
            self.navigationController?.pushViewController(vc, animated: true)
            
        })
     //   let vc = self.storyboard?.instantiateViewController(withIdentifier: "LiveMusicViewController") as! LiveMusicViewController
       
    }
    
    @IBAction func Clubs(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
           
        }, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5/10), execute: {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
            
            vc.fromWhichVC = "club"
            self.navigationController?.pushViewController(vc, animated: true)
            
        })
     //   let vc = self.storyboard?.instantiateViewController(withIdentifier: "ClubsViewController") as! ClubsViewController
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

