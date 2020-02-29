//
//  SelectorVC.swift
//  QRReaderExample

import UIKit

class SelectorVC: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        textView.contentOffset = .zero
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SelectorToScanner" {
            let destVC = segue.destination as! ScannerVC
            destVC.delegate = self
        }
    }

}

extension SelectorVC: ScannerVCDelegate {
    
    func sendInfo(info: String) {
        print("INFO RECEIVED \(info)")
        textView.text = info
    }
}

