//
//  ViewController.swift
//  BankUI
//
//  Created by Ahmet Ali ÇETİN on 16.12.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet var tableView: UITableView!
    
    var imageArray = [
        UIImage(named: "krediön"),
        UIImage(named: "krediarka")
    ]
    
    var tableItems: [TableItems] = [
        TableItems(img: UIImage(named: "person1"), nameSurname: "Ahmet Ali ÇETİN", status: "<- Received", cashStatus: "+$12345.00" ),
        TableItems(img: UIImage(named: "person2"), nameSurname: "Nurcan ÇETİN", status: "<- Received", cashStatus: "-$12345.00" ),
        TableItems(img: UIImage(named: "person3"), nameSurname: "Erkan SEVİM", status: "<- Received", cashStatus: "+$12345.00" ),
        TableItems(img: UIImage(named: "person4"), nameSurname: "Mehti Sağlık", status: "<- Received", cashStatus: "$12345.00" ),
        TableItems(img: UIImage(named: "person5"), nameSurname: "Gül DÜRGÜL", status: "<- Received", cashStatus: "+$12345.00" )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navButtonSettings()
        headerSettings()
        
        pageControl.numberOfPages = imageArray.count
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionView", for: indexPath) as! ImageCollectionViewCell
        let imageSettings = cell.image
        imageSettings?.image = imageArray[indexPath.row]
        imageSettings?.layer.cornerRadius = 50
        return cell
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x/scrollView.frame.width
        pageControl.currentPage = Int(page)
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellForCustomer", for: indexPath) as! AccountMovementTableView
        tableView.contentInsetAdjustmentBehavior = .never
        
        let customers = tableItems[indexPath.row]
        cell.nameLabel.text = customers.nameSurname
        cell.customerImage.image = customers.img
        cell.statusLabel.text = customers.status
        cell.moneyLabel.text = customers.cashStatus
        
        if customers.cashStatus.hasPrefix("+") {
            cell.moneyLabel.textColor = .systemGreen
        } else if customers.cashStatus.hasPrefix("-") {
            cell.moneyLabel.textColor = .systemOrange
        } else {
            cell.moneyLabel.textColor = .blue
        }
        
        return cell
    }
    
    private func navButtonSettings(){
        title = "Your Cards"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "EDIT",
                                                                 style: .done,
                                                                 target: .none,
                                                                 action: .none)
        self.navigationItem.rightBarButtonItem?.tintColor = .tintColor
    }

    private func headerSettings(){
        let header = UIView(frame: CGRectMake(10, 10, view.frame.size.width, 50))
        let label = UILabel(frame: header.bounds)
        
        let button = UIButton(frame: CGRectMake(tableView.frame.size.width - 130, 0, 150, 50)) //
        button.setTitle("See All", for: .normal)
        button.setTitleColor(.tintColor, for: .normal)
        header.addSubview(button)
        
        label.text = "Latest Transactions"
        label.font = .boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        header.addSubview(label)
        
        tableView.tableHeaderView = header
    }
    
}

struct TableItems {
    var img: UIImage?
    var nameSurname: String
    //sent or receieved
    var status: String
    var cashStatus: String
    
    init(img: UIImage? = nil, nameSurname: String, status: String, cashStatus: String) {
        self.img = img
        self.nameSurname = nameSurname
        self.status = status
        self.cashStatus = cashStatus
    }
}
