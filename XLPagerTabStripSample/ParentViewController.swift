//
//  ParentViewController.swift
//  XLPagerTabStripSample
//
//  Created by 松島悠人 on 2021/01/31.
//

import UIKit
import XLPagerTabStrip
// デフォルトで継承しているUIViewControllerをButtonBarPagerTabStripViewControllerに書き換える
class ParentViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // navigatonbarの色
        navigationController?.navigationBar.barTintColor = UIColor.black
        // navigationbarの文字の色
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        // buttonbarの色
        settings.style.buttonBarBackgroundColor = .green
        // buttonの色
        settings.style.buttonBarItemBackgroundColor = .black
        // buttonの文字の色
        settings.style.buttonBarItemTitleColor = .white



    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        // 管理されるviewcontrollerを返す処理
        let firstVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "First")
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Second")
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Third")
        let childViewControllers:[UIViewController] = [firstVC, secondVC, thirdVC]
        return childViewControllers
    }
    


}
