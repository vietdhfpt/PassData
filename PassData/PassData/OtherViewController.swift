//
//  OtherViewController.swift
//  PassData
//
//  Created by Đỗ Việt on 4/27/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

// khởi tạo protocol
// func trong protocol k có thân hàm
// cách đặt tên protocol là tên của viewcontroller + Delegate
protocol OtherViewControllerDelegate {
    func passedData(name: String)
}

class OtherViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    var delegate: OtherViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // truyển dữ liệu bằng delegate
    @IBAction func sendData(_ sender: UIBarButtonItem) {
        delegate?.passedData(name: nameTextField.text!)
        _ = navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
