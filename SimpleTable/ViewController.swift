//
//  ViewController.swift
//  SimpleTable
//
//  Created by Anastasiia Kapitonova on 12.03.2020.
//  Copyright © 2020 Anastasiia Kapitonova. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    var restaurantNames = ["Бургер с рыбой", "Семга гриль", "Сэндвич с тунцом и сыром", "Борщ", "Глинтвейн", "Уха", "Суп томатный", "Салат с креветками и авокадо" , "Кекс творожный", "Драники", "Голубцы", "Свинина по-французски", "Куриное филе с аджикой", "Чахохбили с фасолью", "Слоеный пирог с яблоками", "Рассольник", "Тефтели в белом соусе", "Кролик тушеный", "Ежики в сливочном соусе", "Креветки на гриле", "Шарлотка с яблоками"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return restaurantNames.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = restaurantNames[indexPath.row]

    
    cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
    
    
    
    
    return cell
}
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

