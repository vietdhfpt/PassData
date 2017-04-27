//
//  OtherViewController.swift
//  PassData
//
//  Created by Đỗ Việt on 4/27/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    // khởi tạo closure
    var closure: ((_ name: String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendData(_ sender: UIBarButtonItem) {
        
        // truyễn dữ liệu
        if let closure = closure {
            
            closure(nameTextField.text ?? "")
            
        }
        
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
