//
//  ViewController.swift
//  formulariovisitantes_rv
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Estudiate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var btnCapturar: UIButton!
    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    @IBOutlet weak var sldTemperatira: UISlider!
    @IBOutlet weak var lblTemperatira: UILabel!
    @IBOutlet weak var txtNombre: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCapturar.isHidden = true
        sldTemperatira.isEnabled = true
    }
    @IBAction func doChangeTemperatira(_ sender: Any) {
        lblTemperatira.text = "\(String(format: "%.1f", sldTemperatira.value))°C"
        if sldTemperatira.value >= 38.0 {
            lblTemperatira.textColor = UIColor.red
        }else{
            lblTemperatira.textColor = UIColor.black
        }
        
    }
    @IBOutlet weak var doTapCapturar: UIButton!
    @IBAction func doTapCapturar(_ sender: Any) {
        if sldTemperatira.value >= 38.0 {
            imgResultado.image = UIImage (named: "tacha" )
            lblResultado.text = "Ingreso no autorizado para \(txtNombre.text!)"
        }else{
            imgResultado.image = UIImage (named: "palomita" )
            lblResultado.text = "Ingreso autorizado para \(txtNombre.text!)"
        }
        imgResultado.isHidden = false
        lblResultado.isHidden = false
        btnNuevo.isHidden = false
        btnCapturar.isHidden = false
        sldTemperatira.isEnabled = false
        sldTemperatira.tintColor = UIColor.gray
    }
    @IBAction func doTapNuevo(_ sender: Any) {
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCapturar.isHidden = true
        sldTemperatira.isEnabled = true
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


