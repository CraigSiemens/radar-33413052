//
//  ExpectedViewController.swift
//  ExtraTableViewInset
//
//  Created by Craig Siemens on 2017-07-19.
//  Copyright © 2017 Craig Siemens. All rights reserved.
//

import UIKit

struct Section {
    let title: String?
    let numberOfRows: Int = 2
}

class ExpectedViewController: UITableViewController {
    
    var sections = [
        Section(title: "Header"),
        Section(title: nil),
        Section(title: nil)
    ]
    
    override init(style: UITableViewStyle) {
        super.init(style: .grouped)
        
        title = "Expected"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.section) - \(indexPath.row)"
        return cell
    }
}
