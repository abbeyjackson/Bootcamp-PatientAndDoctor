//
//  main.m
//  PatientAndDoctor
//
//  Created by Abegael Jackson on 2015-05-07.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    Doctor *doctor = [[Doctor alloc] initWithName:@"Dr. Burns" andAge:83]; // create instance of Doctor with variable name "doctor"
        doctor.specialization = @"family doctor"; //string literal syntax
        
    Patient *patient1 = [[Patient alloc] initWithName:@"Sarah Smith" andAge:26]; // create instance of Patient with variable name "patient1"
        patient1.hasHealthCard = YES;
        [patient1.symptoms addObjectsFromArray:@[@"Headache", @"Dry skin", @"Fatigue"]]; //array literal syntax
    
    Patient *patient2 = [[Patient alloc] initWithName:@"Tom Smith" andAge:25];
        patient2.hasHealthCard = YES;
        [patient2.symptoms addObjectsFromArray:@[@"Headache", @"Stomach ache", @"Fatigue"]]; //array literal syntax
        
        [doctor acceptPatient:patient1];
        [doctor acceptPatient:patient2];
        
        [doctor printPatientList];
        
        [patient1 askDoctorName];
        [doctor sayName];
        [doctor askPatientName];
        [patient1 sayName];
        
        [patient1 askDoctorSpecialization];
        [doctor saySpecialization];
        
        [patient1 requestMedication:doctor];
        [doctor askForSymptoms];
        [patient1 listSymptoms];
        [doctor givePrescription];
        
        /* >>>>>> DID NOT DO TASK 4 AS PER DANNY <<<<<<<<<<< */
        
    }
    return 0;
}
