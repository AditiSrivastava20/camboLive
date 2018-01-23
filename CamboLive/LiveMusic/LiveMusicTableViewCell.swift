//
//  LiveMusicTableViewCell.swift
//  CamboLive
//
//  Created by brst on 1/18/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit

class LiveMusicTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var liveMusicCollView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        liveMusicCollView.dataSource = self;
        liveMusicCollView.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            
            return 3
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let Collectioncell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell2", for : indexPath) as! LiveMusicCollectionViewCell
            return Collectioncell
        }
      
    
      

}
    extension LiveMusicTableViewCell: UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            return CGSize(width: liveMusicCollView.bounds.size.width/3.0, height: liveMusicCollView.bounds.size.height)
        }
        
        
        
}


