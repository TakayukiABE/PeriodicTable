// Generated by Apple Swift version 2.2 (swiftlang-703.0.18.8 clang-703.0.31)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import CoreGraphics;
@import RealmSwift;
@import ObjectiveC;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;
@class NSObject;

SWIFT_CLASS("_TtC13PeriodicTable11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary * _Nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UILabel;
@class NSCoder;

SWIFT_CLASS("_TtC13PeriodicTable10DetailView")
@interface DetailView : UIView
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified symbol;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified name;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified massNumber;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified number;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified orbit;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified meltingPoint;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified boilingPoint;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified category;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified ionization;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified affinity;
+ (DetailView * _Nonnull)createInstance;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSBundle;

SWIFT_CLASS("_TtC13PeriodicTable20DetailViewController")
@interface DetailViewController : UIViewController
@property (nonatomic, strong) DetailView * _Nonnull detailView;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class RLMRealm;
@class RLMObjectSchema;
@class RLMSchema;

SWIFT_CLASS("_TtC13PeriodicTable7Element")
@interface Element : RealmSwiftObject
@property (nonatomic, copy) NSString * _Nonnull symbol;
@property (nonatomic, copy) NSString * _Nonnull name;
@property (nonatomic) NSInteger number;
@property (nonatomic) double massNumber;
@property (nonatomic, copy) NSString * _Nonnull state;
@property (nonatomic) NSInteger meltingPoint;
@property (nonatomic) NSInteger boilingPoint;
@property (nonatomic) double ionization;
@property (nonatomic) NSInteger affinity;
@property (nonatomic, copy) NSString * _Nonnull orbit;
@property (nonatomic, copy) NSString * _Nonnull category;
@property (nonatomic) NSInteger group;
@property (nonatomic) NSInteger period;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithValue:(id _Nonnull)value OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithRealm:(RLMRealm * _Nonnull)realm schema:(RLMObjectSchema * _Nonnull)schema OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithValue:(id _Nonnull)value schema:(RLMSchema * _Nonnull)schema OBJC_DESIGNATED_INITIALIZER;
@end

@class UICollectionViewLayout;

SWIFT_CLASS("_TtC13PeriodicTable22PeriodicCollectionView")
@interface PeriodicCollectionView : UICollectionView
- (nonnull instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout * _Nonnull)layout OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC13PeriodicTable26PeriodicCollectionViewCell")
@interface PeriodicCollectionViewCell : UICollectionViewCell
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified elementName;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSIndexPath;

SWIFT_CLASS("_TtC13PeriodicTable32PeriodicCollectionViewController")
@interface PeriodicCollectionViewController : UICollectionViewController
- (void)viewDidLoad;
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView * _Nonnull)collectionView;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (nonnull instancetype)initWithCollectionViewLayout:(UICollectionViewLayout * _Nonnull)layout OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC13PeriodicTable32PeriodicCollectionViewDataSource")
@interface PeriodicCollectionViewDataSource : NSObject <UICollectionViewDataSource>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView * _Nonnull)collectionView;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC13PeriodicTable30PeriodicCollectionViewDelegate")
@interface PeriodicCollectionViewDelegate : NSObject <UIScrollViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate>
- (CGSize)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC13PeriodicTable13PeriodicModel")
@interface PeriodicModel : NSObject
@property (nonatomic, copy) NSArray<Element *> * _Nonnull elements;
@property (nonatomic) BOOL isLanthanide;
@property (nonatomic) BOOL isActinide;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)setElementProperties:(Element * _Nonnull)element symbol:(NSString * _Nonnull)symbol name:(NSString * _Nonnull)name number:(NSInteger)number massNumber:(double)massNumber state:(NSString * _Nonnull)state meltingPoint:(NSInteger)meltingPoint boilingPoint:(NSInteger)boilingPoint ionization:(double)ionization affinity:(NSInteger)affinity orbit:(NSString * _Nonnull)orbit category:(NSString * _Nonnull)category group:(NSInteger)group period:(NSInteger)period;
- (Element * _Nonnull)readElement:(NSInteger)group period:(NSInteger)period cell:(NSArray<NSNumber *> * _Nonnull)cell;
@end

@class UINib;

SWIFT_CLASS("_TtC13PeriodicTable22PeriodicViewController")
@interface PeriodicViewController : UIViewController <UIScrollViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate>
@property (nonatomic, readonly, strong) UINib * _Nonnull Nib;
@property (nonatomic, strong) UICollectionView * _Nonnull periodicTable;
@property (nonatomic) NSInteger temperature;
@property (nonatomic, copy) NSArray<NSNumber *> * _Nonnull selectedCell;
@property (nonatomic, strong) PeriodicModel * _Nonnull periodicModel;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView * _Nonnull)collectionView;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (CGSize)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (CGFloat)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section;
- (UIEdgeInsets)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout insetForSectionAtIndex:(NSInteger)section;
- (void)setCurrentTemperature:(NSInteger)newTemperature;
- (void)collectionView:(UICollectionView * _Nonnull)collectionView didSelectItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (void)changeCell:(NSInteger)arrowTag;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC13PeriodicTable26SeparateCollectionViewCell")
@interface SeparateCollectionViewCell : UICollectionViewCell
- (void)awakeFromNib;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIButton;
@class UISwitch;
@class UISlider;

SWIFT_CLASS("_TtC13PeriodicTable14ViewController")
@interface ViewController : UIViewController
@property (nonatomic, weak) IBOutlet UICollectionView * _Null_unspecified periodicCollectionView;
@property (nonatomic, weak) IBOutlet UISlider * _Null_unspecified temperatureSlider;
@property (nonatomic, strong) UILabel * _Nonnull temperature;
@property (nonatomic) NSInteger value;
@property (nonatomic) NSInteger newValue;
@property (nonatomic, copy) NSArray<UIButton *> * _Nonnull cursors;
@property (nonatomic, strong) UISwitch * _Nonnull handSwitch;
@property (nonatomic, strong) PeriodicViewController * _Nonnull periodicView;
@property (nonatomic, strong) DetailViewController * _Nonnull detailView;
- (void)viewDidLoad;
- (void)changeHand:(UISwitch * _Nonnull)sender;
- (void)changeRightHand;
- (void)changeLeftHand;
- (void)reloadDetailView:(Element * _Nonnull)element;
- (void)initCursors;
- (void)didTapOnCursor:(UIButton * _Nonnull)sender;
- (void)didChangeValue:(UISlider * _Nonnull)slider;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
