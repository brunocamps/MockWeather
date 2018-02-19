//WeatherVC.swift
//  MockWeather
//
//  Created by Bruno Campos on 2/9/18.
//  Copyright © 2018 Bruno Campos. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController , UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var currentTempLabel: UILabel!
    
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var currentWeatherImage: UIImageView!
    
    
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather() //creates a generic class of current weather
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tell where the data is.
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather.downloadWeatherDetails {
            //Setup UI to load downloaded data
            self.updateMainUI()
            
        }
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //tells the table view that we just want one section
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currentWeatherTypeLabel.text = currentWeather.weatherType
        locationLabel.text = currentWeather.cityName
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
        
        
    }


}

