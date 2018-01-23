//
//  BarsPubsViewController.swift
//  CamboLive
//
//  Created by brst on 1/18/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit



class BarsPubsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var tblTopConstraint: NSLayoutConstraint!
    
    @IBOutlet var img: UITableView!
    var fromWhichVC: String!

    @IBOutlet var leftIcon: UIImageView!
    
    @IBOutlet var rightIcon: UIImageView!
    @IBOutlet weak var postedLbl: UILabel!
    @IBOutlet weak var bgImg: UIImageView!
    @IBOutlet weak var leftLbl: UILabel!
    @IBOutlet weak var rightLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var categoryView: UIView!

    
    @IBOutlet weak var postedLblHeight: NSLayoutConstraint!
    @IBOutlet var tblView3: UITableView!
    
    var itemsArray1 = [#imageLiteral(resourceName: "dummy1"), #imageLiteral(resourceName: "dummy2"), #imageLiteral(resourceName: "dummy3")]
    var itemsArray2 = [#imageLiteral(resourceName: "dummy4"), #imageLiteral(resourceName: "dummy5"), #imageLiteral(resourceName: "dummy6")]
    var itemsArray3 = [#imageLiteral(resourceName: "dummy7"), #imageLiteral(resourceName: "dummy8"), #imageLiteral(resourceName: "dummy9")]
    
   let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    override func viewDidLoad() {
        super.viewDidLoad()
        

        label.center = CGPoint(x: 360, y: 620)
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .clear
        label.font = UIFont(name: "Lato-Bold", size: 16)
        label.text = "1 day ago"
        label.isHidden = true
        
         //MARK: Swipe Gesture
        let Rightswipe = UISwipeGestureRecognizer(target: self, action: #selector(self.SwipeGesture))
        Rightswipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(Rightswipe)
        
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
    
        if fromWhichVC == "bar" {
            titleLbl.text = "Bars & Pubs"
            leftLbl.text = "Clubs"
            rightLbl.text = "Live Music"
            bgImg.image = #imageLiteral(resourceName: "bg-bars-pubs")
            rightIcon.image = #imageLiteral(resourceName: "live-music")
            leftIcon.image = #imageLiteral(resourceName: "club")
            
        } else if fromWhichVC == "music" {
            titleLbl.text = "Live Music"
            leftLbl.text = "Bars & Pubs"
            rightLbl.text = "Clubs"
            bgImg.image = #imageLiteral(resourceName: "livemusicmain")
            rightIcon.image = #imageLiteral(resourceName: "club")
            leftIcon.image = #imageLiteral(resourceName: "pub")
            
        } else if fromWhichVC == "club" {
            titleLbl.text = "Clubs"
            leftLbl.text = "Live Music"
            rightLbl.text = "Bars & Pubs"
            bgImg.image = #imageLiteral(resourceName: "bg")
            rightIcon.image = #imageLiteral(resourceName: "pub")
            leftIcon.image = #imageLiteral(resourceName: "live-music")
            
        }
        
        // Do any additional setup after loading the view.
    }
  
  @objc func SwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
               

            case UISwipeGestureRecognizerDirection.right:
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
                if fromWhichVC == "bar" {
                vc.fromWhichVC = "club"
                self.view.addSubview(vc.view)
                self.addChildViewController(vc)
                vc.view.layoutIfNeeded()
                vc.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                UIView.animate(withDuration: 0.3, animations: { () -> Void in
                   vc.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                    
                }, completion:nil)
                }
                
                if fromWhichVC == "music" {
                    vc.fromWhichVC = "bar"
                    self.view.addSubview(vc.view)
                    self.addChildViewController(vc)
                    vc.view.layoutIfNeeded()
                    vc.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                    UIView.animate(withDuration: 0.3, animations: { () -> Void in
                        vc.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                        
                    }, completion:nil)
                }
                
                if fromWhichVC == "club" {
                    vc.fromWhichVC = "music"
                    self.view.addSubview(vc.view)
                    self.addChildViewController(vc)
                    vc.view.layoutIfNeeded()
                    vc.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                    UIView.animate(withDuration: 0.3, animations: { () -> Void in
                        vc.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                        
                    }, completion:nil)
                }
                

                
            default:
                break
            }
        }
    }
    
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {

            case UISwipeGestureRecognizerDirection.left:

                let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
                if fromWhichVC == "bar" {
                    vc.fromWhichVC = "music"
                   

                    self.navigationController?.pushViewController(vc, animated: true)
                } else if fromWhichVC == "music" {
                    vc.fromWhichVC = "club"
                   

                    self.navigationController?.pushViewController(vc, animated: true)
                } else if fromWhichVC == "club" {
                    vc.fromWhichVC = "bar"
                    

                    self.navigationController?.pushViewController(vc, animated: true)
                }
//                self.navigationController?.pushViewController(vc, animated: true)

            default:
                break
            }
        }
    }
    override func viewWillLayoutSubviews() {
        resetConstrailts()
    }
    
    func resetConstrailts() {
       
        if fromWhichVC != "bar" {
            categoryView.isHidden = true
            tblTopConstraint.constant = -92
            postedLblHeight.constant = 40
            postedLbl.text = """
            All the pictures posted have been taken
            less than an hour ago.
            """
        }
    }
    
    @IBAction func LeftAction(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
        if fromWhichVC == "bar" {
            vc.fromWhichVC = "club"
        } else if fromWhichVC == "music" {
            vc.fromWhichVC = "bar"
        } else if fromWhichVC == "club" {
            vc.fromWhichVC = "music"
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func RightAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BarsPubsViewController") as! BarsPubsViewController
        if fromWhichVC == "bar" {
            vc.fromWhichVC = "music"
        } else if fromWhichVC == "music" {
            vc.fromWhichVC = "club"
        } else if fromWhichVC == "club" {
            vc.fromWhichVC = "bar"
        }
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
    @IBAction func sortBY(_ sender: Any) {
        
    }
    @IBAction func hOMEvc(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func commentVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CommentsViewController") as! CommentsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: Attribute String
    func attributedText(withString string: String, boldString: String, font: UIFont) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: string, attributes: [NSAttributedStringKey.font: font])
        let boldFontAttribute2: [NSAttributedStringKey: Any] = [NSAttributedStringKey(rawValue: NSAttributedStringKey.font.rawValue): UIFont.boldSystemFont(ofSize: font.pointSize + 2)]
        let range = (string as NSString).range(of: boldString)
        attributedString.addAttributes(boldFontAttribute2, range: range)
        return attributedString
    }

    //MARK: Delegates of Collection Cell
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section:Int) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! BarsPubsCollectionViewCell
     
        self.imageTapped(image: cell.itemImg.image!)
     
    }
    func imageTapped(image:UIImage){
        let newImageView = UIImageView(image: image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
     
       
        label.isHidden = false
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
         self.view.addSubview(newImageView)
         self.view.addSubview(label)
      
      
        
    }
    
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        
        
        sender.view?.removeFromSuperview()
        label.isHidden = true
       
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)  -> UICollectionViewCell {
        let Collectioncell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell3", for : indexPath) as! BarsPubsCollectionViewCell
        if collectionView.tag == 0 {
            Collectioncell.itemImg.image = itemsArray1[indexPath.row]
        } else if collectionView.tag == 1 {
            Collectioncell.itemImg.image = itemsArray2[indexPath.row]
        } else if collectionView.tag == 2 {
            Collectioncell.itemImg.image = itemsArray3[indexPath.row]
        } else {
            Collectioncell.itemImg.image = itemsArray3[indexPath.row]
        }
        
        
        return Collectioncell
    }
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:  collectionView.bounds.size.width/3.0, height:  collectionView.bounds.size.height)
    }
    //MARK: Cells highlight on long press
    
     func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0) {
            if let cell = collectionView.cellForItem(at: indexPath) as? BarsPubsCollectionViewCell {
                cell.itemImg.transform = .init(scaleX: 0.9, y: 0.9)
                cell.contentView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.5) {
            if let cell = collectionView.cellForItem(at: indexPath) as? BarsPubsCollectionViewCell {
                cell.itemImg.transform = .identity
                cell.contentView.backgroundColor = .clear
            }
        }
    }


}

