//
//  SubscripController.swift
//  LGSideMenuControllerDemo
//
//  Created by Max Dmitriev on 22.06.17.
//  Copyright © 2017 Cole Dunsby. All rights reserved.
//

import UIKit

class SubscripController: UIViewController {
    
    @IBOutlet weak var pageControll: UIPageControl!
    
    @IBOutlet weak var textMerge: UITextView!
   
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var viewSky: UIView!
    var timer : Timer!
    var updateCounter : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.viewSky.backgroundColor = UIColor(patternImage: UIImage(named:"main")!)
        updateCounter = 0
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    internal func updateTimer(){
        if(updateCounter <= 9){
            
            if(updateCounter == 0){
                textMerge.text="Any location, with future predictions.                                                                                                  \n\nReceive predictions for up to 5 days in the future, for any location that you search or select. With a premium subscription, you can get predictions for locations other than your current location."
            pageControll.currentPage = updateCounter
            imgView.image = UIImage(named: String(updateCounter+1)+".png")
            updateCounter = updateCounter+1
            }else if(updateCounter == 1){
                textMerge.text="Unlimited predictions.\n\nFree version is limited to a maximum of 3 predictions per day. Premium subscribers can make unlimited predictions for unlimited locations."
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }else if (updateCounter == 2){
                textMerge.text="Alerts. \n\nReceive alerts when your Sunrise or Sunset quality is high, automatically. No manual prediction runs necessary."
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }else if (updateCounter == 3){
                 textMerge.text="Widgets. \n\nPlace widgets on your device homescreen to seeyour Sunrise and Sunset predictions at any time"
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }
            else if (updateCounter == 4){
                textMerge.text="Calendar. \n\nGet automatic predictions for the next 5 days, and sync them into your Google Calendar! helpful to  Sunrise and Sunset quality from any device,  including PC."
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }
            else if (updateCounter == 5){
                textMerge.text="Sticky notifications. \n\nEnable permanent sticky notifications in your system tray a live countdown until Sunrise or Sunset and automatic predictions."
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }
            else if (updateCounter == 6){
                textMerge.text="Remove advertisements.\n\nWith a premium subscription, you can disable in-app advertisements."
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }
            else if (updateCounter == 7){
                textMerge.text="Higher accuracy.\n\nPremium version analyzes weather data from 10 GPS points around your location in a 5km radius to get a more accurate prediction."
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }
            else if (updateCounter == 8){
                textMerge.text="And a lot more!\n\nWe are always adding new features from user feedback. Premium subscribers are guaranteed to get all future features."
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }
            else if (updateCounter == 9){
                textMerge.text="Why do we offer a premium subscription?\n\nEvery time a Sunrise or Sunset prediction is made on your end, we have to pay a weather company a lot of money to access their data! yeah we could launch own weather satellite into orbit, but at an average cost of $500 million USD, that`s kind of really expensive!"
                
                pageControll.currentPage = updateCounter
                imgView.image = UIImage(named: String(updateCounter+1)+".png")
                updateCounter = updateCounter+1
            }
        }else{
            updateCounter = 0
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
    }*/
 

    
}
