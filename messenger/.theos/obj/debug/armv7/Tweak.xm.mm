#line 1 "Tweak.xm"

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

@class MNFacebookRedirectionController; 
static BOOL (*_logos_orig$_ungrouped$MNFacebookRedirectionController$_shouldShowPersistentFacebookRedirectionButton)(_LOGOS_SELF_TYPE_NORMAL MNFacebookRedirectionController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$MNFacebookRedirectionController$_shouldShowPersistentFacebookRedirectionButton(_LOGOS_SELF_TYPE_NORMAL MNFacebookRedirectionController* _LOGOS_SELF_CONST, SEL); 

#line 1 "Tweak.xm"


static BOOL _logos_method$_ungrouped$MNFacebookRedirectionController$_shouldShowPersistentFacebookRedirectionButton(_LOGOS_SELF_TYPE_NORMAL MNFacebookRedirectionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

return true;

}

-BOOL)_canShowPersistentFacebookRedirectionButton {

return true;

}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MNFacebookRedirectionController = objc_getClass("MNFacebookRedirectionController"); if (_logos_class$_ungrouped$MNFacebookRedirectionController) {MSHookMessageEx(_logos_class$_ungrouped$MNFacebookRedirectionController, @selector(_shouldShowPersistentFacebookRedirectionButton), (IMP)&_logos_method$_ungrouped$MNFacebookRedirectionController$_shouldShowPersistentFacebookRedirectionButton, (IMP*)&_logos_orig$_ungrouped$MNFacebookRedirectionController$_shouldShowPersistentFacebookRedirectionButton);} else {HBLogError(@"logos: nil class %s", "MNFacebookRedirectionController");}} }
#line 15 "Tweak.xm"
