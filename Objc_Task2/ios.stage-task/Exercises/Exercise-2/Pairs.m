#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger numberOfElements = [array count];
    NSInteger pairs = 0;
    
    
    for (int i = 0; i < numberOfElements - 1; i++) {
        
        if ([[array objectAtIndex:i+1] intValue] - [[array objectAtIndex:i] intValue] == [number intValue]) {
            pairs += 1;
        }
        if (i > 0) {
            if ([[array objectAtIndex:i+1] intValue] - [[array objectAtIndex:i-1] intValue] == [number intValue]) {
                pairs += 1;
            }
    }
    }
    

    
    return pairs;
}

@end



