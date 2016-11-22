//
//  ViewController.swift
//  ImageURLDownload
//
//  Created by Andrew Barber on 11/22/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openURL(_ sender: AnyObject) {
        let path = textBox.text!
        let url = NSURL(string: path)
        let data = NSData(contentsOf: url as! URL)
        let img = UIImage(data: data as! Data)
        imageView.image = img
    }

}

