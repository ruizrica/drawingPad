//
//  LessonModel.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/20/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "LessonModel.h"

@implementation LessonModel
@synthesize symbols, userInput;

// Lesson 1
@synthesize lesson_1,lesson_1A,lesson_1B,lesson_1C,lesson_1D,lesson_1E;
// Lesson 2
@synthesize lesson_2,lesson_2A,lesson_2B,lesson_2C,lesson_2D,lesson_2E;
// Lesson 3
@synthesize lesson_3,lesson_3A,lesson_3B,lesson_3C,lesson_3D,lesson_3E;
// Lesson 4
@synthesize lesson_4,lesson_4A,lesson_4B,lesson_4C,lesson_4D,lesson_4E;
// Lesson 5
@synthesize lesson_5,lesson_5A,lesson_5B,lesson_5C,lesson_5D,lesson_5E;
// Lesson 6
@synthesize lesson_6,lesson_6A,lesson_6B,lesson_6C,lesson_6D,lesson_6E;
// Lesson 7
@synthesize lesson_7,lesson_7A,lesson_7B,lesson_7C,lesson_7D,lesson_7E;
// Lesson 8
@synthesize lesson_8,lesson_8A,lesson_8B,lesson_8C,lesson_8D,lesson_8E;
// Lesson 9
@synthesize lesson_9,lesson_9A,lesson_9B,lesson_9C,lesson_9D,lesson_9E;
// Lesson 10
@synthesize lesson_10,lesson_10A,lesson_10B,lesson_10C,lesson_10D,lesson_10E;
// Lesson 11
@synthesize lesson_11,lesson_11A,lesson_11B,lesson_11C,lesson_11D,lesson_11E;
// Lesson 12
@synthesize lesson_12,lesson_12A,lesson_12B,lesson_12C,lesson_12D,lesson_12E;
// Lesson 13
@synthesize lesson_13,lesson_13A,lesson_13B,lesson_13C,lesson_13D,lesson_13E;
// Lesson 14
@synthesize lesson_14,lesson_14A,lesson_14B,lesson_14C,lesson_14D,lesson_14E;
// Lesson 15
@synthesize lesson_15,lesson_15A,lesson_15B,lesson_15C,lesson_15D,lesson_15E;
// Lesson 16
@synthesize lesson_16,lesson_16A,lesson_16B,lesson_16C,lesson_16D,lesson_16E;
// Lesson 17
@synthesize lesson_17,lesson_17A,lesson_17B,lesson_17C,lesson_17D,lesson_17E;
// Lesson 18
@synthesize lesson_18,lesson_18A,lesson_18B,lesson_18C,lesson_18D,lesson_18E;
// Lesson 19
@synthesize lesson_19,lesson_19A,lesson_19B,lesson_19C,lesson_19D,lesson_19E;
// Lesson 20
@synthesize lesson_20,lesson_20A,lesson_20B,lesson_20C,lesson_20D,lesson_20E;

