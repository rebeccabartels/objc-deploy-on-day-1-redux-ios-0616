//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()

@property (nonatomic, strong) NSMutableArray *board;

@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        [self resetBoard];

    }

    return self;
}

-(void)resetBoard
{
    
    self.board =      [@[[@[ @"", @"", @"" ] mutableCopy],
                         [@[ @"", @"", @"" ] mutableCopy],
                         [@[ @"", @"", @"" ] mutableCopy] ]mutableCopy];
    
    
    
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{

   return self.board [column][row];
    NSLog (@"%@", self.board);
    
}


-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row

// @(column)


{ if([self.board [column][row] isEqualToString:@""])
    {return YES;
    } else {
    
    return NO;
    }
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    BOOL canPlay = [self canPlayAtColumn:column row:row];
    
    if (canPlay == YES) {
    
  self.board [column][row] = @"X";
    }
    
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    BOOL canPlay = [self canPlayAtColumn:column row:row];
    if (canPlay == YES) {
        self.board [column][row] = @"O";
    }
    
    }



-(NSString *)winningPlayer
{
    
    ///////1st Row
    if ([self.board [0][0] isEqualToString: self.board [0][1]] && [self.board [0][0] isEqualToString:self.board [0][2]])
         
         {return self.board [0][0];
         }
    
    ///////2nd Row
         if ([self.board [1][0] isEqualToString:self.board [1][1]] && [self.board [1][0] isEqualToString:self.board [1][2]])
         { return self.board [1][0];
         }
    
   ///////3rd Row
    if ([self.board [2][0] isEqualToString:self.board [2][1]] && [self.board [2][0] isEqualToString:self.board [2][2]])
                  { return self.board [2][0];
                  }
    
   //////1st Column
    if ([self.board [0][0] isEqualToString:self.board [1][0]] && [self.board [0][0] isEqualToString:self.board [2][0]])
                                                                                   {return self.board [0][0];
                                                                                   }
                    
   ///////2nd Column
                    if ([self.board [0][1] isEqualToString:self.board [1][1]] && [self.board [0][1] isEqualToString: self.board [2][1]])
                                                                                 {return self.board [0][1];
                                                                                 }
   ///////3rd Column
                    if ([self.board [0][2] isEqualToString: self.board [1][2]] && [self.board [0][2] isEqualToString: self.board [2][2]])
                                                                                  {return self.board [0][2];
                                                                                  }
   ///////1st Diagonal
                    if ([self.board [0][0] isEqualToString: self.board [1][1]] && [self.board [0][0] isEqualToString: self.board [2][2]])
                                                                                  {return self.board [0][0];
                                                                                  }
    ///////2nd Diagonal
    if ([self.board [0][2] isEqualToString: self.board [1][1]] && [self.board [0][2] isEqualToString: self.board [2][0]])
    {return self.board [0][2];
    }

return @"";

        }
-(BOOL)isADraw
{
    BOOL boardIsFull = YES;
    for (NSUInteger i = 0; i < 3; i++) {
        for (NSUInteger j = 0; j < 3; j++) {
            if ([self.board [i][j] isEqualToString:@""] ) {
                boardIsFull=NO;
            }
        }
    }
    return boardIsFull;
    }


@end
