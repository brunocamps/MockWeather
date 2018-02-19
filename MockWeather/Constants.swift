//
//  Constants.swift
//  MockWeather
//
//  Created by Bruno Campos on 2/19/18.
//  Copyright © 2018 Bruno Campos. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"

let LATITUDE = "lat="

let LONGITUDE = "&lon="

let APP_ID = "&appid="

let API_KEY = "8954b03cdfa2d7e8a25f6a575d655116"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"
