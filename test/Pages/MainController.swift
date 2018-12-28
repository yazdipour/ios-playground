//
//  ViewController.swift
//  test
//
//  Created by Shahriar on 12/28/18.
//  Copyright © 2018 Shahriar. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLad<<<")
        view.backgroundColor = UIColor.white
        title = "Main Screen"
        addGradientBg()
        addTitleLabel()
        Utils.printAllAvailableFonts()
        addButton()
    }

    let gradientBg: GDGradient = {
        let bg = GDGradient()
        bg.layer.cornerRadius = 18
        return bg
    }()

    func addGradientBg() {
        view.addSubview(gradientBg) // ** First add to View then change margins
        gradientBg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        gradientBg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        gradientBg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        gradientBg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }

    func addTitleLabel() {
        //Custom Font Tip: Make sure font file is in TARGET (check file prop) + Add file name in Info.plist
        let titleLabel = GDLabel(text: "فونت کاستوم\nCustom Font", textColor: .white, textSize: 42, fontFamily: "IRANSans")
        titleLabel.numberOfLines = 2
        gradientBg.addSubview(titleLabel)
        UIFont.boldSystemFont(ofSize: 16.0)
        titleLabel.topAnchor.constraint(equalTo: gradientBg.topAnchor, constant: 60).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: gradientBg.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }

    let btn = UIButton()
    func addButton() {
        btn.backgroundColor = .white
        btn.setTitle("Next", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.myBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 8
        gradientBg.addSubview(btn)

        btn.bottomAnchor.constraint(equalTo: gradientBg.bottomAnchor, constant: -70).isActive = true
        btn.centerXAnchor.constraint(equalTo: gradientBg.centerXAnchor).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        //Add Animation
        btn.addTarget(self, action: #selector(self.handleButtonAnimation), for: [.touchUpInside, .touchDragOutside])
    }

    @objc func handleButtonAnimation() { // @objc to expose to ObjectiveC
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9,
            initialSpringVelocity: 1, options: .curveEaseIn,
            animations: { self.btn.transform = CGAffineTransform(scaleX: 0.9, y: 0.9) }
        ) {
            (_) in UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: { self.btn.transform = CGAffineTransform(scaleX: 1, y: 1) }
            ) { (_) in
                let SC = SecondController();
                SC.title = "Second Screen";
                //self.present(SC, animated: true)
                self.navigationController?.pushViewController(SC, animated: true)
            }
        }
    }

    //            @IBOutlet weak var btn: UIButton!
    //            @IBAction func colorbtn(_ sender: Any) {
    //                btn.tintColor = UIColor.red;
    //            }
}
