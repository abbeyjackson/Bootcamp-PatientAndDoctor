//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Abegael Jackson on 2015-05-07.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor{
    NSMutableArray *_patients;
    NSDictionary *_prescriptions;
};

-(instancetype) initWithName:(NSString*)name andAge:(int)age{
    self = [super init];
    
    if (self) {
        self.name = name; // assigning the variable "name" (from above) to the property "name" of the object Doctor. In this case the variable "name" is just a variable to say what to pass to the property. In main.m the variable "doctor" (an instance of Doctor with a variable name of "doctor") is an object containing the property "name", which has been passed the information included in the variable "name".
        self.age = age;
        self.specialization = @"doctor";
        _patients = [[NSMutableArray alloc] init];
        _prescriptions = @{@"Headache":@"Tylenol", @"Dry skin":@"Lotion", @"Stomach ache":@"Tums", @"Fatigue":@"Redbull" };
    }
    return self;
}

-(BOOL) isOnPatientList:(Patient*)patient { //passing instance of patient ("Sara Smith" would be an instance of patient called "patient1") to isOnPatientList
    
    if ([_patients containsObject:patient]) {
        return YES;
    }
    
    return NO;
}

/* Alternate method:
    for (Patient* eachPatient in _patients) { // go through the array _patients and see if the name of whomever this method is called on is in the array.
        if (eachPatient == patient) {
            return YES;
        }
    }
*/



-(void) sayName {
    NSLog(@"My name is %@", self.name);
}


-(void) askPatientName; {
    NSLog(@"What is your name?");
}


-(void) saySpecialization; {
    NSLog(@"I am a %@.", self.specialization);
}


-(void) acceptPatient:(Patient*)patient{
    if (patient.hasHealthCard == YES) {
        [_patients addObject:patient]; //addObject is part of MutableArray
    }
   
}


-(void) printPatientList{
    NSLog(@"Patient list:");
    for (Patient* eachPatient in _patients) {
        NSLog(@"%@", eachPatient.name);
    }
}


-(void) askForSymptoms{
    NSLog(@"What are your symptoms?");
}


- (void)givePrescription {
    
    for (Patient *patient in _patients) {
        NSString *cures = @"";
        for (NSString *symptom in patient.symptoms) {
            cures = [cures stringByAppendingString:_prescriptions[symptom]]; //_prescriptions[symptom] is looking at the key and will return the value
            
            if (![patient.symptoms.lastObject isEqual:symptom]) {
                cures = [cures stringByAppendingString:@", "];
            }
        }
        NSLog(@"%@ needs %@",patient.name, cures);
    }   
}


@end
