//
//  ViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 26/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toOrderView"{
            let destVC = segue.destination as! OrderViewController
            
            let ordered: String! = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex) //매개변수로 index값 선언.
            //치킨이냐 피자이냐를 배열상태로 알게됨. segement 객체 인덱스값을 저장. =selectedSegmentIndex
            
            destVC.title = ordered
            
            var outString: String = "감사합니다!! \n 주문내역: <"
            outString += ordered
            outString += ">, 맞나요?"
            destVC.info = outString //목적지 destvc안에 info라는 변수값 접근.
            //우리가 만든 string을 할당. 그러면 자료전달이 완료됨.
        }
     
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

