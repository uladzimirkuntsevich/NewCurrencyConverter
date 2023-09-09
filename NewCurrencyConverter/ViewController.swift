//
//  ViewController.swift
//  NewCurrencyConverter
//
//  Created by Владимир Кунцевич on 08/09/2023.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return baseCurrencyPickerData.count
        }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return baseCurrencyPickerData[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedItem = baseCurrencyPickerData[row]  // This gives the selected item from the picker
        print("Selected Item: \(selectedItem)")
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
        addStyles()
        buildPickers()
    }
    
    //MARK: adding subviews to the main view
    func addSubviews() {
        [requiredSumTextField, baseCurrencyPicker, finalSumLabelField].forEach( {view.addSubview($0)} )
        [requiredSumTextField, baseCurrencyPicker, finalSumLabelField].forEach( {$0.translatesAutoresizingMaskIntoConstraints = false} )
    }
    
    //MARK: adding constraints for subviews
    func addConstraints() {
        view.addConstraints([
            requiredSumTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            requiredSumTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            requiredSumTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            baseCurrencyPicker.topAnchor.constraint(equalTo: requiredSumTextField.bottomAnchor, constant: -20),
            baseCurrencyPicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            baseCurrencyPicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            
        ])
        }
    
    
    func addStyles() {
        requiredSumTextField.placeholder = "title"
//        baseCurrencyPicker.frame()
    }
    
    func buildPickers() {
        baseCurrencyPicker.dataSource = self
        baseCurrencyPicker.delegate = self
    }


}

