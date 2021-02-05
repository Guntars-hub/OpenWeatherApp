//
//  ChangeCityViewController.swift
//  OpenWeatherApp
//
//  Created by Arkadijs Makarenko on 04/02/2021.
//

import UIKit

protocol ChangeCityDelagete {
    func userEnterCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    @IBOutlet weak var cityTextField: DesignableTextField!
    
    var delegate : ChangeCityDelagete?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getWeatherTapped(_ sender: Any) {
        guard let cityName = cityTextField.text else {
            return
        }
        delegate?.userEnterCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
