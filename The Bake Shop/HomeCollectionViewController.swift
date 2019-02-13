//
//  HomeCollectionViewController.swift
//  The Bake Shop
//
//  Created by Jamario Davis on 2/1/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import UIKit

var imagesArray = [UIImage(named:"0")!,UIImage(named:"1")!,UIImage(named:"2")!,UIImage(named:"3")!,UIImage(named:"4")!, UIImage(named:"5")! ]


//UIImage(named:"6")!,UIImage(named:"7")!,UIImage(named:"8")!,UIImage(named:"9")!,UIImage(named:"10")!,UIImage(named:"11")!

var namesArray = ["Blackcurrant-Sorbet", "Champagne Like Cake", "Fruit Frosty Cake", "Limelike Cake", "Mocha Cake", "Peacan Loveless"]

//, "Strawberry Love Cupcake","Nadine's Cake", "Lucky Cake", "LoveMe Cake", "Worldwide Cake", "Wedding Cake"

class HomeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCollectionViewCell
        
        cell.nameLabel.text = namesArray[indexPath.item]
        cell.pictureImgView.image = imagesArray[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.frame.size.width/3)-10, height: (collectionView.frame.size.width/3))
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "home", sender: self)
    }
    
    
    @IBAction func close(_ sender: UIButton) {
         navigationController?.popViewController(animated: true)
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
          
            let destinationVC = segue.destination as! CakeViewController 
            
            
            if let indexPathArray = collectionView?.indexPathsForSelectedItems
            {
                let selectedIndexPath = indexPathArray[0]
                
                let selectedImage = imagesArray[selectedIndexPath.row]
               
                
                
                destinationVC.fullImage = selectedImage
              
            }
         
            
       
            
            
        }
    
   
    
}
    
    

    







