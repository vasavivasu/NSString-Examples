//
//  AppDelegate.m
//  NSString Examples
//
//  Created by vasavi vemuru on 8/3/15.
//  Copyright (c) 2015 vasavi vemuru. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSString *str = @"Hello World Hello";
    
    NSString *str2 = @"Hello";
    
  
    
    
    
    //length of a String
    
    NSUInteger length = [str length];
    
    NSLog(@"the length of an String is %lu",(unsigned long)length);
    
    
    
    //Printing a String
    
    NSLog(@"string is %@",str);
    
    
    
    //upper case
    
    NSString *uppercaseString =[str uppercaseString];
    
    NSString *lowerCaseStr = [str lowercaseString];
    
    NSLog(@"uppercaseString is %@ and lowerCaseStr is %@",uppercaseString,lowerCaseStr);
          
          
          
          //SubString
          
          NSString *fromSubStr= [str substringFromIndex:6];
          
          NSLog(@"fromSubStr is %@",fromSubStr);
          
          
          
          NSString *toSubStr = [str substringToIndex:5];
          
          NSLog(@"toSubStr is %@",toSubStr);
    
    
         NSArray *splitArray = [str componentsSeparatedByString:@" "];
    
         NSLog(@"split array is %@",splitArray);
          
          
    
          int x = 2;
          
          float y = 4.4;
          
          NSString *foramattedStr = [NSString stringWithFormat:@"%d%@%0.1f",x,str2,y];
                                     
                                     NSLog(@"foramattedStr is %@",foramattedStr);
                                     
                                     
                                     
                                     //Appending
                                     
         NSMutableString *aMutStr = [[NSMutableString alloc]initWithString:@"Hello"];
                                     
                                     NSLog(@"amut Str is %@",aMutStr);
                                     
                                     [aMutStr appendString:@" World tha is fdsfdsf tha"];
                                     
                                     NSLog(@"amutStr after appending is %@",aMutStr);
                                     
                                     //Replacing a String
                                     
                                     [aMutStr replaceOccurrencesOfString:@"tha" withString:@"the" options:NSLiteralSearch    range:NSMakeRange(0, [aMutStr length])];
                                     
                                     NSLog(@"after replacing of the string is %@",aMutStr);
                                     
                                     
                                     
                                     //convertions
                                     
                                     NSString *str4 = @"12";
                                     
                                     NSString *str5 = @"4.4";
                                     
                                     int p= [str4 intValue];
                                     
                                     float q = [str5 floatValue];
                                     
                                     NSLog(@"p = %d and q = %0.1f",p+3,q);
                                     
                                     
                                     
                                     //getting the charecter using index
                                     
                                     char ch = [str characterAtIndex:1];
                                     
                                     NSLog(@"charecter is %c",ch);
                                     
                                     
                                     
                                     //Witing the String to a File
                                     
                                     [str writeToFile:@"path" atomically:YES encoding:NSUTF8StringEncoding 
                                      
                                                error:nil];
                                     
    
                                     NSRange range = [str rangeOfString:@"Hello"];   
                                     
                                     if(range.location!=NSNotFound)
                                     
                                     NSLog(@"Hello is there in str the location is %lu",(unsigned long)range.location);
                                     
                                     else
                                     
                                     NSLog(@"Hello Not Found");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this methodto pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
