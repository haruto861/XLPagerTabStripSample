//
//  FirstViewController.swift
//  XLPagerTabStripSample
//
//  Created by 松島悠人 on 2021/01/31.
//

import UIKit
import XLPagerTabStrip

class FirstViewController: UIViewController, IndicatorInfoProvider {
    var itemInfo: IndicatorInfo = "FIRST"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemRed
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }

}
