//
//  CommentsViewController.swift
//  CamboLive
//
//  Created by brst on 1/18/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet var txtView: UITextView!
    @IBOutlet var lblMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func homeVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ClubsDetailsViewController") as! ClubsDetailsViewController
//        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    /*
    // MARK: - Navigation

     @IBAction func Back(_ sender: Any) {
     }
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension CommentsViewController: UITextViewDelegate {
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        lblMessage.isHidden = true
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        return true
    }
    func textViewDidChange(_ textView: UITextView) {
//        if textView.text == ""{
//            lblMessage.isHidden = false
//        }
//        else{
//             lblMessage.isHidden = true
//        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == ""{
            lblMessage.isHidden = false
        }
        else{
            lblMessage.isHidden = true
        }
    }
    
}
extension CommentsViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
