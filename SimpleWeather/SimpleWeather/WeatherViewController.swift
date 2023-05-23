//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 이재희 on 2023/05/19.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill", "cloud.bolt.fill"]
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        cityLabel.text = cities.randomElement()
        weatherImageView.image = UIImage(systemName: weathers.randomElement()!)?.withRenderingMode(.alwaysOriginal)
        temperatureLabel.text = "\(Int.random(in: 10..<30))°"
        print("도시, 온도, 날씨 이미지 변경하자!")
    }
    
}
