//
//  ScannerView.swift
//  Scan-Ocr
//
//  Created by Ammaar Khan on 16/11/2022.
//

import VisionKit
import SwiftUI

struct ScannerView:UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        return Coordinator(completion: completionHandler)
    }
    
    
    final class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
        private let completionHandler: ([String]?) -> Void
        
        init(completion: @escaping ([String]?) -> Void) {
            self.completionHandler = completion
        }
        
        func  documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
            completionHandler(nil)
        }
        
        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
            completionHandler(nil)
        }
    }
    
    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
        let viewController = VNDocumentCameraViewController()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: Context) {
    }
    
    typealias UIViewControllerType = VNDocumentCameraViewController
    
    
    private let completionHandler: ([String]?) -> Void
    
    init(completion: @escaping ([String]?)-> Void) {
        self.completionHandler = completion
    }
}