#pragma mark - Methods
- (NSArray *)getLessonWithID:(int)lesson_ID {
    
    NSArray *selectedArray = [[NSArray alloc]init];
    switch (lesson_ID) {
        case 1: selectedArray = lesson_1;
            break;
        case 2: selectedArray = lesson_2;
            break;
        case 3: selectedArray = lesson_3;
            break;
        case 4: selectedArray = lesson_4;
            break;
        case 5: selectedArray = lesson_5;
            break;
        case 6: selectedArray = lesson_6;
            break;
        case 7: selectedArray = lesson_7;
            break;
        case 8: selectedArray = lesson_8;
            break;
        case 9: selectedArray = lesson_9;
            break;
        case 10: selectedArray = lesson_10;
            break;
        case 11: selectedArray = lesson_11;
            break;
        case 12: selectedArray = lesson_12;
            break;
        case 13: selectedArray = lesson_13;
            break;
        case 14: selectedArray = lesson_14;
            break;
        case 15: selectedArray = lesson_15;
            break;
        case 16: selectedArray = lesson_16;
            break;
        case 17: selectedArray = lesson_17;
            break;
        case 18: selectedArray = lesson_18;
            break;
        case 19: selectedArray = lesson_19;
            break;
        case 20: selectedArray = lesson_20;
            break;
            
        default:
            break;
    }
    return selectedArray;
}
- (id)init {
    self = [super init];
    if (self) {
        

        // Image Arrays:
        lesson_1 = @[@"symbol_1.png",@"symbol_2.png",@"symbol_3.png",@"symbol_4.png",@"symbol_5.png",@"symbol_6.png",@"symbol_7.png",@"symbol_8.png",@"symbol_9.png",@"symbol_10.png"];
        //lesson_1 = @[lesson_1A,lesson_1B,lesson_1C,lesson_1D,lesson_1E];
        //lesson_2 = @[lesson_2A,lesson_2B,lesson_2C,lesson_2D,lesson_2E];
        //lesson_3 = @[lesson_3A,lesson_3B,lesson_3C,lesson_3D,lesson_3E];
        //lesson_4 = @[lesson_4A,lesson_4B,lesson_4C,lesson_4D,lesson_4E];
        //lesson_5 = @[lesson_5A,lesson_5B,lesson_5C,lesson_5D,lesson_5E];
        //lesson_6 = @[lesson_6A,lesson_6B,lesson_6C,lesson_6D,lesson_6E];
        //lesson_7 = @[lesson_7A,lesson_7B,lesson_7C,lesson_7D,lesson_7E];
        //lesson_8 = @[lesson_8A,lesson_8B,lesson_8C,lesson_8D,lesson_8E];
        //lesson_9 = @[lesson_9A,lesson_9B,lesson_9C,lesson_9D,lesson_9E];
        //lesson_10 = @[lesson_10A,lesson_10B,lesson_10C,lesson_10D,lesson_10E];
        //lesson_11 = @[lesson_11A,lesson_11B,lesson_11C,lesson_11D,lesson_11E];
        //lesson_12 = @[lesson_12A,lesson_12B,lesson_12C,lesson_12D,lesson_12E];
        //lesson_13 = @[lesson_13A,lesson_13B,lesson_13C,lesson_13D,lesson_13E];
        //lesson_14 = @[lesson_14A,lesson_14B,lesson_14C,lesson_14D,lesson_14E];
        //lesson_15 = @[lesson_15A,lesson_15B,lesson_15C,lesson_15D,lesson_15E];
        //lesson_16 = @[lesson_16A,lesson_16B,lesson_16C,lesson_16D,lesson_16E];
        //lesson_17 = @[lesson_17A,lesson_17B,lesson_17C,lesson_17D,lesson_17E];
        //lesson_18 = @[lesson_18A,lesson_18B,lesson_18C,lesson_18D,lesson_18E];
        //lesson_19 = @[lesson_19A,lesson_19B,lesson_19C,lesson_19D,lesson_19E];
        //lesson_20 = @[lesson_20A,lesson_20B,lesson_20C,lesson_20D,lesson_20E];
        
        // Sub-Sections
        // Lesson 1
        //lesson_1A = @[];
        //lesson_1B = @[@"3", @"2", @"5",@"8",@"9",@"11",@"21",@"50",@"32", @"44"];
        //lesson_1C = @[@"B",@"F",@"A",@"G", @"O",@"ST",@"BL",@"VX", @"CQ",@"JM"];
        //lesson_1D = @[@"on",@"had",@"a",@"for",@"it", @"the",@"him",@"no",@"and",@"that"];
        //lesson_1E = @[@"had",@"it",@"that",@"him",@"a",@"and",@"no",@"for",@"on",@"the"];

        // Lesson 2
        //lesson_2A =@[];
        //lesson_2B = @[@"9",@"3", @"8", @"2", @"4",@"13", @"82", @"31", @"99", @"67"];
        //lesson_2C = @[@"N",@"P",@"A",@"Z",@"R",@"OA",@"PF",@"DL",@"SL",@"ZJ"];
        //lesson_2D = @[@"we",@"did",@"you",@"will",@"but",@"put",@"I",@"he",@"one",@"is"];
        //lesson_2E = @[@"I",@"but",@"will",@"did",@"he",@"you",@"one",@"we",@"is",@"put"];
    
        // Lesson 3
        //lesson_3A = @[];
        //lesson_3B = @[@"4",@"8",@"2",@"1",@"3",@"48",@"23",@"49",@"82",@"77"];
        //lesson_3C = @[@"F",@"T",@"U",@"P",@"Y",@"BL",@"NA",@"PR",@"DL",@"CE"];
        //lesson_3D = @[@"in",@"some",@"go",@"to",@"with",@"me",@"then",@"his",@"when",@"have"];
        //lesson_3E = @[@"with",@"his",@"to",@"have",@"go",@"me",@"then",@"in",@"some",@"when"];
        
        // Lesson 4
        //lesson_4A = @[];
        //lesson_4B = @[@"5",@"9",@"3",@"7",@"4",@"22",@"85",@"53",@"68",@"77"];
        //lesson_4C = @[@"C",@"D",@"F",@"N",@"P",@"QS",@"XZ",@"AD",@"KF",@"GV"];
        //lesson_4D = @[@"not",@"at",@"she",@"all",@"said",@"was",@"come",@"this",@"so",@"what"];
        lesson_4E = @[@"she",@"come",@"not",@"what",@"was",@"at",@"this",@"said",@"all",@"so"];
        
        // Lesson 5
        lesson_5B = @[@"3",@"9",@"2",@"1",@"18",@"63",@"123",@"862",@"482",@"915"];
        lesson_5C = @[@"F",@"Z",@"I",@"S",@"FQ",@"AJ",@"ZR",@"JW",@"HG",@"JG"];
        lesson_5D = @[@"or",@"get",@"little",@"they",@"got", @"run",@"would", @"about", @"can", @"be"];
        lesson_5E = @[@"can",@"they",@"be",@"little",@"run",@"get",@"about",@"would",@"or",@"got"];
        
        // Lesson 6
        lesson_6B = @[@"8",@"1",@"7",@"5",@"42",@"61",@"98",@"397",@"265",@"442"];
        lesson_6C = @[@"K",@"H",@"S",@"P",@"MN",@"BG",@"IU",@"ZAS",@"TWV",@"SRB"];
        lesson_6D = @[@"see",@"came",@"of",@"their",@"were",@"two",@"them",@"saw",@"from",@"morning"];
        lesson_6E = @[@"two",@"were",@"saw",@"see",@"came",@"them",@"their",@"of",@"morning",@"from"];
        
        // Lesson 7
        lesson_7B = @[@"13",@"46",@"91",@"22",@"73",@"861",@"559",@"811",@"298",@"376"];
        lesson_7C = @[@"JK",@"TR",@"KB",@"XC",@"AA",@"GRT",@"QZE",@"SNA",@"DYK",@"ONB"];
        lesson_7D = @[@"new",@"out",@"if",@"good",@"back",@"an",@"just",@"went",@"left",@"man"];
        lesson_7E = @[@"man",@"just",@"if",@"left",@"an",@"out",@"went",@"back",@"good",@"new"];
        
        // Lesson 8
        lesson_8B = @[@"99",@"12",@"54",@"62",@"78",@"662",@"239",@"434",@"519",@"922"];
        lesson_8C = @[@"DF",@"WT",@"SP",@"AG",@"NV",@"WCW",@"JHP",@"CFF",@"GAZ",@"BEL"];
        lesson_8D = @[@"old",@"very",@"ran",@"let",@"high",@"eat",@"into",@"want",@"much",@"father"];
        lesson_8E = @[@"into",@"want",@"let",@"much",@"old",@"eat",@"high",@"ran",@"very",@"father"];
        
        // Lesson 9
        lesson_9B = @[@"36",@"19",@"42",@"896",@"221",@"771",@"8324",@"9169",@"2131",@"1114"];
        lesson_9C = @[@"UT",@"AC",@"IA",@"NZM",@"CDC",@"MOF",@"CQRT",@"KJDO",@"PSJZ",@"OAFS"];
        lesson_9D = @[@"big",@"know",@"find",@"next",@"each",@"am",@"your",@"night",@"open",@"every"];
        lesson_9E = @[@"find",@"night",@"your",@"am",@"big",@"every",@"each",@"know",@"next",@"open"];
        
        // Lesson 10
        lesson_10B = @[@"33",@"62",@"178",@"923",@"672",@"828",@"2191",@"3928",@"5411",@"8676"];
        lesson_10C = @[@"NB",@"QL",@"FGA",@"BCO",@"YSE",@"CCO",@"BLKO",@"UCEE",@"WRPR",@"DBDB"];
        lesson_10D = @[@"just",@"want",@"if",@"find",@"man",@"big",@"good",@"ran",@"very",@"back"];
        lesson_10E = @[@"want",@"good",@"find",@"man",@"if",@"big",@"back",@"very",@"just",@"ran"];
        
        // Lesson 11
        lesson_11B = @[@"31",@"98",@"162",@"977",@"226",@"488",@"255",@"9677",@"3712",@"1133"];
        lesson_11C = @[@"FL",@"UQ",@"AAC",@"DOQ",@"XVW",@"BJL",@"IRS",@"MONB",@"TACG",@"BMWV"];
        lesson_11D = @[@"tree",@"bring",@"men",@"white",@"as",@"again",@"work",@"day",@"around",@"after"];
        lesson_11E = @[@"day",@"white",@"around",@"men",@"after",@"work",@"again",@"tree",@"as",@"bring"];
        
        // Lesson 12
        lesson_12B = @[@"18",@"62",@"334",@"498",@"8623",@"7711",@"6799",@"1888",@"9676",@"5416"];
        lesson_12C = @[@"GL",@"ME",@"GZB",@"AUF",@"TRRT",@"NMOO",@"BCDC",@"AZVW",@"HCOB",@"PWIK"];
        lesson_12D = @[@"girl",@"walk",@"year",@"more",@"live",@"cold",@"seven",@"never",@"home",@"many"];
        lesson_12E = @[@"home",@"seven",@"year",@"more",@"walk",@"could",@"girl",@"never",@"many",@"live"];
        
        // Lesson 13
        lesson_13A = @[@"L3",@"4B",@"Q2",@"2V",@"4F",@"W9",@"6A",@"Y2",@"A6",@"Y3"];
        lesson_13B = @[@"S2",@"3V",@"W9",@"3Z",@"F1",@"U9",@"H7",@"Z8",@"9A",@"E2"];
        lesson_13C = @[@"tree",@"live",@"am",@"never",@"know",@"girl",@"after",@"again",@"seven",@"white"];
        lesson_13D = @[@"am",@"seven",@"tree",@"girl",@"know",@"live",@"white",@"never",@"after",@"again"];
        
        // Lesson 14
        lesson_14A = @[@"2F",@"T8",@"9O",@"C3",@"8D",@"1R",@"T3",@"B9",@"1K",@"D5"];
        lesson_14B = @[@"Q6",@"K9",@"8U",@"Z2",@"X4",@"2A",@"I9",@"7B",@"H2",@"3J"];
        lesson_14C = @[@"been",@"how",@"boy",@"over",@"jump",@"thing",@"only",@"funny",@"like",@"try"];
        lesson_14D = @[@"like",@"over",@"funny",@"only",@"boy",@"try",@"jump",@"thing",@"been",@"how"];
        
        // Lesson 15
        lesson_15A = @[@"A8",@"6L",@"V3",@"9C",@"K6",@"3T",@"O1",@"9G",@"4Z",@"X2"];
        lesson_15B = @[@"G3",@"W2",@"L9",@"6A",@"H2",@"S4",@"3G",@"9T",@"P2",@"B4"];
        lesson_15C = @[@"my",@"mother",@"who",@"last",@"box",@"take",@"long",@"because",@"any",@"before"];
        lesson_15D = @[@"take",@"last",@"any",@"who",@"long",@"mother",@"my",@"before",@"box",@"because"];
        
        // Lesson 16
        lesson_16A = @[@"on",@"did",@"some",@"this",@"will",@"come",@"have",@"when",@"put",@"that"];
        lesson_16B = @[@"said",@"what",@"was",@"but",@"one",@"the",@"with",@"no",@"on",@"you"];
        lesson_16C = @[@"must",@"same",@"head",@"other",@"best",@"eyes",@"down",@"school",@"off",@"show"];
        lesson_16D = @[@"off",@"school",@"down",@"same",@"other",@"head",@"best",@"eyes",@"must",@"show"];
        
        // Lesson 17
        lesson_17A = @[@"about",@"they",@"left",@"want",@"much",@"morning",@"little",@"would",@"very",@"father"];
        lesson_17B = @[@"were",@"their",@"back",@"two",@"from",@"high",@"went",@"get",@"old",@"into"];
        lesson_17C = @[@"how",@"best",@"jump",@"off",@"over",@"because",@"who",@"before",@"last",@"like"];
        lesson_17D = @[@"last",@"jump",@"over",@"off",@"because",@"how",@"like",@"who",@"best",@"before"];
        
        // Lesson 18
        lesson_18A = @[@"open",@"walk",@"year",@"thing",@"next",@"every",@"could",@"many",@"been",@"jump"];
        lesson_18B = @[@"white",@"find",@"know",@"your",@"around",@"again",@"after",@"only",@"how",@"who"];
        lesson_18C = @[@"by",@"better",@"dog",@"three",@"has",@"should",@"up",@"cold",@"these",@"right"];
        lesson_18D = @[@"cold",@"should",@"dog",@"three",@"these",@"by",@"right",@"has",@"up",@"better"];
        
        // Lesson 19
        lesson_19A = @[@"night",@"men",@"work",@"home",@"girl",@"all",@"not",@"then",@"his",@"him"];
        lesson_19B = @[@"and",@"what",@"they",@"came",@"ran",@"want",@"went",@"their",@"many",@"seven"];
        lesson_19C = @[@"away",@"sleep",@"people",@"ride",@"too",@"fast",@"book",@"small",@"face",@"hard"];
        lesson_19D = @[@"hard",@"sleep",@"people",@"small",@"too",@"fast",@"book",@"face",@"away",@"ride"];
        
        // Lesson 20
        lesson_20A = @[@"should",@"better",@"school",@"off",@"of",@"because",@"before",@"people",@"face", @"mother"];
        lesson_20B = @[@"any",@"best",@"away",@"these", @"right", @"could", @"cold",@"three", @"who", @"down"];
        lesson_20C = @[@"by",@"fast",@"show",@"these", @"ride", @"eyes", @"away",@"right", @"face", @"people"];
        lesson_20D = @[@"ride",@"eyes",@"show",@"face", @"right", @"by", @"people",@"these", @"fast", @"away"];
    }
    return self;
}
@end
