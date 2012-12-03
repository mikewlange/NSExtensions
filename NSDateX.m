#import "NSDateX.h"

#define SECOND 1
#define MINUTE 60
#define HOUR 3600
#define DAY 86400
#define WEEK 604800
#define YEAR 31556926

@implementation NSDate (X)

- (NSInteger)secondsAfterDate:(NSDate *)date
{
	return (NSInteger)([self timeIntervalSinceDate:date] / SECOND);
}

- (NSInteger)minutesAfterDate:(NSDate *)date
{
	return (NSInteger)([self timeIntervalSinceDate:date] / MINUTE);
}

- (NSInteger)minutesBeforeDate:(NSDate *)date
{
	return (NSInteger)([date timeIntervalSinceDate:self] / MINUTE);
}

- (NSInteger)hoursAfterDate:(NSDate *)date
{
	return (NSInteger)([self timeIntervalSinceDate:date] / HOUR);
}

- (NSInteger)hoursBeforeDate:(NSDate *)date
{
	return (NSInteger)([date timeIntervalSinceDate:self] / HOUR);
}

- (NSInteger)daysAfterDate:(NSDate *)date
{
	return (NSInteger)([self timeIntervalSinceDate:date] / DAY);
}

- (NSInteger)daysBeforeDate:(NSDate *)date
{
	return (NSInteger) ([date timeIntervalSinceDate:self] / DAY);
}

@end
