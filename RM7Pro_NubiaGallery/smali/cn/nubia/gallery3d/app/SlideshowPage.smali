.class public Lcn/nubia/gallery3d/app/SlideshowPage;
.super Lcn/nubia/gallery3d/app/ActivityState;
.source "SlideshowPage.java"

# interfaces
.implements Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;,
        Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;,
        Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;,
        Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;,
        Lcn/nubia/gallery3d/app/SlideshowPage$Slide;,
        Lcn/nubia/gallery3d/app/SlideshowPage$Model;
    }
.end annotation


# static fields
.field public static final KEY_DREAM:Ljava/lang/String; = "dream"

.field public static final KEY_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_PHOTO_INDEX:Ljava/lang/String; = "photo-index"

.field public static final KEY_RANDOM_ORDER:Ljava/lang/String; = "random-order"

.field public static final KEY_REPEAT:Ljava/lang/String; = "repeat"

.field public static final KEY_SET_PATH:Ljava/lang/String; = "media-set-path"

.field private static final MAX_COUNT:I = 0x96

.field private static final MSG_FORBIDDENREPEAT:I = 0x3

.field private static final MSG_LOAD_NEXT_BITMAP:I = 0x1

.field private static final MSG_LOARD_SELECTED_FINISH:I = 0x4

.field private static final MSG_SHOW_PENDING_BITMAP:I = 0x2

.field private static final SLIDESHOW_DELAY:J = 0xfa0L

.field private static final SLIDE_SHOW_COMPLETE:I = 0x1

.field private static final SLIDE_SHOW_MAIN_PATH:Ljava/lang/String; = "/storage/emulated/0/DCIM/Camera/\u89c6\u9891/"

.field private static final SLIDE_SHOW_PROGRESS:I = 0x2

.field private static final SPEED_FAST:I = 0x2

.field private static final SPEED_LOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlideshowPage"

.field private static mFirstPictureTimeChange:Z = false


# instance fields
.field private final ANDROID_O:I

.field private final CHANNEL_ID:Ljava/lang/String;

.field private final CHANNEL_NAME:Ljava/lang/String;

.field private isDataLoadFinish:Z

.field private isPause:Z

.field private mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

.field private mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field private mAudioParams:Lcn/nubia/videogenerator/codec/AudioParams;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mDegreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;",
            ">;"
        }
    .end annotation
.end field

.field private mDegreeOfFirstPic:I

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsShowBar:Z

.field private mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

.field private mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

.field private mModel:Lcn/nubia/gallery3d/app/SlideshowPage$Model;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationProgress:I

.field private mOperationThread:Ljava/lang/Thread;

.field private mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mRender:Lcn/nubia/videogenerator/codec/ImageRender;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcn/nubia/gallery3d/ui/GLView;

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowPortraitPic:Z

.field private mSlideMakeSpeedChoose:I

.field mSlideShowHandler:Landroid/os/Handler;

.field private mSlideShowListCounts:I

.field private mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

.field private mSlideshowPageTopbarNavigation:Landroid/widget/ImageView;

.field private mSlideshowPageTopbarTitle:Landroid/widget/TextView;

.field private mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

.field private mTabSettingView:Landroid/widget/ImageView;

.field private mType:I

.field private mVideoHeight:I

.field private mVideoMake:Lcn/nubia/videogenerator/slidemake/VideoMake;

.field private mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

.field private mVideoSlidePath:Ljava/lang/String;

.field private mVideoWidth:I

.field mediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private starPlayth:Ljava/lang/String;

.field private tvTitleProgress:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    .line 125
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mType:I

    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mShowPortraitPic:Z

    .line 127
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeOfFirstPic:I

    .line 128
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isDataLoadFinish:Z

    const/4 v2, 0x0

    .line 163
    iput-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    .line 164
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 165
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsShowBar:Z

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 168
    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowPage$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$1;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    const/16 v1, 0x1a

    .line 279
    iput v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->ANDROID_O:I

    .line 280
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowListCounts:I

    .line 281
    iput-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    const-string v0, "channel_id_slide2"

    .line 283
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->CHANNEL_ID:Ljava/lang/String;

    const-string v0, "channel_name_slide2"

    .line 284
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->CHANNEL_NAME:Ljava/lang/String;

    .line 463
    iput-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mOperationThread:Ljava/lang/Thread;

    .line 467
    iput-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const/16 v0, 0x438

    .line 470
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    const/16 v0, 0x780

    .line 471
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    .line 479
    iput-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoSlidePath:Ljava/lang/String;

    .line 480
    new-instance v0, Lcn/nubia/gallery3d/app/SlideshowPage$7;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$7;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 529
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mNotificationProgress:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/SlideshowView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/SlideshowPage;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsShowBar:Z

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/SlideshowPage;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsShowBar:Z

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/SlideshowPage;)I
    .locals 0

    .line 99
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideMakeSpeedChoose:I

    return p0
