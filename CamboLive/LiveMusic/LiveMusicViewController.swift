//
//  LiveMusicViewController.swift
//  CamboLive
//
//  Created by brst on 1/18/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit

class LiveMusicViewController: UIViewController {

    @IBOutlet var livemusictblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func barpubs(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func clubs(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ClubsViewController") as! ClubsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func sortBy(_ sender: Any) {
    }
    @IBAction func COMMENTvc(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CommentsViewController") as! CommentsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func homeVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension LiveMusicViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 6
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell2", for: indexPath) as! LiveMusicTableViewCell
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
        
    }
    
    
    
}



