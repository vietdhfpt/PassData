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

    // kết nối giữa 2 vc
    // ủy quyền delegate từ OtherVC sang VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let otherVC = segue.destination as? OtherViewController
        otherVC?.delegate = self
    }
}

// xử lý dữ liệu từ protocol
extension ViewController: OtherViewControllerDelegate {
    func passedData(name: String) {
        nameLabel.text = name
    }
}
