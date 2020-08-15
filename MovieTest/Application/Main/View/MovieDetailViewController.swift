//
//  MovieDetailViewController.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/13/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController, Storyboarded {
            
    @IBOutlet weak var tableView: UITableView!
    var tableHeaderHeight:CGFloat = 250
    var headerView: UIView!
        
    let movieInformationCell = UINib(nibName: "MovieDetailsFirstSectionTableViewCell", bundle: nil)
    let customCell = UINib(nibName: "MovieDetailTableViewCell", bundle: nil)
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpLayout()
        tableView.register(customCell, forCellReuseIdentifier: "cell")
        tableView.register(movieInformationCell, forCellReuseIdentifier: "cell2")
        tableView.rowHeight = UITableView.automaticDimension
        headerConfiguration()
        
    }
        
    func headerConfiguration() {
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        tableView.addSubview(headerView)
        tableView.contentInset = UIEdgeInsets(top: tableHeaderHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -tableHeaderHeight)

    }
    
}

extension MovieDetailViewController: ViewCodeProtocol, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! MovieDetailsFirstSectionTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieDetailTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }
    
    func updateHeaderView() {
        
        var headerRect = CGRect(x: 0, y: -tableHeaderHeight, width: tableView.bounds.width, height: tableHeaderHeight)
        if tableView.contentOffset.y < -tableHeaderHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
        }
        
        headerView.frame = headerRect
    }
        
    func setUpLayout() {
        setUpNavigation()
        delegation()
    }
                
    func delegation() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setUpNavigation() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}
