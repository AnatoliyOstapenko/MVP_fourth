//
//  SecondViewController.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var presenter = SecondPresenter(view: self, userService: UserService())
    
    let mvpTableView = UITableView()
    var array: [UserViewData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewConfigure()
        presenter.getUsers()
    }
    
    func tableViewConfigure() {
        view.addSubview(mvpTableView)
        mvpTableView.frame = view.bounds
        mvpTableView.backgroundColor = .cyan
        mvpTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        mvpTableView.dataSource = self
    }
    
    func customiseCell(cell: UITableViewCell) -> UITableViewCell {
        cell.backgroundColor = .cyan
        cell.textLabel?.textColor = .white
        cell.detailTextLabel?.textColor = .red
        cell.textLabel?.font = .systemFont(ofSize: 26, weight: .bold)
        cell.detailTextLabel?.font = .systemFont(ofSize: 20, weight: .thin)
        return cell
    }
}
// MARK: - TableView DataSource
extension SecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell") // add subtitle
        let customisedCell = customiseCell(cell: cell)
        customisedCell.textLabel?.text = array[indexPath.row].name
        customisedCell.detailTextLabel?.text = array[indexPath.row].age
        return customisedCell
    }
    
    
}
// MARK: - Presenter Delegate
extension SecondViewController: SecondPresenterView {
    func setUsers(users: [UserViewData]) {
        array = users
        DispatchQueue.main.async {
            self.mvpTableView.reloadData()
        }
        
    }
  
}
