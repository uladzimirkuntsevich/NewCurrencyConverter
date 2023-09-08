//
//  ViewController.swift
//  NewCurrencyConverter
//
//  Created by Владимир Кунцевич on 08/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: private keys & baseUrl & endpoints
    private var apiKey = "qRz8ynlhgeGTlou1uK4cyv09CyuiZo7SNpu5bVa7"
    private var baseUrl = "https://api.freecurrencyapi.com"
    private var latetstEndpoint = "/v1/latest"
    
    
    //MARK: vars
    var requiredSumTextField = UITextField()
    var finalSumLabelField = UILabel()
    var baseCurrencyPicker = UIPickerView()
    var destinationCurrencyPicker = UIPickerView()
    
    
    //MARK: pickers data
    var baseCurrencyPickerData = ["EUR", "USD", "PLN", "HUF", "CZK"]
    var destinationCurrencyPickerData = ["EUR", "USD", "PLN", "HUF", "CZK"]

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
        addStyles()
    }
    
    //MARK: adding subviews to the main view
    func addSubviews() {
        [requiredSumTextField, finalSumLabelField].forEach( {view.addSubview($0)} )
        [requiredSumTextField, finalSumLabelField].forEach( {$0.translatesAutoresizingMaskIntoConstraints = false} )
    }
    
    //MARK: adding constraints for subviews
    func addConstraints() {
        view.addConstraints([
            requiredSumTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            requiredSumTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            requiredSumTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            
        ])
        }
    
    func addStyles() {
        requiredSumTextField.placeholder = "title"
    }


}

