//
//  ViewController.swift
//  act 99
//
//  Created by Alumno IDS on 09/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dude:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)     //Imagen de fondo
        backgroundImage.image = UIImage(named: "fondo 2.png")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        let button = UIButton(frame: CGRect(x: 80, y: 120, width: 90, height: 90))  //boton de roca
        button.setImage(UIImage(named: "rock.png"), for: .normal)
        button.setTitle("piedra", for : .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.addTarget(self, action: #selector(bakkAction), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        let button1 = UIButton(frame: CGRect(x: 250, y: 120, width: 100, height: 90)) //boton de papel
        button1.setImage(UIImage(named: "paper.png"), for: .normal)
        button1.setTitle("papel", for : .normal)
        button1.addTarget(self, action: #selector(button1Action), for: .touchUpInside)
        button1.addTarget(self, action: #selector(bakkAction), for: .touchUpInside)
        
        self.view.addSubview(button1)
        
        let button2 = UIButton(frame: CGRect(x: 160, y: 240, width: 90, height: 90)) //boton de tijera
        button2.setImage(UIImage(named: "scissors.png"), for: .normal)
        button2.setTitle("Test Button", for : .normal)
        button2.addTarget(self, action: #selector(button2Action), for: .touchUpInside)
        button2.addTarget(self, action: #selector(bakkAction), for: .touchUpInside)
        
        self.view.addSubview(button2)
        
        
        
    }
    
        func bakkAction(sender: UIButton!) {
            //esta funcion deberia usarse cada vez que se elije una de las opciones
            if dude == true {
            
                let lmao = UIImageView(frame: CGRect(x: 80, y: 240, width: 180, height: 180))
                lmao.image = UIImage(named: "TEST.jpg")
                lmao.contentMode = UIViewContentMode.scaleAspectFill
                self.view.addSubview(lmao)
        
                let bak = UIButton(frame: CGRect(x: 160, y: 400, width: 100, height: 50))
                bak.backgroundColor = .green
                bak.setTitle("Regresar", for : .normal)
                bak.addTarget(self, action: #selector(superAction), for: .touchUpInside)
            
                self.view.addSubview(bak)
            
            } else if dude == false{
        }
    }
    
    //esto se hace cada vez que se presiona "Regresar" que desapareceria las imagenes
    
    func superAction(sender: UIButton!) {
        print("false")
        dude = false
        
        _ = UIBarButtonItem(
            title: "Continue",
            style: .plain,
            target: self,
            action: #selector(bakkAction(sender:))
        )

        dude = false
        
    }


    func buttonAction(sender: UIButton!) {
        print("Piedra tapped")
        let rand = arc4random_uniform(3) //alazarmente la computadora elije piedra, papel o tijera
        
        dude = true
        
        
        if rand == 0 { print("TIE") }
        else if rand == 1 { print("WIN") } //aqui debera enviar la imagen a seleccion arriba de la imagen "TEST"
        else if rand == 2 { print("LOSE") }
        
    }
    
    func button1Action(sender: UIButton!) {
        print("Papel1 tapped")
        let rand = arc4random_uniform(3)
        
        if rand == 0 { print("LOSE") }
        else if rand == 1 { print("TIE") }
        else if rand == 2 { print("WIN") }
        
    }
    
    func button2Action(sender: UIButton!) {
        print("Tijera2 tapped")
        let rand = arc4random_uniform(3)
        
        if rand == 0 { print("WIN") }
        else if rand == 1 { print("LOSE") }
        else if rand == 2 { print("TIE") }
        
    }
    
    
    func bakAction(sender: UIButton!) { //esto deberia esconder la el resultado, boton y nuevo fondo
        print("bak boton")
        dude = false
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
}
