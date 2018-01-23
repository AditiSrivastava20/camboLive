//
//  ClubsViewController.swift
//  CamboLive
//
//  Created by brst on 1/17/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit

class ClubsViewController: UIViewController {

    @IBOutlet var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BarsClubs(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func liveMusic(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LiveMusicViewController") as! LiveMusicViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showDetails(_ sender: Any) {
    }
    @IBAction func homeVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func commentVc(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CommentsViewController") as! CommentsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
extension ClubsViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 6
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! ClubsTableViewCell
    
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 300
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         self.performSegue(withIdentifier: "clubsDetails", sender: self)
    }
        
    }

   
    




