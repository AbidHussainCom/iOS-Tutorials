//
//  CellRepresentable.swift
//  MVVMSample
//
//  Created by Hari Kunwar on 5/16/17.
//  Copyright © 2017 Learning. All rights reserved.
//

import UIKit

protocol CellRepresentable {
    var rowHeight: CGFloat { get }
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
}
