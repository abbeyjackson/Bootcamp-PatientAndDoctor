//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Abegael Jackson on 2015-05-07.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) BOOL hasHealthCard;
@property (nonatomic, strong) NSMutableArray* symptoms;


-(instancetype) initWithName:(NSString*)name andAge:(int)age;

-(void) askDoctorName;

-(void) sayName;

-(void) askDoctorSpecialization;

-(void) requestMedication:(Doctor*) doctor;

-(void) listSymptoms;

@end
