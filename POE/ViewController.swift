//
//  ViewController.swift
//  POE
//
//  Created by MatsumuraKeita on 2018/09/05.
//  Copyright © 2018年 MatsumuraKeita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelPOE: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //labelにテキストを表示する
        labelPOE.text=String(calculatePOE())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func calculatePOE()->Int{
        //1970/1/1時点の人口
        let epocPOE = 3711800786.0
        //1秒間の出生率
        let POEpersecond = 2.5
        //1970/1/1からの秒数を取得
        let now = NSDate().timeIntervalSince1970
        let POE = NSInteger(epocPOE + POEpersecond * Double(now))
        return POE
    }
}
