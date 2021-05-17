#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableString *string;
    NSMutableString *finalString = [NSMutableString stringWithString:@""];
    NSMutableArray *numbersArrayMutable = [NSMutableArray arrayWithArray:numbersArray];
    NSNumber *defaultNumber = [[NSNumber alloc] init];
    defaultNumber = [NSNumber numberWithInt:0];
    int i = 0;
    
    if (numbersArray != nil && [numbersArray count] != 0) {
            
            if ([numbersArray count] < 4) {
                long lastElement = [numbersArray indexOfObject:[numbersArray lastObject]];
                for (long j = lastElement + 1; j < 4; j++) {
                    [numbersArrayMutable insertObject:defaultNumber atIndex:j];
                }
                numbersArray = [numbersArrayMutable copy];
            }
                
                for (NSNumber *number in numbersArray) {
                    
                    
                    
                    if ([number intValue] <= 255 && [number intValue] >= 0) {
                        string = [NSMutableString stringWithFormat:@"%d", [number intValue]];
                    }
                    
                    if (i < [numbersArray count] - 1) {
                        [string appendString:@"."];
                    }
                    
                   
                    
                    if ([finalString length] <= 13) {
                        [finalString appendString:string];
                    }
                   
                    if ([number intValue] > 255) {
                        finalString = [NSMutableString stringWithString:@"The numbers in the input array can be in the range from 0 to 255."];
                    }
                        
                        if ([number intValue] < 0)  {
                        finalString = [NSMutableString stringWithString:@"Negative numbers are not valid for input."];
                    }
                    i++;
                    
                }
}
            
        
        return finalString;
    }
    
    
    
    @end
    
    
    
