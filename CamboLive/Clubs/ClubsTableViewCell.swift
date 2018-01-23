//
//  ClubsTableViewCell.swift
//  CamboLive
//
//  Created by brst on 1/17/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit

class ClubsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var collView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
       collView.dataSource = self;
        collView.delegate = self
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        layout.minimumLineSpacing = 0
//        collView!.collectionViewLayout = layout
      
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section:Int) -> Int
    {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)  -> UICollectionViewCell
    {
        let Collectioncell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for : indexPath) as! ClubsCollectionViewCell
        return Collectioncell
    }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ClubsTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collView.bounds.size.width/3.0, height: collView.bounds.size.height)
    }
        
        
        
    }


