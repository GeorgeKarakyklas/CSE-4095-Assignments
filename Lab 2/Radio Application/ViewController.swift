//
//  ViewController.swift
//  Radio Application
//
//  Created by Karakyklas, Georgios on 1/31/20.
//  Copyright © 2020 George Karakyklas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var toggleRadio: UIButton!
    @IBOutlet weak var flagImage: UIImageView!
    
    var radio: AVPlayer?
    var radioURL: URL?
    var radioOn: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //radioURL = URL(string: "http://192.240.102.131:9864/;")
        radioURL = URL(string: "http://192.240.102.131:9864/;")
        radio = AVPlayer(url: radioURL!)
        radioOn = false
        flagImage.image = UIImage(named:"LMAO")
        print("View did load!")
    }

    @IBAction func selectButton(_ sender: Any) {
        
        if radioOn! {
            radioOn = false
            radio!.pause()
        }
        else{
            radioOn = true
            radio!.play()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear!")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear!")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear!")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did dissappear!")
    }
}
