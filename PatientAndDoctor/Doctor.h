//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Abegael Jackson on 2015-05-07.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString* name; // declaring the properties of Doctor
@property (nonatomic, assign) int age;
@property (nonatomic, assign) NSString* specialization;

-(instancetype) initWithName:(NSString*)name andAge:(int)age; // this is shorthand, so that in main.m do not have to break everything up. "initWithName" can be anything we want.

-(void) sayName;

-(void) askPatientName;

-(void) saySpecialization;

-(void) acceptPatient:(Patient*)patient;

-(BOOL) isOnPatientList:(Patient*)patient;

-(void) printPatientList;

-(void) askForSymptoms;

-(void) givePrescription;

@end
