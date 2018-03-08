//
//  ViewController.swift
//  AFInstall
//
//  Created by Adam Israfil on 3/8/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fetchURL(url: "https://orangevalleycaa.org/api/videos", param: ["catergory":"Dance","keyword":"ballet"])
    }
    
    func fetchURL(url : String, param : [String:Any]) {
        Alamofire.request(url, parameters: param).responseString { (response) in
            print(response.value ?? "no value")
        }.responseJSON { (response) in
                print(response.value ?? "no value")
        }
    }
}

