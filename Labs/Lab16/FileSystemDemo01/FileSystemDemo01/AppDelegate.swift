//
//  AppDelegate.swift
//  FileSystemDemo01
//
//  Created by Rozheen Nersisyan Malhami on 3/3/23.
//

import UIKit



@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Override point for customization after application launch.

        let lDocsPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last

        if let lDocsString: NSString = lDocsPath as NSString? {

            let lFileNameWithPath = lDocsString.appendingPathComponent("theFile.txt")
            print("in appDelegate: lDocspath is \(String(describing: lDocsPath))")
            print("in appDelegate: lDocspath is \(lDocsString)")
            print("in appDelegate: lDocspath is \(lFileNameWithPath)")

        }

        if let myTMPDirPath: NSString = NSTemporaryDirectory() as NSString? {
            let myTMPFilePath = myTMPDirPath.appendingPathComponent("aTemporaryFilename.txt")

            print("in appDelegate: lDocspath is \(myTMPFilePath)")
        }

        createDirectoryAction()
        createFileAction()
        
        return true

    }

    // MARK: UISceneSession Lifecycle



    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }




    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {}

    

    

    var theFolderNameURLWithPath = URL(fileURLWithPath: "")

    

    func createDirectoryAction() {

        let lFM = FileManager()

        

        let lDocumentsDirectoryURl = try! lFM.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)

        print("***** in createDirectoryAction, the URL for 'Documents/' is... \n")
        print("***** \(lDocumentsDirectoryURl) \n")

        

        let lFolderNameURLWithPath = lDocumentsDirectoryURl.appendingPathComponent("MyFolder", isDirectory: true)

        do {

            try lFM.createDirectory(at: lFolderNameURLWithPath, withIntermediateDirectories: true, attributes: nil)

            self.theFolderNameURLWithPath = lFolderNameURLWithPath

        } catch let err as NSError {
            print("***** DANGER \(err) detected when creating directory *****\n")

        }
    }

    

    func createFileAction() {

        let lFileNameURLWithPath = self.theFolderNameURLWithPath.appendingPathComponent("theUnicodeFile.txt")
        
        do {

            try "Hello World, this file is going to the source now".write(to: lFileNameURLWithPath, atomically: true, encoding: String.Encoding.utf8)

        
            print("***** in createFileAction, the URL for the new file ...\n")
            print("***** \(lFileNameURLWithPath) \n")

        } catch let err as NSError {

            print("***** DANGER \(err) detected when creating directory *****\n")

        }

        

    }







}
