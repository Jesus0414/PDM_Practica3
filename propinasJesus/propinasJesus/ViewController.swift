//
//  ViewController.swift
//  propinasJesus
//
//  Created by Alumno on 8/30/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTotalCuenta: UITextField!
    
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    
    @IBOutlet weak var lblPropina: UILabel!
    
    @IBOutlet weak var lblTotalPropina: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doEditEndTotalCuenta(_ sender: Any) {
        
    }
    
    @IBAction func doChangePorcentajePropina(_ sender: Any) {
        lblPorcentajePropina.text = "\(String(Int(sldPorcentajePropina.value)))%"
        if txtTotalCuenta.text != nil && txtTotalCuenta.text != "" {
            let cuenta = Float(txtTotalCuenta.text!)!
            let porcentaje = Float(Int(sldPorcentajePropina.value))
            let propina = cuenta * (porcentaje / 100.0)
            lblPropina.text = "$\(String(format: "%.2f", propina))"
            lblTotalPropina.text = "$\(String(format: "%.2f", cuenta + propina))"
        }
        
        
    }
    
    
}

