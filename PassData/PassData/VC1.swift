//
//  VC1.swift
//  PassData
//
//  Created by Đỗ Việt on 4/27/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class VC1: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // nhận dữ liệu sau khi nhập mật khẩu "KeySendData"
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification(_:)), name: NSNotification.Name.init(rawValue: "KeySendData"), object: nil)
    }
    
    // xử lý dữ liệu
    func handleNotification(_ notification: Notification) {
        
        guard let dict = notification.userInfo else { return }
        
        guard let value = dict["name"] as? String else { return }
        
        nameLabel.text = value
        
    }
    
    // khi sử dụng notification để truyền dữ liệu thì sau khi sử dụng deinit đi.
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.init(rawValue: "KeySendData"), object: nil)
    }
}
