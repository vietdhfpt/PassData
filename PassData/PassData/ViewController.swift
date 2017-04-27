//
//  ViewController.swift
//  PassData
//
//  Created by Đỗ Việt on 4/27/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // khởi tạo func unwind bên VC nhận dữ liệu
    // kiểm tra kết nối otherVC với func unwindAndPassData
    // truyển dữ liệu
    @IBAction func unwindAndPassData(sender: UIStoryboardSegue) {
        
        let otherVC = sender.source as? OtherViewController
        
        nameLabel.text = otherVC?.nameTextField.text
        
    }
}

