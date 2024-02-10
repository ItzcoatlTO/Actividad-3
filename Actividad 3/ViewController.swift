//
//  ViewController.swift
//  Actividad 3
//
//  Created by Itzcoatl on 10/02/24.
//

import UIKit

class ViewController: UIViewController {
    var TonalidadDeRojo: CGFloat = 0.0
    var TonalidadDeVerde: CGFloat = 0.0
    var TonalidadDeAzul: CGFloat = 0.0
    var Alfa: CGFloat = 1.0

    @IBOutlet weak var Frieren: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func Rojo(_ sender: UISlider) {
        TonalidadDeRojo = CGFloat(sender.value)
        CambioDeColor()
    }

    @IBAction func Verde(_ sender: UISlider) {
        TonalidadDeVerde = CGFloat(sender.value)
        CambioDeColor()
    }

    @IBAction func Azul(_ sender: UISlider) {
        TonalidadDeAzul = CGFloat(sender.value)
        CambioDeColor()
    }

    @IBAction func Transparencia(_ sender: UISlider) {
        Alfa = CGFloat(sender.value)
        CambioDeColor()
    }
    func CambioDeColor() {
        Frieren.backgroundColor = UIColor(red: TonalidadDeRojo, green: TonalidadDeVerde, blue: TonalidadDeAzul, alpha: Alfa)
    }
}
