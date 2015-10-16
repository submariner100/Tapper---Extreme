//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Macbook on 16/10/2015.
//  Copyright © 2015 Chappy-App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  //Properties
  var maxTaps:Int = 0
  var currentTaps:Int = 0
  
  // Outlets
  @IBOutlet weak var logoImage: UIImageView!
  @IBOutlet weak var howManyTapsTxt: UITextField!
  @IBOutlet weak var playBtn: UIButton!
  
  @IBOutlet weak var tapBtn: UIButton!
  @IBOutlet weak var tapsLbl: UILabel!
  
  @IBAction func onCoinTapped(sender: UIButton!) {
      currentTaps++
      updateTapsLabel()
    if isGameOver() {
      
      restartGame()
      
    }
   }
  
  @IBAction func onPlayBtnPressed(sender: UIButton!) {
    
    if howManyTapsTxt.text != nil  && howManyTapsTxt.text != "" {
     
        logoImage.hidden = true
        playBtn.hidden = true
        howManyTapsTxt.hidden = true
      
        tapBtn.hidden = false
        tapsLbl.hidden = false
      
      
        maxTaps = Int(howManyTapsTxt.text!)!
        currentTaps = 0
        updateTapsLabel()
      
      }
   }
  
  func restartGame() {
    maxTaps = 0
    howManyTapsTxt.text = ""
    logoImage.hidden = false
    playBtn.hidden = false
    howManyTapsTxt.hidden = false
    
    tapBtn.hidden = true
    tapsLbl.hidden = true
    
  }
  
  
  func isGameOver() -> Bool {
    if currentTaps >= maxTaps {
        return true
    } else {
        return false
      }
  }
  
  func updateTapsLabel() {
    tapsLbl.text = "\(currentTaps) Taps"
    
    
  }
  
}

