//
//  DemoSubPageViewController.swift
//  PageViewController
//
//  Created by Fanfan Tan on 2021/12/5.
//  Copyright © 2021年 Fan. All rights reserved.
//

import UIKit

class DemoSubPageViewController: PageTabBarController {

    private let titles = ["大菠萝", "苹果","芒果", "梨", "香蕉","橘子", "哈密瓜", "西瓜", "葡萄", "橙子", "柚子"]

    override func viewDidLoad() {
        super.viewDidLoad()
//        automaticallyAdjustsScrollViewInsets = false
    }
    
    deinit {
        print("DemoSubPageViewController deinit")
    }
    
    override func preferredNumberOfItems() -> Int {
        return titles.count
    }
    
    override func preferredTitleForItem(at index: Int) -> String {
        return titles[index]
    }
    
    override func preferredChildViewContoller(at index: Int) -> UIViewController {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.text = titles[index]
        return detailVC
    }
    
    override func preferredTabbarFrame() -> CGRect {
        let originY = UIApplication.shared.statusBarFrame.height + (navigationController?.navigationBar.frame.height ?? 0)
        return CGRect(x: 0, y: originY, width: view.bounds.width, height: 50)
    }

    override func preferredContainerFrame() -> CGRect {
        let originY = UIApplication.shared.statusBarFrame.height + (navigationController?.navigationBar.frame.height ?? 0) + 50
        return CGRect(x: 0, y: originY, width: view.bounds.width, height: view.bounds.height - originY)
    }
    
    override func preferredSpacingForItem() -> CGFloat {
        return 30
    }

    override func preferredTitleHighlightedColorForItem() -> UIColor {
        return .red
    }
    
    override func preferredTransitionAnimationType() -> PageTabBarItemTransitionAnimation {
        return .smoothness
    }
    
}
