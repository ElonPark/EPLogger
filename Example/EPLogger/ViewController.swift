//
//  ViewController.swift
//  EPLogger
//
//  Created by elon on 08/29/2019.
//  Copyright (c) 2019 elon. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Log.verbose("This is verbose")
        Log.debug("This is debug")
        Log.info("This is info")
        Log.warning("This is warning")
        Log.error("This is error")
        
        logItem()
        logItems()
        
        changeFormat()
        changeLogLevelHeader()
        changeSeparator()
    }
    
    private func logItem() {
        print("\n - item")
        
        let text = "Sample String!"
        Log.verbose(text)
        Log.verbose(useDebugPrint: true, text)
        Log.verbose(useDump: true, text)
        
        print("")
        
        let sample = SampleStruct()
        Log.debug(sample)
        Log.debug(useDebugPrint: true, sample)
        Log.debug(useDump: true, sample)
        
        print("")
        
        Log.verbose(StringEnum.normal)
        Log.verbose(useDebugPrint: true, StringEnum.vip)
        Log.verbose(useDump: true, StringEnum.vvip)
        
        print("")
        
        Log.debug(IntEnum.one)
        Log.debug(useDebugPrint: true, IntEnum.one)
        Log.debug(useDump: true, IntEnum.two)
    }
    
    private func logItems() {
        print("\n - items")
        
        let text = "Sample String2!"
        let sample = SampleStruct()
        Log.verbose(text, sample, StringEnum.vvip, IntEnum.two)
        Log.verbose(useDebugPrint: true, text, sample, StringEnum.vvip, IntEnum.two)
        Log.verbose(useDump: true, text, sample, StringEnum.vvip, IntEnum.two)
    }
    
    private func changeFormat() {
        print("\n - change format")
        Log.congfig(formatType: .short)
        Log.verbose("short")
        
        Log.congfig(formatType: .medium)
        Log.debug("medium")
        
        Log.congfig(formatType: .long)
        Log.info("long")
        
        Log.congfig(formatType: .full)
        Log.warning("full")
    }
    
    private func changeLogLevelHeader() {
        Log.congfig(formatType: .short)
        print("\n - change log level header")
        Log.congfig(customLevelHeader: [
            .verbose: "VERBOSE",
            .debug: "DEBUG"
        ])
        Log.verbose("This is verbose")
        Log.debug("This is debug")
        Log.info("This is info")
        Log.warning("This is warning")
        Log.error("This is error")
    }
    
    private func changeSeparator() {
        print("\n - change separator")
        Log.congfig(separator: ": ")
        Log.info("Hello")
        Log.warning("world!")
        print("")
        
        Log.congfig(
            level: .debug,
            formatType: .medium,
            separator: " -> "
        )
        Log.verbose("This is verbose")
        Log.debug("This is debug")
        Log.info("This is info")
        Log.warning("This is warning")
        Log.error("This is error")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        Log.warning("Memory Warning!")
    }
}