.end method

.method static synthetic access$1202(Lcn/nubia/gallery3d/app/SlideshowPage;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideMakeSpeedChoose:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1302(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/SlideshowPage;Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/app/SlideshowPage;->createProgressDialog(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/lang/Thread;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mOperationThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$1502(Lcn/nubia/gallery3d/app/SlideshowPage;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mOperationThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->cancelMakeSlide()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    return-object p0
.end method

.method static synthetic access$1802(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    return-object p1
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->notityMediaDataChange()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/codec/ImageRender;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    return-object p0
.end method

.method static synthetic access$2002(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/ImageRender;)Lcn/nubia/videogenerator/codec/ImageRender;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/codec/VideoParams;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    return-object p0
.end method

.method static synthetic access$2102(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/VideoParams;)Lcn/nubia/videogenerator/codec/VideoParams;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    return-object p1
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/slidemake/VideoMake;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoMake:Lcn/nubia/videogenerator/slidemake/VideoMake;

    return-object p0
.end method

.method static synthetic access$2202(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/slidemake/VideoMake;)Lcn/nubia/videogenerator/slidemake/VideoMake;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoMake:Lcn/nubia/videogenerator/slidemake/VideoMake;

    return-object p1
.end method

.method static synthetic access$2300(Lcn/nubia/gallery3d/app/SlideshowPage;)I
    .locals 0

    .line 99
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mNotificationProgress:I

    return p0
.end method

.method static synthetic access$2302(Lcn/nubia/gallery3d/app/SlideshowPage;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mNotificationProgress:I

    return p1
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/app/SlideshowPage;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->tvTitleProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->getSelectedPhoto()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/app/SlideshowPage;)I
    .locals 0

    .line 99
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowListCounts:I

    return p0
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/improve/slideshow/SlideShowSetting;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    return-object p0
.end method

.method static synthetic access$2902(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/AudioParams;)Lcn/nubia/videogenerator/codec/AudioParams;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAudioParams:Lcn/nubia/videogenerator/codec/AudioParams;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->setVideoParams()V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/gallery3d/app/SlideshowPage;)I
    .locals 0

    .line 99
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/app/SlideshowPage;)I
    .locals 0

    .line 99
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$3402(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideshowPage$Slide;)Lcn/nubia/gallery3d/app/SlideshowPage$Slide;
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$3500(Lcn/nubia/gallery3d/app/SlideshowPage;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3700(Lcn/nubia/gallery3d/data/MediaSet;I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    .line 99
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->findMediaItem(Lcn/nubia/gallery3d/data/MediaSet;I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isDataLoadFinish:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/SlideshowPage;Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->initSlideshowDataAdapter(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->startSlideShow()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->showSpeedChooseDialog()V

    return-void
.end method

.method private adjustVideoSize()V
    .locals 4

    .line 717
    iget v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mType:I

    const/4 v1, 0x1

    const/16 v2, 0x440

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/16 v3, 0x780

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 743
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mShowPortraitPic:Z

    if-eqz v0, :cond_0

    .line 744
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    .line 745
    iput v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    goto :goto_0

    .line 747
    :cond_0
    iput v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    .line 748
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    goto :goto_0

    .line 739
    :cond_1
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    .line 740
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    goto :goto_0

    .line 730
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mShowPortraitPic:Z

    if-eqz v0, :cond_3

    .line 731
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    .line 732
    iput v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    goto :goto_0

    .line 734
    :cond_3
    iput v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    .line 735
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    goto :goto_0

    .line 720
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mShowPortraitPic:Z

    const/16 v1, 0x5a0

    if-eqz v0, :cond_5

    .line 721
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    .line 722
    iput v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    goto :goto_0

    .line 724
    :cond_5
    iput v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    .line 725
    iput v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    :goto_0
    return-void
.end method

.method private cancelMakeSlide()V
    .locals 2

    const-string v0, "SlideshowPage"

    const-string v1, "cancelMakeSlide"

    .line 435
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->cancel()V

    .line 438
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 440
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    if-eqz v0, :cond_1

    .line 442
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->cancel()V

    .line 443
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    .line 444
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 445
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    .line 446
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    .line 447
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoMake:Lcn/nubia/videogenerator/slidemake/VideoMake;

    const/4 v0, -0x1

    .line 448
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mNotificationProgress:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 453
    :cond_1
    :goto_0
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mOperationThread:Ljava/lang/Thread;

    return-void
.end method

.method private createProgressDialog(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 2

    .line 320
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f11012a

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 321
    invoke-virtual {v0, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(I)V

    .line 322
    invoke-virtual {v0, p3}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    const p2, 0x7f10004e

    .line 324
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance p2, Lcn/nubia/gallery3d/app/SlideshowPage$5;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$5;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    .line 330
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p1, 0x1

    if-le p3, p1, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    .line 335
    :cond_0
    new-instance p1, Lcn/nubia/gallery3d/app/SlideshowPage$6;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$6;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0
.end method

.method private doNavigationJob()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBarHideNav()V

    .line 216
    new-instance v0, Lcn/nubia/commonui/app/AdjustNavUtils;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/app/AdjustNavUtils;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    return-void
.end method

.method private static findMediaItem(Lcn/nubia/gallery3d/data/MediaSet;I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 5

    .line 1013
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1014
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1015
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 1017
    invoke-static {v3, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->findMediaItem(Lcn/nubia/gallery3d/data/MediaSet;I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1021
    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p0

    .line 1022
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/gallery3d/data/MediaItem;

    :goto_1
    return-object p0
.end method

.method private getNext(IF)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    .line 713
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getSelectedPhoto()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGalleryApp()Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getPaths()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    .line 647
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 648
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 650
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 651
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 654
    :cond_0
    iget-object v4, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x96

    if-le v1, v4, :cond_3

    .line 658
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->getReSelectedPaths()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    .line 660
    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowListCounts:I

    if-lez v1, :cond_5

    move v1, v2

    .line 662
    :goto_2
    iget v4, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowListCounts:I

    if-ge v1, v4, :cond_5

    .line 663
    iget-object v4, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->getIndexOf(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 666
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    goto :goto_3

    :cond_4
    move v4, v2

    .line 668
    :goto_3
    iget-object v5, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeList:Ljava/util/ArrayList;

    new-instance v6, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;

    iget-object v7, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 671
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 672
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->isPortraitPicture(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mType:I

    .line 673
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;

    iget v0, v0, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;->mDegree:I

    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeOfFirstPic:I

    .line 674
    iget v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mType:I

    if-lez v1, :cond_7

    if-ge v1, v3, :cond_7

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_9

    .line 676
    :cond_6
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mShowPortraitPic:Z

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_9

    .line 678
    :cond_8
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mShowPortraitPic:Z

    .line 681
    :cond_9
    :goto_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | mDegreeOfFirstPic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeOfFirstPic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | mShowPortraitPic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mShowPortraitPic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideshowPage"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initSlideshowDataAdapter(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "random-order"

    const/4 v1, 0x0

    .line 971
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, -0x1

    const-string v3, "repeat"

    const-string v4, "photo-index"

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 974
    new-instance v0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    iget-object v6, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v7, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    new-instance v8, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-direct {v8, v3, p1}, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Z)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;Ljava/util/ArrayList;Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcn/nubia/gallery3d/data/Path;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mModel:Lcn/nubia/gallery3d/app/SlideshowPage$Model;

    .line 976
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 978
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "media-item-path"

    .line 979
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 980
    invoke-static {v1}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v10, v1

    .line 981
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 982
    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    iget-object v6, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v7, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    new-instance v8, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-direct {v8, v3, p1}, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Z)V

    move-object v5, v1

    move v9, v0

    invoke-direct/range {v5 .. v10}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;Ljava/util/ArrayList;Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcn/nubia/gallery3d/data/Path;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mModel:Lcn/nubia/gallery3d/app/SlideshowPage$Model;

    .line 984
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "media-set-path"

    .line 963
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x100

    .line 964
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 965
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 966
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mDegreeList:Ljava/util/ArrayList;

    .line 967
    new-instance p1, Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideshowPage$1;)V

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;->start()V

    return-void
.end method

.method private initializeViews()V
    .locals 3

    .line 989
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSlideShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowEffectView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/improve/slideshow/SlideShowEffectChooser;Lcn/nubia/improve/slideshow/SlideShowEffectPage;Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    goto :goto_0

    .line 992
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    .line 994
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 995
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    return-void
.end method

.method private static isPortraitPicture(Ljava/lang/String;)I
    .locals 8

    .line 756
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 757
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 760
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 761
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 762
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 763
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 764
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x12

    const/16 v4, 0xe

    const/16 v5, 0x10

    const/16 v6, 0xc

    const/16 v7, 0xa

    if-lt v0, p0, :cond_3

    mul-int/2addr v0, v7

    .line 767
    div-int/2addr v0, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v0, v6, :cond_0

    if-ge v0, v4, :cond_0

    .line 793
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 796
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v1

    :cond_0
    const/4 p0, 0x2

    if-le v0, v5, :cond_1

    if-ge v0, v2, :cond_1

    .line 793
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return p0

    :cond_1
    if-ne v0, v7, :cond_2

    const/4 p0, 0x3

    .line 793
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return p0

    .line 793
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return p0

    :cond_3
    mul-int/2addr p0, v7

    .line 778
    :try_start_6
    div-int/2addr p0, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-le p0, v6, :cond_4

    if-ge p0, v4, :cond_4

    const/4 p0, 0x4

    .line 793
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return p0

    :cond_4
    const/4 v0, 0x5

    if-le p0, v5, :cond_5

    if-ge p0, v2, :cond_5

    .line 793
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 796
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return v0

    .line 793
    :cond_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    .line 796
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return v0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_9

    :catch_7
    move-exception p0

    move-object v2, v3

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_8
    move-exception p0

    :goto_7
    :try_start_a
    const-string v0, "SlideshowPage"

    .line 788
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 p0, 0x0

    if-eqz v2, :cond_6

    .line 793
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_8
    return p0

    :goto_9
    if-eqz v2, :cond_7

    .line 793
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 798
    :cond_7
    :goto_a
    throw p0
.end method

.method private loadNextBitmap()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mModel:Lcn/nubia/gallery3d/app/SlideshowPage$Model;

    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowPage$11;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$11;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/SlideshowPage$Model;->nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    return-void
.end method

.method private notityMediaDataChange()V
    .locals 4

    .line 532
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoSlidePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoSlidePath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    new-instance v3, Lcn/nubia/gallery3d/app/SlideshowPage$8;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$8;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private resetViews()V
    .locals 3

    .line 999
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->removeComponent(Lcn/nubia/gallery3d/ui/GLView;)Z

    .line 1000
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->release()V

    .line 1001
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->onDestroy()V

    const/4 v0, 0x0

    .line 1002
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 1003
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    .line 1004
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSlideShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowEffectView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v2, v0, v0, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/improve/slideshow/SlideShowEffectChooser;Lcn/nubia/improve/slideshow/SlideShowEffectPage;Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    goto :goto_0

    .line 1007
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    .line 1009
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 1010
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    return-void
.end method

.method public static setChangeFirstPictureTime(Z)V
    .locals 0

    .line 1154
    sput-boolean p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mFirstPictureTimeChange:Z

    return-void
.end method

.method private setNotificationChannel(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 10

    const-string p1, "channel_name_slide2"

    :try_start_0
    const-string v0, "android.app.NotificationChannel"

    .line 397
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.app.NotificationManager"

    .line 398
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDescription"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 399
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "setSound"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    .line 400
    const-class v8, Landroid/net/Uri;

    aput-object v8, v7, v6

    const-class v8, Landroid/media/AudioAttributes;

    aput-object v8, v7, v3

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    .line 402
    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    const-string v9, "java.lang.CharSequence"

    .line 403
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    .line 404
    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v8, "IMPORTANCE_HIGH"

    .line 405
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "channel_id_slide2"

    aput-object v9, v7, v6

    aput-object p1, v7, v3

    .line 407
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 408
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v6

    .line 409
    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v6

    aput-object v2, p1, v3

    .line 410
    invoke-virtual {v4, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "createNotificationChannel"

    new-array v2, v3, [Ljava/lang/Class;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v6

    .line 411
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v6

    .line 414
    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 428
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 422
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 420
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception p1

    .line 418
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setVideoParams()V
    .locals 3

    .line 598
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/DCIM/Camera/\u89c6\u9891/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 602
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SlideShow_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoSlidePath:Ljava/lang/String;

    .line 604
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->adjustVideoSize()V

    .line 605
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    iget v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/VideoParams;->setSize(II)V

    .line 606
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/VideoParams;->setFps(I)V

    .line 607
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    const v1, 0x7f000789

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/VideoParams;->setColorFormat(I)V

    .line 608
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setVideoParams(Lcn/nubia/videogenerator/codec/VideoParams;)V

    .line 610
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoSlidePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setOutputPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 612
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setVideoRender(Lcn/nubia/videogenerator/codec/ImageRender;)V

    .line 615
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowPage$9;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$9;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 625
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowPage$10;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$10;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V

    return-void
.end method

.method private showPendingBitmap()V
    .locals 5

    .line 846
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    if-nez v0, :cond_1

    .line 848
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    if-eqz v0, :cond_0

    const-string v0, "SlideshowPage"

    const-string v1, "finishState---SlideshowPage"

    .line 849
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    :cond_0
    return-void

    .line 855
    :cond_1
    iget-object v1, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto/16 :goto_4

    .line 859
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->multiShootPath:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->item:Lcn/nubia/gallery3d/data/MediaItem;

    .line 860
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->multiShootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    .line 861
    invoke-virtual {v1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat()Z

    move-result v1

    if-nez v1, :cond_4

    .line 862
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->playOrStop()V

    return-void

    .line 865
    :cond_4
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    iget-object v2, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;I)V

    .line 866
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    const/4 v1, -0x1

    .line 870
    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->item:Lcn/nubia/gallery3d/data/MediaItem;

    .line 871
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media-item-path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget v0, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->index:I

    const-string v3, "photo-index"

    .line 872
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 870
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 874
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->multiShootPath:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->item:Lcn/nubia/gallery3d/data/MediaItem;

    .line 875
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->multiShootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    .line 876
    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat()Z

    move-result v0

    if-nez v0, :cond_7

    .line 877
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 880
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 881
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    .line 883
    :cond_8
    :goto_2
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSlideShow()Z

    move-result v0

    const-wide/16 v1, 0xfa0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 884
    sget-boolean v0, Lcn/nubia/gallery3d/app/SlideshowPage;->mFirstPictureTimeChange:Z

    if-eqz v0, :cond_9

    .line 885
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 886
    sput-boolean v0, Lcn/nubia/gallery3d/app/SlideshowPage;->mFirstPictureTimeChange:Z

    goto :goto_3

    .line 888
    :cond_9
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 891
    :cond_a
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    return-void

    .line 856
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method private showSpeedChooseDialog()V
    .locals 5

    .line 287
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f1001c3

    .line 289
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1001c2

    .line 290
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 291
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 292
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v3, 0x7f110129

    invoke-direct {v2, v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 293
    new-instance v3, Lcn/nubia/gallery3d/app/SlideshowPage$4;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$4;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v1, 0x7f10004e

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method private startSlideShow()V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isDataLoadFinish:Z

    if-eqz v0, :cond_2

    .line 803
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mModel:Lcn/nubia/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/SlideshowPage$Model;->resume()V

    .line 804
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->onPause()V

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    goto :goto_0

    .line 808
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->onResume()V

    .line 810
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    if-eqz v0, :cond_1

    .line 811
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    goto :goto_1

    .line 813
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getIndexOf(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .line 688
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 689
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getReSelectedPaths()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 698
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 702
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->getNext(IF)I

    move-result v4

    if-gt v4, v1, :cond_1

    const/4 v5, 0x1

    add-int/2addr v3, v5

    if-lt v4, v5, :cond_0

    .line 705
    iget-object v5, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSelectedList:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected onBackPressed()V
    .locals 2

    const-string v0, "SlideshowPage"

    const-string v1, "onBackPressed"

    .line 1252
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->cancelMakeSlide()V

    return-void

    .line 1257
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 953
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 221
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v0, 0x2

    .line 222
    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    const-string p2, "dream"

    .line 223
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 225
    iget p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mFlags:I

    goto :goto_0

    .line 228
    :cond_0
    iget p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mFlags:I

    .line 230
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->doNavigationJob()V

    .line 231
    new-instance p2, Lcn/nubia/gallery3d/app/SlideshowPage$2;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage$2;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/ui/GLRoot;Landroid/os/Bundle;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 253
    new-instance p2, Lcn/nubia/gallery3d/ui/MenuActionHandler;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    .line 254
    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p2

    new-instance v0, Lcn/nubia/gallery3d/app/SlideshowPage$3;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$3;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setListener(Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;)V

    .line 274
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/app/StateManager;->setResumeFlag(Z)V

    .line 275
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->initializeViews()V

    .line 276
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 4

    .line 1159
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 1160
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1161
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    new-instance v0, Lcn/nubia/gallery3d/app/SlideshowPage$12;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$12;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    const v1, 0x7f080055

    invoke-virtual {p1, v1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNavigationIcon(ILandroid/view/View$OnClickListener;)V

    .line 1167
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowPage$13;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$13;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1175
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowPageTopbarNavigation:Landroid/widget/ImageView;

    .line 1176
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowPageTopbarTitle:Landroid/widget/TextView;

    .line 1177
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowPageTopbarTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowPageTopbarNavigation:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1179
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    new-instance v0, Lcn/nubia/gallery3d/app/SlideshowPage$14;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/SlideshowPage$14;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    const v1, 0x7f08008b

    invoke-virtual {p1, v1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCustomImage(ILandroid/view/View$OnClickListener;)V

    .line 1188
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->getCustomImageView()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mTabSettingView:Landroid/widget/ImageView;

    .line 1189
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mTabSettingView:Landroid/widget/ImageView;

    invoke-static {p1, v2, v2, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1190
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f09011c

    const v2, 0x7f0801f0

    const v3, 0x7f1001a0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1193
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v0, 0x1

    const v2, 0x7f08013c

    const v3, 0x7f1001d8

    invoke-virtual {p1, v0, v0, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1195
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1196
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1197
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    if-eqz p1, :cond_0

    .line 1198
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v2, 0x7f0801f1

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    .line 1199
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v2, 0x7f1001b4

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemTitleById(II)V

    .line 1201
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsShowBar:Z

    if-eqz p1, :cond_1

    .line 1202
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    .line 1203
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBarHideNav()V

    goto :goto_0

    .line 1205
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 1206
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideAppBar()V

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 897
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    .line 898
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBar()V

    .line 899
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AdjustNavUtils;->removeGlobalLayoutListerner()V

    const/4 v0, 0x0

    .line 900
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    .line 901
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mModel:Lcn/nubia/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/SlideshowPage$Model;->destory()V

    .line 902
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SlideshowView;->onDestroy()V

    .line 903
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 904
    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 905
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 907
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    if-eqz v1, :cond_1

    .line 909
    :try_start_0
    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->cancel()V

    .line 910
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMakeSlideShow:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    .line 911
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 912
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    .line 913
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    .line 914
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mVideoMake:Lcn/nubia/videogenerator/slidemake/VideoMake;

    const/4 v1, -0x1

    .line 915
    iput v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mNotificationProgress:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 917
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 920
    :cond_1
    :goto_0
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mOperationThread:Ljava/lang/Thread;

    .line 921
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 926
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    .line 928
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 929
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 930
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mModel:Lcn/nubia/gallery3d/app/SlideshowPage$Model;

    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/SlideshowPage$Model;->pause()V

    .line 933
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->release()V

    .line 934
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->onPause()V

    .line 935
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPlayMusicPause()V
    .locals 3

    const/4 v0, 0x0

    .line 1262
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    .line 1263
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 1264
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 1265
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->onPause()V

    .line 1266
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1267
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1268
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1269
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    .line 1270
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v1, 0x7f09011c

    const v2, 0x7f0801f1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    .line 1271
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f1001b4

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemTitleById(II)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 943
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    .line 944
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowSetting;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/improve/slideshow/SlideShowSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    .line 945
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 946
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media-set-path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 948
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->startSlideShow()V

    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->onBackPressed()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 1217
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->resetViews()V

    :cond_2
    :goto_0
    return-void
.end method

.method public playOrPause()V
    .locals 4

    const/4 v0, 0x0

    .line 1229
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->starPlayth:Ljava/lang/String;

    .line 1230
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1232
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 1233
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->onPause()V

    .line 1234
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1238
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1239
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 1240
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    .line 1241
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideshowView:Lcn/nubia/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlideshowView;->onResume()V

    .line 1242
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mPendingSlide:Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    if-eqz v0, :cond_1

    .line 1243
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    goto :goto_0

    .line 1244
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    if-nez v0, :cond_2

    .line 1245
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected playOrStop()V
    .locals 3

    .line 821
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideshowPage;->playOrPause()V

    .line 822
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mIsActive:Z

    const v1, 0x7f09011c

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 823
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    .line 824
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f0801f0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    .line 825
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f1001a0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemTitleById(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->isPause:Z

    .line 828
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f0801f1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    .line 829
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f1001b4

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemTitleById(II)V

    :goto_0
    return-void
.end method
