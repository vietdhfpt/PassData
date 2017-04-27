//
//  VC2.swift
//  PassData
//
//  Created by Đỗ Việt on 4/27/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class VC2: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // truyền dữ liệu
    @IBAction func sendData(_ sender: UIBarButtonItem) {
        
        let dict = ["name": nameTextField.text!]
        
        // phát sóng dữ liệu như trạm wifi. device nào muốn sử dụng phải nhập mật khẩu "". ở đây key là "KeySendData"
        NotificationCenter.default.post(name: NSNotification.Name.init("KeySendData"), object: nil, userInfo: dict)
        
        _ = navigationController?.popViewController(animated: true)
        
    }

}
