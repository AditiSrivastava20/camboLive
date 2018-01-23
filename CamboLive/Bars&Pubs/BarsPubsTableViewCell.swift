//
//  BarsPubsTableViewCell.swift
//  CamboLive
//
//  Created by brst on 1/18/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit


class BarsPubsTableViewCell: UITableViewCell  {
  

    
    @IBOutlet var barTypeLbl: UILabel!
    @IBOutlet var priceLbl: UILabel!
    @IBOutlet var openHoursLbl: UILabel!
    @IBOutlet var distanceLbl: UILabel!
    @IBOutlet var barTypeImg: UIImageView!
   
    var statusBarHidden = false
    @IBOutlet var BarsCollView: UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
     
        // Initialization code
    }

   
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}



