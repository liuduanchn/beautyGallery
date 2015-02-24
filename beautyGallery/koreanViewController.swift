//
//  koreanViewController.swift
//  beautyGallery
//
//  Created by admin on 15/2/23.
//  Copyright (c) 2015年 jhpost. All rights reserved.
//

import UIKit
import Social

class koreanViewController: UIViewController {

    @IBOutlet weak var koreanBeauty: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookShare(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook )
        controller.setInitialText("一起来玩段段的女神画廊iOS-app吧，@娜娜要增肥 @囧珏就在: t.cn/newton123")
        controller.addImage(koreanBeauty.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterShare(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter )
        controller.setInitialText("一起来玩段段的女神画廊iOS-app吧，就在: t.cn/newton123")
        controller.addImage(koreanBeauty.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func sinaWeiboShare(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType : SLServiceTypeSinaWeibo )
        controller.setInitialText("一起来玩段段的女神画廊iOS-app吧，@OooO00o_ @biases @囧珏  这是宋智孝。")
        controller.addImage(koreanBeauty.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
