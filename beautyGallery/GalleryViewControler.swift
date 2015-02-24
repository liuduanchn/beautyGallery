//
//  GalleryViewControler.swift
//  beautyGallery
//
//  Created by admin on 15/2/22.
//  Copyright (c) 2015年 jhpost. All rights reserved.
//

import UIKit
import Social

class GalleryViewControler: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        if let name = imageName {
//            beautyImage.image = UIImage(named: name)
//        }
        if let name = imageName {
            beautyImage.image = UIImage(named: name)
            
            switch name {
            case "angelababy": navigationItem.title = "杨颖"
            case "yangmi": navigationItem.title = "杨幂"
            case "zhangliangying": navigationItem.title = "张靓颖"
            default : navigationItem.title = "鬼"
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shareTap(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType : SLServiceTypeSinaWeibo )
        controller.setInitialText("一起来玩段段的女神画廊iOS-app吧，@娜娜在增肥 @biases @ClassFoundException  这是\(navigationItem.title!)。")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }
    
    
    
    

}