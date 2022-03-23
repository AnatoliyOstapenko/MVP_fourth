//
//  SecondViewController.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    //lazy var presenter
    
    let mvpTableView = UITableView()
    var array: [UserViewData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mvpTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        mvpTableView.dataSource = self
        
        // presenter.getUsers()

    }
    override func loadView() {
        view = mvpTableView
    }

}

extension SecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    
}
extension SecondViewController: SecondPresenterView {
    func setUsers(users: [UserViewData]) {
        array = users
        DispatchQueue.main.async {
            self.mvpTableView.reloadData()
        }
        
    }
    
    func setEmptyUsers() {
        view.backgroundColor = .red
    }
    
    
}
