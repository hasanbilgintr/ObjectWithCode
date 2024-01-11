//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by hasan bilgin on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let myLabel=UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //kısa yol command+a iletümünü seçip command+i yapılırsa kod hizalaması yapar
        //kısa yol command+control+esc görev yöneticisisi kapanmayan programları zorla kapatır
        
        //ekran widht ve height almak
        let widht=view.frame.size.width
        let height=view.frame.size.height
        
        //storyboardsız Label oluşturma
        
        myLabel.text="Test Label"
        //yazı yeri
        myLabel.textAlignment = .center
        //çerçevesş belirleme
        myLabel.frame=CGRect(x: widht * 0.5-widht * 0.8 / 2, y:height * 0.5 - 50 / 2, width: widht * 0.8, height: 50)
        //view burda storyboarddaki view demektir
        view.addSubview(myLabel)
        
        //Button oluşturma
        let myButton=UIButton()
        // <#T##UIControl.State#> entere basılırsa direk fonksiyonları gelir (üstünde iken)
        //title başlığı ve normal ise normal button
        myButton.setTitle("My Button", for: UIControl.State.normal)
        //title rengi ve nromal olması
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame=CGRect(x: widht * 0.5 - 100, y: height * 0.6 , width: 200, height: 200)
        view.addSubview(myButton)
    
        //butona tıklanınca yapmak için
        //self viewConroller dir
        //touchUpInside butona tıklanınca anlamına geliyor
        myButton.addTarget(self, action:#selector(ViewController.myAction) , for: UIControl.Event.touchUpInside)
        
        
    }
    
    @objc func myAction(){
        print("onClick")
        myLabel.text="Tıklandı"
        
    }
    
    
    
}

