#line 1 "Tweak.xm"

@interface FBSystemService : NSObject
+(id)sharedInstance;
-(void)exitAndRelaunch:(BOOL)arg1;
-(void)shutdownAndReboot:(BOOL)arg1;
-(void)shutdownWithOptions:(unsigned long long)arg1;
@end


static BOOL canShowAlert;
UIAlertController* alert;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class FBSystemService; @class SBControlCenterController; 
static void (*_logos_orig$_ungrouped$SBControlCenterController$_showControlCenterGestureEndedWithGestureRecognizer$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBControlCenterController$_showControlCenterGestureEndedWithGestureRecognizer$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBControlCenterController$_revealSlidingViewToHeight$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBControlCenterController$_revealSlidingViewToHeight$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SBControlCenterController$_endPresentation)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBControlCenterController$_endPresentation(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$FBSystemService(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("FBSystemService"); } return _klass; }
#line 13 "Tweak.xm"

	
	
	
	static void _logos_method$_ungrouped$SBControlCenterController$_showControlCenterGestureEndedWithGestureRecognizer$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
		
		if(canShowAlert == YES) {
			
			
			UIAlertController* alert=[UIAlertController alertControllerWithTitle:nil
								    message:nil
								    preferredStyle:UIAlertControllerStyleAlert];
			
			
			UIAlertAction* spring = [UIAlertAction actionWithTitle:@"Respring"
							       style:UIAlertActionStyleDefault
							       handler:^(UIAlertAction * action)
                    {
                        [[_logos_static_class_lookup$FBSystemService() sharedInstance] exitAndRelaunch:YES];
                          
                    }];
					
			






			
			
			UIAlertAction* reboot = [UIAlertAction actionWithTitle:@"Reboot"
							       style:UIAlertActionStyleDefault
							       handler:^(UIAlertAction * action)
                    {
                        [[_logos_static_class_lookup$FBSystemService() sharedInstance] shutdownAndReboot:YES];
                          
                    }];
			
			
			UIAlertAction* shutdown = [UIAlertAction actionWithTitle:@"Shutdown"
								 style:UIAlertActionStyleDefault
								 handler:^(UIAlertAction * action)
                    {
                        [[_logos_static_class_lookup$FBSystemService() sharedInstance] shutdownWithOptions:nil];
                          
                    }];
			
			
			UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Nevermind"
							       style:UIAlertActionStyleDefault
							       handler:^(UIAlertAction * action)
                    {
                        [alert dismissViewControllerAnimated:YES completion:nil];
						canShowAlert = NO;
                          
                    }];
			
			
			[alert addAction:spring];
			
			[alert addAction:reboot];
			[alert addAction:shutdown];
			[alert addAction:cancel];
			[self presentViewController:alert animated:YES completion:nil];
			
		}
	_logos_orig$_ungrouped$SBControlCenterController$_showControlCenterGestureEndedWithGestureRecognizer$(self, _cmd, arg1);
		
	}
	
	static void _logos_method$_ungrouped$SBControlCenterController$_revealSlidingViewToHeight$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
		
		
		
		if(arg1 > 675 && arg1 < 725) {
			
			canShowAlert = YES;
			
		}
		_logos_orig$_ungrouped$SBControlCenterController$_revealSlidingViewToHeight$(self, _cmd, arg1);
	}
	
	static void _logos_method$_ungrouped$SBControlCenterController$_endPresentation(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
		
		
		[alert dismissViewController:alert animated:YES completion:nil];
		_logos_orig$_ungrouped$SBControlCenterController$_endPresentation(self, _cmd);
	}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBControlCenterController = objc_getClass("SBControlCenterController"); if (_logos_class$_ungrouped$SBControlCenterController) {MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(_showControlCenterGestureEndedWithGestureRecognizer:), (IMP)&_logos_method$_ungrouped$SBControlCenterController$_showControlCenterGestureEndedWithGestureRecognizer$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$_showControlCenterGestureEndedWithGestureRecognizer$);} else {HBLogError(@"logos: nil class %s", "SBControlCenterController");}if (_logos_class$_ungrouped$SBControlCenterController) {MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(_revealSlidingViewToHeight:), (IMP)&_logos_method$_ungrouped$SBControlCenterController$_revealSlidingViewToHeight$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$_revealSlidingViewToHeight$);} else {HBLogError(@"logos: nil class %s", "SBControlCenterController");}if (_logos_class$_ungrouped$SBControlCenterController) {MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(_endPresentation), (IMP)&_logos_method$_ungrouped$SBControlCenterController$_endPresentation, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$_endPresentation);} else {HBLogError(@"logos: nil class %s", "SBControlCenterController");}} }
#line 104 "Tweak.xm"