extension BarsPubsViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BarsPubsTableViewCell", for: indexPath) as! BarsPubsTableViewCell
        cell.BarsCollView.tag = indexPath.row

        if fromWhichVC != "bar" {
            cell.barTypeLbl.attributedText = attributedText(withString: "Type of music: Rock", boldString: "Rock", font: UIFont(name: "Lato-Regular", size: 9)!)
            cell.barTypeImg.image = #imageLiteral(resourceName: "music")
        } else {
            cell.barTypeLbl.attributedText = attributedText(withString: "Type of bar: Party", boldString: "Party", font: UIFont(name: "Lato-Regular", size: 9)!)
            cell.barTypeImg.image = #imageLiteral(resourceName: "beer_jar")
        }
        

        cell.priceLbl.attributedText = attributedText(withString: "Price of draft beer: $9.99", boldString: "$9.99", font: UIFont(name: "Lato-Regular", size: 9)!)

        cell.openHoursLbl.attributedText = attributedText(withString: "Open hours: 8PM to 1AM", boldString: "8PM to 1AM", font: UIFont(name: "Lato-Regular", size: 9)!)

        cell.distanceLbl.attributedText = attributedText(withString: "Distance: 4.5Km", boldString: "4.5Km", font: UIFont(name: "Lato-Regular", size: 9)!)

        
        cell.BarsCollView.dataSource = self;
        cell.BarsCollView.delegate = self

        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if fromWhichVC == "club" {
//            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ClubsDetailsViewController") as! ClubsDetailsViewController
//            self.navigationController?.pushViewController(vc, animated: true)

            self.performSegue(withIdentifier: "clubsDetails", sender: self)
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 168
    }

//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//
//        return 250
//
//    }
    
    
    
}



