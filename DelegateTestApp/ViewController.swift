//
//  ViewController.swift
//  DelegateTestApp
//
//  Created by RyoNagai on 2021/06/06.
//

import UIKit

class ViewController: UIViewController {
    
    private let cellId = "cellId"

    @IBOutlet weak var testTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        testTableView.delegate = self
        testTableView.dataSource = self
        //線が消える。
        testTableView.tableFooterView = UIView()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = testTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .green
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}

