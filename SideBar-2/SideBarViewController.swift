//
//  SideBarViewController.swift
//  SideBar-2
//
//  Created by zyad on 9/13/18.
//  Copyright © 2018 zyad. All rights reserved.
//

import UIKit

class SideBarViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate , UIGestureRecognizerDelegate{

    @IBOutlet weak var sideMenuTableView: UITableView!
    let LabelTextArray = ["hi","how are you","thank you","where are you"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dimissView))
        tap.delegate = self
        view.addGestureRecognizer(tap)
    }
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return touch.view == gestureRecognizer.view
    }
    @objc func dimissView()
    {
        self.dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LabelTextArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sideMenuTableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = LabelTextArray[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        dismiss(animated: true, completion: nil)
    }
}
