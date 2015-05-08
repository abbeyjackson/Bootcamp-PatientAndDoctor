//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Abegael Jackson on 2015-05-07.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"


@implementation Patient


-(instancetype) initWithName:(NSString*)name andAge:(int)age{
    self = [super init];
    
    if (self){
        self.name = name;
        self.age = age;
        _symptoms = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void) sayName {
    NSLog(@"My name is %@", self.name);
}


-(void) askDoctorName; {
    NSLog(@"What is your name?");
}


-(void) askDoctorSpecialization {
    NSLog(@"What is your specialization?");
}


-(void) requestMedication:(Doctor*) doctor{
    if ([doctor isOnPatientList:self]) { // methods are enclosed in []
        NSLog(@"I am not feeling well. Can I get a prescription?");// request prescription
    }
}


-(void) listSymptoms{
    NSLog(@"My symptoms are:");
        NSLog(@"%@", _symptoms);
}



@end
