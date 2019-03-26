//
//  OrderViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 26/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    var info: String? //넘겨받을 변수를 string으로 선언. info의 값이 있을수도 있고 없을수도 있음.
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //label에 앞의 값을 써주는 것
        if let contentString = info {
            infoLabel.text = contentString
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
