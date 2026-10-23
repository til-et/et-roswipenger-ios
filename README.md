# ROSwipenger

[![CI Status](http://img.shields.io/travis/Heather Snepenger/ROSwipenger.svg?style=flat)](https://travis-ci.org/Heather Snepenger/ROSwipenger)

![alt text](https://github.com/Rounded/ROSwipenger/blob/master/demo.gif "Demo")

## Usage

To run the example project, clone the repo and open `Example/ROSwipenger.xcodeproj`. Xcode resolves the dependencies automatically.

ROSwipenger is available through [Swift Package Manager](https://www.swift.org/documentation/package-manager/). In Xcode, choose **File > Add Package Dependencies…** and enter the repository URL, or add it to your `Package.swift`:

    dependencies: [
        .package(url: "https://github.com/til-et/et-roswipenger-ios.git", branch: "master")
    ]

Then import it:

    @import ROSwipenger;


1. Create the `ROSwipenger` view controller:

    	ImageViewController *dummy1 = [ImageViewController new];
    	dummy1.image = [UIImage imageNamed:@"Brian.jpg"];
    
    	ImageViewController *dummy2 = [ImageViewController new];
    	dummy2.image = [UIImage imageNamed:@"Rob.jpg"];
    
    	ImageViewController *dummy3 = [ImageViewController new];
    	dummy3.image = [UIImage imageNamed:@"Heather.jpg"];
    
    	ROSwipenger *controller = [[ROSwipenger alloc] initWithTitles:@[@"Brian", @"Rob", @"Heather"] andViewControllers:@[dummy1, dummy2, dummy3]];

    	
    	
    	
2. Present the view controller:

		[self presentViewController:controller animated:YES completion:nil];
		
3. Customize the controller:

		// Colors
		@property (strong, nonatomic) UIColor *titleBarBackground;
		@property (strong, nonatomic) UIColor *titleTextColor;
		@property (strong, nonatomic) UIColor *scrollIndicatorColor;

		// Font
		@property (strong, nonatomic) UIFont *titleFont;

		// Dimensions
		@property (assign, nonatomic) CGFloat titleBackgroundHeight;
		@property (assign, nonatomic) NSInteger titlePadding;
		@property (assign, nonatomic) NSInteger scrollIndicatorHeight;
		@property (assign, nonatomic) NSInteger defaultScrollIndicatorWidth;

		@property (assign, nonatomic) BOOL scrollIndicatorAutoFitTitleWidth;




## Author

Heather Snepenger, hs@roundedco.com

## License

ROSwipenger is available under the MIT license. See the LICENSE file for more info.

