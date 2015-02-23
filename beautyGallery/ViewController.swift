//
//  ViewController.swift
//  beautyGallery
//
//  Created by admin on 15/2/22.
//  Copyright (c) 2015年 jhpost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var beautyPicker: UIPickerView!
    let beauties = ["杨颖","杨幂","张靓颖"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "gotoGallery" {
            let index = beautyPicker.selectedRowInComponent(0)
            var imageName:String?
            switch index {
            case 0:imageName = "angelababy"
            case 1:imageName = "yangmi"
            case 2:imageName = "zhangliangying"
            default:imageName = nil
            }
          var vc = segue.destinationViewController as GalleryViewControler
            //传递值
            vc.imageName = imageName
            
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        print("closed")
    }
}

