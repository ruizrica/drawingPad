//
//  LessonModel.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/20/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "LessonModel.h"

@implementation LessonModel
@synthesize title, symbols, lessonID, userInput;

// Lessons
@synthesize lesson_1;

- (id)init {
    self = [super init];
    if (self) {
        
        // Image Arrays
        lesson_1 = @[@"symbol_1.png",@"symbol_2.png",@"symbol_3.png",@"symbol_4.png",@"symbol_5.png",@"symbol_6.png",@"symbol_7.png",@"symbol_8.png",@"symbol_9.png",@"symbol_10.png"];
        lesson_2A =@[@""];
        
        
        // Text Arrays
        lesson_2B = @[@"9",@"3", @"8", @"2", @"4",@"13", @"82", @"31", @"99", @"67"];
        lesson_2C = @[@"N",@"P",@"A",@"Z",@"R";"OA",@"PF",@"DL",@"SL",@"ZJ"];
        lesson_2D = @[@"we",@"did",@"you",@"will",@"but",@"put"@"I",@"he",@"one",@"is"];
        lesson_2E = @[@"I",@"but",@"will",@"did",@"he",@"you",@"one",@"we",@"is",@"put"];
    
        lesson_3B = @[@"4",@"8",@"2",@"1",@"3",@"48",@"23",@"49",@"82",@"77"];
        lesson_3C = @[@"F",@"T",@"U",@"P",@"Y",@"BL",@"NA",@"PR",@"DL",@"CE"];
        lesson_3D = @[@"in",@"some",@"go",@"to",@"with",@"me",@"then",@"his",@"when",@"have"];
        lesson_3E = @[@"with",@"his",@"to",@"have",@"go",@"me",@"then",@"in",@"some",@"when"];
        
        lesson_4B = @[@"5",@"9",@"3",@"7",@"4",@"22",@"85",@"53",@"68",@"77"];
        lesson_4C = @[@"C",@"D",@"F",@"N",@"P",@"QS",@"XZ",@"AD",@"KF",@"GV"];
        lesson_4D = @[@"not",@"at",@"she",@"all",@"said",@"was",@"come",@"this",@"so",@"what"];
        lesson_4E = @[@"she",@"come",@"not",@"what",@"was",@"at",@"this",@"said",@"all",@"so"];
        
        
        lesson_5B = @[@"3",@"9",@"2",@"1",@"18",@"63",@"123",@"862",@"482",@"915"];
        lesson_5C = @[@"F",@"Z",@"I",@"S",@"FQ",@"AJ",@"ZR",@"JW",@"HG",@"JG"];
        lesson_5D = @[@"or",@"get",@"little",@"they",@"got", @"run",@"would", @"about", @"can", @"be"];
        lesson_5E = @[@"can",@"they",@"be",@"little",@"run",@"get",@"about",@"would",@"or",@"got"];
        
        lesson_6B = @[@"8",@"1",@"7",@"5",@"42",@"61",@"98",@"397",@"265",@"442"];
        lesson_6C = @[@"K",@"H",@"S",@"P",@"MN",@"BG",@"IU",@"ZAS",@"TWV",@"SRB"];
        lesson_6D = @[@"see",@"came",@"of",@"their",@"were",@"two",@"them",@"saw",@"from",@"morning"];
        lesson_6E = @[@"two",@"were",@"saw",@"see",@"came",@"them",@"their",@"of",@"morning",@"from"];
        
        lesson_7B = @[@"13",@"46",@"91",@"22",@"73",@"861",@"559",@"811",@"298",@"376"];
        lesson_7C = @[@"JK",@"TR",@"KB",@"XC",@"AA",@"GRT",@"QZE",@"SNA",@"DYK",@"ONB"];
        lesson_7D = @[@"new",@"out",@"if",@"good",@"back",@"an",@"just",@"went",@"left",@"man"];
        lesson_7E = @[@"man",@"just",@"if",@"left",@"an",@"out",@"went",@"back",@"good",@"new"];
        
        lesson_8B = @[@"99",@"12",@"54",@"62",@"78",@"662",@"239",@"434",@"519",@"922"];
        lesson_8C = @[@"DF",@"WT",@"SP",@"AG",@"NV",@"WCW",@"JHP",@"CFF",@"GAZ",@"BEL"];
        lesson_8D = @[@"in",@"some",@"go",@"to",@"with",@"me",@"then",@"his",@"when",@"have"];
        
        
    }
     }
        
    }
    return self;
}


- (NSArray *)getLessonWithID:(int)lesson_ID {
    
    NSArray *selectedArray = [[NSArray alloc]init];
    switch (lesson_ID) {
        case 1: selectedArray = lesson_1;
            break;
    // Need Rest of Lessons
        default:
            break;
    }
    return selectedArray;
}
@end
