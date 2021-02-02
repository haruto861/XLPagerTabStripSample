//
//  SecondViewController.swift
//  XLPagerTabStripSample
//
//  Created by 松島悠人 on 2021/01/31.
//

import UIKit
import XLPagerTabStrip

class SecondViewController: UIViewController, IndicatorInfoProvider  {
    var itemInfo: IndicatorInfo = "SECOND"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGreen

        // Do any additional setup after loading the view.
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
