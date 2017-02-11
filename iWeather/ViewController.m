//
//  ViewController.m
//  iWeather
//
//  Created by Bui Trong Duc on 1/21/17.
//  Copyright © 2017 lightwaysoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *mLocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *mTemperature;
@property (weak, nonatomic) IBOutlet UIImageView *mWeatherIconStatus;
@property (weak, nonatomic) IBOutlet UILabel *mQuote;

@end

@implementation ViewController
{
    NSArray* mQuotes;
    NSArray* mLocations;
    NSArray* mIconStatus;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mQuotes = @[@"Ai đi đâu đấy hỡi ai. Hay là trúc đã nhớ mai đi tìm. Ai đi muôn dặm non song. Để ai chứa chất sầu đong vời đầy",@"Ai đi bờ đắp một mình. Phất phơ chiếc áo giống hình phu quân",@"Ai làm cho bướm lìa hoa. Cho chim xanh nỡ bay qua vườn hồng",@"Ai làm Nam Bắc phân kỳ. Cho hai giòng lệ đầm đìa nhớ thương",@"Ai nhứt thì tôi đứng nhì. Ai mà hơn nữa tôi thì thứ ba"];
    mLocations = @[@"Ha Noi, Viet Nam",@"TP. Ho Chi Minh, Viet Nam",@"Da Nang, Viet Nam",@"Hai Phong, Viet Nam",@"Hue, Viet Nam"];
    mIconStatus = @[@"Rain",@"Sunny",@"Windy",@"Thunder"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickButtonUpdate:(id)sender {
    int quoteIndex = arc4random_uniform(mQuotes.count);
    int locationIndex = arc4random_uniform(mLocations.count);
    int iconIndex = arc4random_uniform(mIconStatus.count);
//    NSLog(@"%d", quoteIndex);
    self.mQuote.text = mQuotes[quoteIndex];
    self.mLocationLabel.text = mLocations[locationIndex];
    self.mWeatherIconStatus.image = [UIImage imageNamed:mIconStatus[iconIndex]];
    self.mTemperature.text = [NSString stringWithFormat:@"%2.1f", [self randomTemperature]];
}

- (float) randomTemperature {
    return 15.0 + arc4random_uniform(15) + (float) arc4random() / (float) INT32_MAX;
}

@end
