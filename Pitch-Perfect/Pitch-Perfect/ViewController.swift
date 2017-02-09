//
//  ViewController.swift
//  Pitch-Perfect
//
//  Created by Jatin Patel on 2017-02-08.
//  Copyright © 2017 Jatin Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("view Will appear called")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        //print ("Record Btn Was pressed")
        recordLabel.text = "Recording in Progress"
        stopButton.isEnabled = true
        recordingButton.isEnabled = false
    }


    @IBAction func stopRecording(_ sender: Any) {
        //print ("Stop-Record Btn Was pressed")
        recordLabel.text = "Tap to Record"
        recordingButton.isEnabled = true
        stopButton.isEnabled = false
    }
}

