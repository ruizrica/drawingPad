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
        lesson_8D = @[@"old",@"very",@"ran",@"let",@"high",@"eat",@"into",@"want",@"much",@"father"];
        lesson_8E = @[@"into",@"want",@"let",@"much",@"old",@"eat",@"high",@"ran",@"very",@"father"];
        
        lesson_9B = @[@"36",@"19",@"42",@"896",@"221",@"771",@"8324",@"9169",@"2131",@"1114"];
        lesson_9C = @[@"UT",@"AC",@"IA",@"NZM",@"CDC",@"MOF",@"CQRT",@"KJDO",@"PSJZ",@"OAFS"];
        lesson_9D = @[@"big",@"know",@"find",@"next",@"each",@"am",@"your",@"night",@"open",@"every"];
        lesson_9E = @[@"find",@"night",@"your",@"am",@"big",@"every",@"each",@"know",@"next",@"open"];
        
        lesson_10B = @[@"33",@"62",@"178",@"923",@"672",@"828",@"2191",@"3928",@"5411",@"8676"];
        lesson_10C = @[@"NB",@"QL",@"FGA",@"BCO",@"YSE",@"CCO",@"BLKO",@"UCEE",@"WRPR",@"DBDB"];
        lesson_10D = @[@"just",@"want",@"if",@"find",@"man",@"big",@"good",@"ran",@"very",@"back"];
        lesson_10E = @[@"want",@"good",@"find",@"man",@"if",@"big",@"back",@"very",@"just",@"ran"];
        
        lesson_11B = @[@"31",@"98",@"162",@"977",@"226",@"488",@"255",@"9677",@"3712",@"1133"];
        lesson_11C = @[@"FL",@"UQ",@"AAC",@"DOQ",@"XVW",@"BJL",@"IRS",@"MONB",@"TACG",@"BMWV"];
        lesson_11D = @[@"tree",@"bring",@"men",@"white",@"as",@"again",@"work",@"day",@"around",@"after"];
        lesson_11E = @[@"day",@"white",@"around",@"men",@"after",@"work",@"again",@"tree",@"as",@"bring"];
        
        lesson_12B = @[@"18",@"62",@"334",@"498",@"8623",@"7711",@"6799",@"1888",@"9676",@"5416"];
        lesson_12C = @[@"GL",@"ME",@"GZB",@"AUF",@"TRRT",@"NMOO",@"BCDC",@"AZVW",@"HCOB",@"PWIK"];
        lesson_12D = @[@"girl",@"walk",@"year",@"more",@"live",@"cold",@"seven",@"never",@"home",@"many"];
        lesson_12E = @[@"home",@"seven",@"year",@"more",@"walk",@"could",@"girl",@"never",@"many",@"live"];
        
        lesson_13A = @[@"L3",@"4B",@"Q2",@"2V",@"4F",@"W9",@"6A",@"Y2",@"A6",@"Y3"];
        lesson_13B = @[@"S2",@"3V",@"W9",@"3Z",@"F1",@"U9",@"H7",@"Z8",@"9A",@"E2"];
        lesson_13C = @[@"tree",@"live",@"am",@"never",@"know",@"girl",@"after",@"again",@"seven",@"white"];
        lesson_13D = @[@"am",@"seven",@"tree",@"girl",@"know",@"live",@"white",@"never",@"after",@"again"];
        
        
        lesson_14A = @[@"2F",@"T8",@"9O",@"C3",@"8D",@"1R",@"T3",@"B9",@"1K",@"D5"];
        lesson_14B = @[@"Q6",@"K9",@"8U",@"Z2",@"X4",@"2A",@"I9",@"7B",@"H2",@"3J"];
        lesson_14C = @[@"been",@"how",@"boy",@"over",@"jump",@"thing",@"only",@"funny",@"like",@"try"];
        lesson_14D = @[@"like",@"over",@"funny",@"only",@"boy",@"try",@"jump",@"thing",@"been",@"how"];
        
        lesson_15A = @[@"A8",@"6L",@"V3",@"9C",@"K6",@"3T",@"O1",@"9G",@"4Z",@"X2"];
        lesson_15B = @[@"G3",@"W2",@"L9",@"6A",@"H2",@"S4",@"3G",@"9T",@"P2",@"B4"];
        lesson_15C = @[@"my",@"mother",@"who",@"last",@"box",@"take",@"long",@"because",@"any",@"before"];
        lesson_15D = @[@"take",@"last",@"any",@"who",@"long",@"mother",@"my",@"before",@"box",@"because"];
        
        lesson_16A = @[@"on",@"did",@"some",@"this",@"will",@"come",@"have",@"when",@"put",@"that"];
        lesson_16B = @[@"said",@"what",@"was",@"but",@"one",@"the",@"with",@"no",@"on",@"you"];
        lesson_16C = @[@"must",@"same",@"head",@"other",@"best",@"eyes",@"down",@"school",@"off",@"show"];
        lesson_16D = @[@"off",@"school",@"down",@"same",@"other",@"head",@"best",@"eyes",@"must",@"show"];
        
        lesson_17A = @[@"about",@"they",@"left",@"want",@"much",@"morning",@"little",@"would",@"very",@"father"];
        lesson_17B = @[@"were",@"their",@"back",@"two",@"from",@"high",@"went",@"get",@"old",@"into"];
        lesson_17C = @[@"how",@"best",@"jump",@"off",@"over",@"because",@"who",@"before",@"last",@"like"];
        lesson_17D = @[@"last",@"jump",@"over",@"off",@"because",@"how",@"like",@"who",@"best",@"before"];
        
        lesson_18A = @[@"open",@"walk",@"year",@"thing",@"next",@"every",@"could",@"many",@"been",@"jump"];
        lesson_18B = @[@"white",@"find",@"know",@"your",@"around",@"again",@"after",@"only",@"how",@"who"];
        lesson_18C = @[@"by",@"better",@"dog",@"three",@"has",@"should",@"up",@"cold",@"these",@"right"];
        lesson_18D = @[@"cold",@"should",@"dog",@"three",@"these",@"by",@"right",@"has",@"up",@"better"];
        
        lesson_19A = @[@"night",@"men",@"work",@"home",@"girl",@"all",@"not",@"then",@"his",@"him"];
        lesson_19B = @[@"and",@"what",@"they",@"came",@"ran",@"want",@"went",@"their",@"many",@"seven"];
        lesson_19C = @[@"away",@"sleep",@"people",@"ride",@"too",@"fast",@"book",@"small",@"face",@"hard"];
        lesson_19D = @[@"hard",@"sleep",@"people",@"small",@"too",@"fast",@"book",@"face",@"away",@"ride"];
        
         lesson_20A = @[@"should",@"better",@"school",@"off",@"of",@"because",@"before",@"people",@"face", @"mother"];
         lesson_20B = @[@"any",@"best",@"away",@"these", @"right", @"could", @"cold",@"three", @"who", @"down"];
         lesson_20C = @[@"by",@"fast",@"show",@"these", @"ride", @"eyes", @"away",@"right", @"face", @"people"];
         lesson_20D = @[@"ride",@"eyes",@"show",@"face", @"right", @"by", @"people",@"these", @"fast", @"away"];
         
         
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
