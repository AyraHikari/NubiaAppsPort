.class public Lcn/nubia/gallery3d/app/AlbumPage;
.super Lcn/nubia/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcn/nubia/gallery3d/data/MediaSet$SyncListener;
.implements Lcn/nubia/improve/move/AddExecutor$AddProgressListener;
.implements Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static ENTER_MANAGE_MOVE_PAGE:Z = false

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_CAMERA_SPECIAL_LAYOUT:Ljava/lang/String; = "camera_special_layout"

.field private static final KEY_COVERBITMAP:Ljava/lang/String; = "coverbitmap"

.field public static final KEY_GETCONTENT_FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final KEY_GETCONTENT_ISIMAGE:Ljava/lang/String; = "is_image"

.field public static final KEY_IN_MULTISHOOT:Ljava/lang/String; = "in-multishoot"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PANORAMA_LAYOUT:Ljava/lang/String; = "panorama_layout"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_PICK_COVERIMAGE:Ljava/lang/String; = "pick_coverimage"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final KEY_SHOW_CLUSTER_MENU:Ljava/lang/String; = "cluster-menu"

.field public static final KEY_ZTEMT_WIDGET_TYPE:Ljava/lang/String; = "ztemt-widget-type"

.field public static final MAX_GIF_COUNT:I = 0x96

.field public static final MAX_JIGSAW_COUNT:I = 0x9

.field private static final MSG_PICK_PHOTO:I = 0x1

.field private static final MSG_SELECTION_LIMIT:I = 0x4

.field private static final MSG_SET_HINTVIEW:I = 0x3

.field private static final MSG_SHARE_MODE:I = 0x2

.field private static final MSG_SHOW_CTA_DIALOG:I = 0x5

.field public static final MSG_UPDATE_FACECOVER:I = 0x7

.field public static final MSG_UPDATE_TITLENAME:I = 0x6

.field public static final REQUEST_ALBUMSETINFO:I = 0x5

.field private static final REQUEST_BULKEDITING:I = 0x7

.field public static final REQUEST_DO_ANIMATION:I = 0x3

.field public static final REQUEST_LEAVESELECTIONMODE:I = 0x4

.field public static final REQUEST_PHOTO:I = 0x2

.field public static final REQUEST_PICK_COVER:I = 0x6

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private config:Lcn/nubia/gallery3d/app/Config$AlbumPage;

.field private mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

.field private mAddtoNewfolder:Z

.field private mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

.field private mAlbumPageTopBarTitle:Landroid/widget/TextView;

.field private mAlbumPageTopbarNavigation:Landroid/widget/ImageView;

.field private mAlbumTopTitleName:Ljava/lang/String;

.field private mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

.field private mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field private mContext:Landroid/content/Context;

.field private mCoverPath:Ljava/lang/String;

.field private mDisableBg:Lcn/nubia/gallery3d/ui/StaticBackground;

.field private mDownloadPage:Lcn/nubia/improve/xcloud/DownloadPage;

.field private mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mGetContentMaxNum:I

.field private mGetMultiContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

.field private mInFaceAlbum:Z

.field private mInRecycledAlbum:Z

.field private mInThingAlbum:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsCopy:Z

.field private mIsPickCoverImage:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

.field private mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

.field private mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

.field private mOnCloud:Z

.field private mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

.field private mPanoramaLayout:Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mRecycleHintView:Lcn/nubia/gallery3d/ui/RecycledHintView;

.field private mRefreshFaceCover:Z

.field private mReselectMethod:Lcn/nubia/improve/gif/IntervalSelectMethod;

.field private mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcn/nubia/gallery3d/ui/GLView;

.field private mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

.field private mSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mShareMode:Z

.field private mSizeForMultiExposure:Ljava/lang/String;

.field private mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

.field private mSlotViewTop:I

.field private mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

.field private mSyncTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F

.field private moveDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsActive:Z

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    .line 156
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    .line 158
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContentMaxNum:I

    .line 162
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 166
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mShareMode:Z

    .line 169
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    .line 171
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 172
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInitialSynced:Z

    .line 173
    new-instance v2, Lcn/nubia/gallery3d/ui/RelativePosition;

    invoke-direct {v2}, Lcn/nubia/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    .line 175
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    .line 176
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->moveDialog:Landroid/app/AlertDialog;

    .line 180
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotViewTop:I

    .line 182
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSizeForMultiExposure:Ljava/lang/String;

    .line 185
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOnCloud:Z

    .line 186
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mReselectMethod:Lcn/nubia/improve/gif/IntervalSelectMethod;

    .line 190
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInRecycledAlbum:Z

    .line 200
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    .line 201
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInThingAlbum:Z

    .line 202
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRefreshFaceCover:Z

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsCopy:Z

    .line 206
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumPage$1;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 228
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumPage$2;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    .line 842
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/SlotView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/AlbumDataLoader;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/FaceAlbumView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/StaticBackground;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mDisableBg:Lcn/nubia/gallery3d/ui/StaticBackground;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/os/Handler;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/AlbumPage;)F
    .locals 0

    .line 100
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mUserDistance:F

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    return-object p0
.end method

.method static synthetic access$1502(Lcn/nubia/gallery3d/app/AlbumPage;Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/AlbumPage;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/app/AlbumPage;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->goShareView(I)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/AlbumPage;II)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumPage;->setHintView(II)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/StaticBackground;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumPageTopBarTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2102(Lcn/nubia/gallery3d/app/AlbumPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumTopTitleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setCover()V

    return-void
.end method

.method static synthetic access$2302(Lcn/nubia/gallery3d/app/AlbumPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelected:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setShareMode()V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->startCollage()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->initMorePopWindow()V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->doDownloadImage()V

    return-void
.end method

.method static synthetic access$2902(Lcn/nubia/gallery3d/app/AlbumPage;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRefreshFaceCover:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/app/AlbumPage;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->needRefreshFaceCover()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/app/AlbumPage;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    return p0
.end method

.method static synthetic access$3200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/improve/database/GalleryDatabaseHelper;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/app/AlbumPage;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInThingAlbum:Z

    return p0
.end method

.method static synthetic access$3400(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    return-object p0
.end method

.method static synthetic access$3500(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->startMakeGif()V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->startPickAlbumInfoActivity()V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->dismissDialog()V

    return-void
.end method

.method static synthetic access$3800(Lcn/nubia/gallery3d/app/AlbumPage;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$3900(Lcn/nubia/gallery3d/app/AlbumPage;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcn/nubia/gallery3d/app/AlbumPage;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$402(Lcn/nubia/gallery3d/app/AlbumPage;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotViewTop:I

    return p1
.end method

.method static synthetic access$4100(Lcn/nubia/gallery3d/app/AlbumPage;II)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumPage;->onScrollPositionChanged(II)V

    return-void
.end method

.method static synthetic access$4200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    return-object p0
.end method

.method static synthetic access$4300(Lcn/nubia/gallery3d/app/AlbumPage;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$4500(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->onUpPressed()V

    return-void
.end method

.method static synthetic access$4602(Lcn/nubia/gallery3d/app/AlbumPage;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$4700(Lcn/nubia/gallery3d/app/AlbumPage;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$4800(Lcn/nubia/gallery3d/app/AlbumPage;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/RelativePosition;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/AlbumPage;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/RecycledHintView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRecycleHintView:Lcn/nubia/gallery3d/ui/RecycledHintView;

    return-object p0
.end method

.method private clearLoadingBit(I)V
    .locals 1

    .line 1439
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez p1, :cond_0

    .line 1440
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz p1, :cond_0

    .line 1441
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 1442
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->showEmptyAlbumToast()V

    .line 1443
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 877
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private doDownloadImage()V
    .locals 4

    .line 1546
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    .line 1549
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v2

    .line 1550
    instance-of v3, v2, Lcn/nubia/cloud/ui/CloudMediaItem;

    if-eqz v3, :cond_0

    .line 1551
    check-cast v2, Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-virtual {v2}, Lcn/nubia/cloud/ui/CloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1554
    :cond_1
    new-instance v0, Lcn/nubia/improve/xcloud/DownloadPage;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v2, v1}, Lcn/nubia/improve/xcloud/DownloadPage;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mDownloadPage:Lcn/nubia/improve/xcloud/DownloadPage;

    .line 1555
    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/DownloadPage;->downloadImage()V

    return-void
.end method

.method private getSlotRect(I)Landroid/graphics/Rect;
    .locals 3

    .line 465
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 466
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/ui/GLView;->getBoundsOf(Lcn/nubia/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 467
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 468
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method private goShareView(I)V
    .locals 3

    .line 1533
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index-hint"

    .line 1534
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1535
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    const-string v1, "open-animation-rect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1536
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "media-set-path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelected:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const-string v1, "share-clicked-path"

    .line 1538
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1539
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    :cond_0
    const/4 p1, 0x1

    const-string v1, "share-from-albumpage"

    .line 1541
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1542
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v1, Lcn/nubia/gallery3d/app/PhotoPage;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    return-void
.end method

.method private hideHintView()V
    .locals 1

    .line 1585
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/HintViewLayout;->hide()V

    const/4 v0, 0x0

    .line 1587
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    :cond_0
    return-void
.end method

.method private inFaceAlbum()Z
    .locals 1

    .line 1642
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/FaceAlbum;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inRecycledAlbum()Z
    .locals 2

    .line 1638
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inThingAlbum()Z
    .locals 1

    .line 1646
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/ThingsAlbum;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initHandler()V
    .locals 2

    .line 594
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumPage$3;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/AlbumPage$3;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initMorePopWindow()V
    .locals 15

    .line 723
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    const v1, 0x7f10002e

    const v2, 0x7f1001f0

    const/4 v3, 0x4

    const v4, 0x7f100044

    const/4 v5, 0x3

    const v6, 0x7f100142

    const/4 v7, 0x2

    const v8, 0x7f100214

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x5

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInThingAlbum:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v11, [Ljava/lang/CharSequence;

    .line 740
    iget-object v12, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v10

    .line 741
    iget-object v8, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 742
    iget-object v6, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 743
    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 744
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v11, [I

    .line 745
    fill-array-data v1, :array_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x6

    new-array v12, v0, [Ljava/lang/CharSequence;

    .line 725
    iget-object v13, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    const v14, 0x7f1001ca

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    .line 726
    iget-object v10, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v9

    .line 727
    iget-object v8, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v7

    .line 728
    iget-object v6, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v5

    .line 729
    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v3

    .line 730
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v11

    new-array v1, v0, [I

    .line 731
    fill-array-data v1, :array_1

    move-object v0, v12

    .line 752
    :goto_1
    new-instance v2, Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    .line 753
    invoke-virtual {v2, v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->addMenuID([I)V

    .line 754
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumPage$5;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/AlbumPage$5;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090042
        0x7f09003e
        0x7f09003f
        0x7f090153
        0x7f09003d
    .end array-data

    :array_1
    .array-data 4
        0x7f090043
        0x7f090042
        0x7f09003e
        0x7f09003f
        0x7f090153
        0x7f09003d
    .end array-data
.end method

.method private initializeData()V
    .locals 3

    .line 1085
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    .line 1086
    new-instance v1, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;Lcn/nubia/gallery3d/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V

    .line 1087
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcn/nubia/gallery3d/app/AlbumDataLoader;)V

    .line 1088
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1089
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInRecycledAlbum(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInRecycledAlbum:Z

    .line 1090
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    return-void
.end method

.method private initializeViews()V
    .locals 6

    .line 951
    new-instance v0, Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    .line 952
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 953
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e3

    .line 954
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 953
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;->setColor(I)V

    .line 956
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getSelectionManager()Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 957
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setInMultiSelectionMode(Z)V

    .line 958
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContentMaxNum:I

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setMaxSelectionCount(I)V

    .line 959
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->config:Lcn/nubia/gallery3d/app/Config$AlbumPage;

    .line 961
    new-instance v0, Lcn/nubia/improve/move/AlbumView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/improve/move/AlbumView;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    .line 962
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->config:Lcn/nubia/gallery3d/app/Config$AlbumPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    .line 965
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    .line 966
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->disableMarkIcon()V

    .line 969
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPanoBucket(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$PanoramaPage;

    move-result-object v0

    .line 971
    new-instance v1, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    invoke-direct {v1, v2, v0}, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPanoramaLayout:Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;

    .line 972
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V

    goto :goto_0

    .line 973
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    if-eqz v0, :cond_2

    .line 974
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    new-instance v2, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage;->config:Lcn/nubia/gallery3d/app/Config$AlbumPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v5, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    .line 975
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getClustering()Lcn/nubia/gallery3d/data/AlbumClustering;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;Lcn/nubia/gallery3d/data/AlbumClustering;)V

    .line 974
    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V

    goto :goto_0

    .line 977
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    new-instance v2, Lcn/nubia/gallery3d/ui/layout/Layout;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage;->config:Lcn/nubia/gallery3d/app/Config$AlbumPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    invoke-direct {v2, v3, v4}, Lcn/nubia/gallery3d/ui/layout/Layout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V

    .line 979
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 980
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    new-instance v1, Lcn/nubia/gallery3d/app/AlbumPage$8;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumPage$8;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->setListener(Lcn/nubia/gallery3d/ui/SlotView$Listener;)V

    .line 1066
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_3

    .line 1067
    new-instance v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    .line 1070
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->inRecycledAlbum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1071
    new-instance v0, Lcn/nubia/gallery3d/ui/RecycledHintView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/RecycledHintView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRecycleHintView:Lcn/nubia/gallery3d/ui/RecycledHintView;

    .line 1072
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 1074
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsPickCoverImage:Z

    if-nez v0, :cond_6

    .line 1075
    new-instance v0, Lcn/nubia/gallery3d/ui/FaceAlbumView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v2, Lcn/nubia/gallery3d/data/FaceAlbum;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/FaceAlbumView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/FaceAlbum;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    .line 1076
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v0, Lcn/nubia/gallery3d/data/FaceAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/FaceAlbum;->setHandler(Landroid/os/Handler;)V

    .line 1077
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 1078
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-eqz v0, :cond_6

    .line 1079
    :cond_5
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setFaceViewDisable()V

    :cond_6
    return-void
.end method

.method private needRefreshFaceCover()Z
    .locals 5

    .line 1687
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1690
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v3, Lcn/nubia/gallery3d/data/FaceAlbum;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/FaceAlbum;->getCoverPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 1691
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method private onDown(I)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onGetContent(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 9

    .line 478
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 480
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSizeForMultiExposure:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 481
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    .line 482
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    .line 483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSizeForMultiExposure:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSizeForMultiExposure:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSizeForMultiExposure:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1002a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-static {v1, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 486
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 487
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    .line 495
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v6, "crop"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 497
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "cn.nubia.gallery3d"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x2000000

    .line 499
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 500
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "return-data"

    .line 501
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    :cond_3
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 506
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p1, "AlbumPage"

    const-string v0, "Crop not support or activity not found"

    .line 507
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 511
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    .line 512
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 513
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_5

    .line 514
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_6

    :cond_5
    move v5, v6

    .line 517
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 518
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "is_image"

    .line 519
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file_path"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 523
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onScrollBarPositionChanged(IF)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/SlotView;->onScrollBarPositionChanged(IF)V

    :cond_0
    return-void
.end method

.method private onScrollPositionChanged(II)V
    .locals 0

    return-void
.end method

.method private onSingleTapUp(I)V
    .locals 3

    .line 366
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 374
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 375
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 379
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 380
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private onUpPressed()V
    .locals 3

    .line 340
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsPickCoverImage:Z

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setFaceViewEnable()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 345
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->switchState(Lcn/nubia/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private pickCoverImage(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 3

    .line 444
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->getCover(Lcn/nubia/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 447
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v1, Lcn/nubia/gallery3d/data/FaceAlbum;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/FaceAlbum;->setCoverPath(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 449
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "coverbitmap"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->setStateResult(ILandroid/content/Intent;)V

    .line 450
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private pickPhoto(I)V
    .locals 6

    .line 396
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    .line 408
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x2

    const-string v4, "in-multishoot"

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcn/nubia/gallery3d/data/RecycledAlbum;

    if-nez v1, :cond_4

    .line 411
    new-instance p1, Landroid/os/Bundle;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "type-bits"

    const/4 v2, 0x3

    .line 412
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v5, v1, :cond_2

    .line 413
    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    goto :goto_0

    :cond_3
    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    .line 416
    :goto_0
    check-cast v0, Lcn/nubia/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalImage;->getBucketId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media-path"

    .line 417
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cluster-menu"

    const/4 v1, 0x0

    .line 418
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is-tab"

    .line 419
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 420
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 423
    :cond_4
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOnCloud:Z

    if-nez v1, :cond_6

    .line 424
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsPickCoverImage:Z

    if-eqz p1, :cond_5

    .line 425
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumPage;->pickCoverImage(Lcn/nubia/gallery3d/data/MediaItem;)V

    goto :goto_1

    .line 427
    :cond_5
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumPage;->onGetContent(Lcn/nubia/gallery3d/data/MediaItem;)V

    goto :goto_1

    .line 432
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index-hint"

    .line 433
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    const-string v2, "open-animation-rect"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 435
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOnCloud:Z

    const-string v2, "nubia_cloud"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 437
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media-item-path"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1, v0, v3, v1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private setCover()V
    .locals 2

    .line 1677
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/AlbumPage;->getCover(Lcn/nubia/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1680
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    if-eqz v1, :cond_0

    .line 1681
    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->setCover(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setFaceViewDisable()V
    .locals 3

    .line 1381
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->setDisable()V

    .line 1382
    new-instance v0, Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mDisableBg:Lcn/nubia/gallery3d/ui/StaticBackground;

    .line 1383
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f6

    .line 1384
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1383
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;->setColor(I)V

    .line 1385
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mDisableBg:Lcn/nubia/gallery3d/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    return-void
.end method

.method private setFaceViewEnable()V
    .locals 2

    .line 1376
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->setEnable()V

    .line 1377
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mDisableBg:Lcn/nubia/gallery3d/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->removeComponent(Lcn/nubia/gallery3d/ui/GLView;)Z

    return-void
.end method

.method private setHintView(II)V
    .locals 2

    .line 1575
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-nez v0, :cond_0

    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    .line 1578
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p2, v0

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1579
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1580
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1581
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 1435
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mLoadingBits:I

    return-void
.end method

.method private setShareMode()V
    .locals 4

    .line 1521
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getFirstSelectedIndex()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    .line 1524
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1528
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->share()V

    :goto_0
    return-void
.end method

.method private share()V
    .locals 12

    .line 1157
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    .line 1161
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1162
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/Path;

    .line 1163
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getSupportedOperations(Lcn/nubia/gallery3d/data/Path;)J

    move-result-wide v8

    .line 1164
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v10

    or-int/2addr v6, v10

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 1167
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1171
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1173
    invoke-static {v6}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "android.intent.extra.STREAM"

    if-le v0, v1, :cond_2

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 1175
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.SEND"

    .line 1178
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1181
    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1185
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1187
    :catch_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10027e

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private showEmptyAlbumToast()V
    .locals 4

    .line 1449
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_1

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1452
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\""

    .line 1453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private showHintView()V
    .locals 7

    .line 1559
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz v0, :cond_0

    return-void

    .line 1561
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/ui/HintViewLayout;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08007c

    const v4, 0x7f100107

    const v5, 0x7f100046

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1562
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/HintViewLayout;-><init>(Landroid/content/Context;IIILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    .line 1563
    new-instance v1, Lcn/nubia/gallery3d/app/AlbumPage$13;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumPage$13;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1570
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->setHintView(II)V

    .line 1571
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/HintViewLayout;->show()V

    return-void
.end method

.method private startCollage()V
    .locals 3

    .line 1501
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isCollageSuppot(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1503
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1505
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.collage"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "imagepathlist"

    .line 1506
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 1507
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 1509
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1510
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startMakeGif()V
    .locals 7

    .line 1476
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1478
    new-instance v2, Landroid/content/Intent;

    const-string v3, "zte.photoedit.makegif"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1480
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 1482
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0x2710

    const-string v6, "AlbumPage"

    if-le v2, v5, :cond_0

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startMakeGif paths.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10000!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1487
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v2, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "addSubDirectory2Bucket failed"

    .line 1489
    invoke-static {v6, v2}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1492
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 1494
    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x4

    .line 1495
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_1
    return-void
.end method

.method private startPickAlbumInfoActivity()V
    .locals 3

    .line 1592
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumInfoPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1593
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    const-string v2, "hint-count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1594
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getFirstSelected()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1596
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item-path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1598
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->activityOpenAnim(Landroid/content/Context;)V

    return-void
.end method

.method private updateAppBars()V
    .locals 4

    .line 1094
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setBackgroundColor(Z)V

    .line 1095
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1097
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/AlbumPage$9;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumPage$9;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    const v2, 0x7f080055

    invoke-virtual {v0, v2, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNavigationIcon(ILandroid/view/View$OnClickListener;)V

    .line 1103
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1104
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1103
    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleTextColor(I)V

    .line 1105
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumTopTitleName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    return-void

    .line 1109
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsPickCoverImage:Z

    if-eqz v1, :cond_1

    .line 1110
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumTopTitleName:Ljava/lang/String;

    goto :goto_0

    .line 1112
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumTopTitleName:Ljava/lang/String;

    .line 1113
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->inFaceAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumTopTitleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1114
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumTopTitleName:Ljava/lang/String;

    .line 1118
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumTopTitleName:Ljava/lang/String;

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumPage$10;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/AlbumPage$10;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1124
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumPageTopbarNavigation:Landroid/widget/ImageView;

    .line 1125
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumPageTopBarTitle:Landroid/widget/TextView;

    .line 1126
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumPageTopbarNavigation:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1127
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_3

    .line 1128
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1129
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumPage$11;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/AlbumPage$11;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    .line 1128
    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setConfirmText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private updateMenuInRecycledAlbum(Z)V
    .locals 5

    .line 1625
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setHandleAll(Z)V

    if-eqz p1, :cond_0

    const v0, 0x7f100150

    goto :goto_0

    :cond_0
    const v0, 0x7f10014f

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f100149

    goto :goto_1

    :cond_1
    const p1, 0x7f100078

    .line 1628
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f090024

    const v4, 0x7f080133

    invoke-virtual {v1, v2, v3, v4, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1630
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v1, 0x7f090013

    const v2, 0x7f080110

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1632
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1633
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1634
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1, v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    return-void
.end method


# virtual methods
.method public SetAsPrivate(Landroid/content/Context;)V
    .locals 3

    .line 845
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 846
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v1, 0x7f1100a5

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f100060

    new-instance v1, Lcn/nubia/gallery3d/app/AlbumPage$7;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumPage$7;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    .line 847
    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10004e

    new-instance v1, Lcn/nubia/gallery3d/app/AlbumPage$6;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumPage$6;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    .line 863
    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    .line 869
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const v0, 0x7f1001be

    .line 870
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(I)V

    .line 871
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v0, -0x1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 872
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public getCover(Lcn/nubia/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 2

    .line 454
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    const/16 v1, 0x9

    .line 455
    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 456
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 458
    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected initMorePopWindowStatu()V
    .locals 11

    .line 882
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getOperaEntry()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 883
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getOperaEntry()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->getOperation()J

    move-result-wide v0

    .line 884
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getOrientationManager()Lcn/nubia/gallery3d/app/OrientationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/OrientationManager;->getDisplayRotation()I

    .line 892
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    const-wide/32 v3, 0x10000

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    iget-object v9, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    const v10, 0x7f100142

    .line 893
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f09003e

    .line 892
    invoke-virtual {v2, v8, v9, v10}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 894
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    iget-object v8, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    const v9, 0x7f100044

    .line 895
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f09003f

    .line 894
    invoke-virtual {v2, v3, v8, v9}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 896
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    const-wide/32 v8, 0x20000000

    and-long/2addr v0, v8

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    const v1, 0x7f100214

    .line 897
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090042

    .line 896
    invoke-virtual {v2, v4, v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 898
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSupportPrivacySpace(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    const v3, 0x7f1001f0

    .line 899
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090153

    .line 898
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    :cond_3
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 331
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->onUpPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1515
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz p1, :cond_0

    .line 1516
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->dismiss()V

    :cond_0
    return-void
.end method

.method public onConfirmDialogDismissed(Z)V
    .locals 0

    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 553
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 554
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    .line 555
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x2

    .line 556
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    const v0, 0x3e99999a    # 0.3f

    .line 557
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mUserDistance:F

    const-string v0, "media-path"

    .line 559
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "parent-media-path"

    .line 560
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSet is null. Path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumPage"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    .line 566
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->inFaceAlbum()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    .line 567
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->inThingAlbum()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInThingAlbum:Z

    const-string v0, "pick_coverimage"

    const/4 v1, 0x0

    .line 568
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsPickCoverImage:Z

    const-string v0, "get-content"

    .line 569
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContent:Z

    const-string v0, "get_multi_content"

    .line 570
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    const-string v0, "addto_newfolder"

    .line 571
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAddtoNewfolder:Z

    const v0, 0x7fffffff

    const-string v2, "max_num"

    .line 572
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContentMaxNum:I

    .line 573
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->initHandler()V

    .line 574
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->initializeViews()V

    .line 575
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->initializeData()V

    const/4 v0, 0x0

    const-string v2, "size"

    .line 576
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSizeForMultiExposure:Ljava/lang/String;

    const-string v0, "nubia_cloud"

    .line 577
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOnCloud:Z

    .line 578
    new-instance v0, Lcn/nubia/improve/gif/IntervalSelectMethod;

    invoke-direct {v0}, Lcn/nubia/improve/gif/IntervalSelectMethod;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mReselectMethod:Lcn/nubia/improve/gif/IntervalSelectMethod;

    const-string v0, "auto-select-all"

    .line 580
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    const-string p2, "set-center"

    .line 585
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 587
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    aget v0, p1, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p2, v0, p1}, Lcn/nubia/gallery3d/ui/RelativePosition;->setAbsolutePosition(II)V

    .line 588
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SlotView;->startScatteringAnimation(Lcn/nubia/gallery3d/ui/RelativePosition;)V

    :cond_2
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    .line 1141
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 1142
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1143
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1144
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_1

    .line 1145
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    goto :goto_0

    .line 1148
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->updateAppBars()V

    .line 1149
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_1

    .line 1150
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 935
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    .line 936
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 937
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V

    .line 939
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->hideHintView()V

    .line 940
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->recycleBitmap()V

    .line 942
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->removeComponent(Lcn/nubia/gallery3d/ui/GLView;)Z

    .line 945
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRecycleHintView:Lcn/nubia/gallery3d/ui/RecycledHintView;

    if-eqz v0, :cond_2

    .line 946
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->removeComponent(Lcn/nubia/gallery3d/ui/GLView;)Z

    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongTap(I)V
    .locals 3

    .line 527
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 533
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 534
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 535
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method protected onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 905
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    .line 906
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    :cond_0
    const/4 v0, 0x0

    .line 909
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 910
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {v0}, Lcn/nubia/improve/move/AddExecutor;->pause()V

    .line 913
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v0, :cond_2

    .line 914
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->onPause()V

    .line 917
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_3

    .line 918
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->pause()V

    .line 920
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 921
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 922
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 924
    :cond_4
    invoke-static {}, Lcn/nubia/gallery3d/ui/DetailsHelper;->pause()V

    .line 926
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_5

    .line 927
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 928
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    const/4 v0, 0x2

    .line 929
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    :cond_5
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 1

    .line 1670
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRefreshFaceCover:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1671
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRefreshFaceCover:Z

    .line 1672
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setCover()V

    :cond_0
    return-void
.end method

.method public onProgressComplete(II)V
    .locals 2

    .line 1603
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1607
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsCopy:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRefreshFaceCover:Z

    if-eqz p1, :cond_0

    .line 1608
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRefreshFaceCover:Z

    .line 1609
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setCover()V

    :cond_0
    if-ne p2, v0, :cond_3

    .line 1612
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    const p2, 0x7f100175

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 1615
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    invoke-virtual {p1}, Lcn/nubia/improve/move/AddExecutor;->showAddFailToast()V

    goto :goto_0

    .line 1620
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 641
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    .line 642
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 643
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->isRenameDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->onResume()V

    .line 649
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSelectionListener(Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 650
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 653
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 654
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    if-ne v2, v3, :cond_3

    .line 655
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/ui/SlotView;->startFadeInAnimation(I)V

    .line 658
    :cond_3
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string v3, "resume_animation"

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_4

    .line 659
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    if-eqz v3, :cond_4

    .line 660
    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 661
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 662
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 665
    :cond_4
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/app/AlbumPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 666
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    .line 670
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 671
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    .line 672
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->resume()V

    .line 673
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 674
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v0, :cond_6

    .line 675
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    if-eqz v2, :cond_5

    .line 676
    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setProgressListener(Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    .line 678
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumPage$4;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/AlbumPage$4;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setMenuActionListener(Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;)V

    .line 710
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInitialSynced:Z

    if-nez v0, :cond_7

    .line 711
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 712
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/MediaSet;->requestSync(Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    .line 714
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 715
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 716
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelected:Ljava/util/ArrayList;

    :cond_8
    return-void
.end method

.method public onSelectionChange(Lcn/nubia/gallery3d/data/Path;Z)V
    .locals 0

    .line 1389
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_3

    .line 1390
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 1392
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInRecycledAlbum:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1393
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->updateMenuInRecycledAlbum(Z)V

    goto :goto_0

    .line 1395
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    goto :goto_0

    .line 1398
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mInRecycledAlbum:Z

    if-eqz p1, :cond_2

    .line 1399
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/app/AlbumPage;->updateMenuInRecycledAlbum(Z)V

    .line 1401
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 1403
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    :cond_3
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 1367
    :pswitch_0
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz v1, :cond_f

    .line 1368
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SlotView;->leaveSelectionAllMode()V

    goto/16 :goto_4

    .line 1361
    :pswitch_1
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz v1, :cond_f

    .line 1362
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SlotView;->enterSelectionAllMode()V

    goto/16 :goto_4

    .line 1355
    :pswitch_2
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_f

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1356
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1343
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/AlbumPage;->onBackPressed()V

    goto/16 :goto_4

    .line 1351
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/AlbumPage;->onSelectionCancel()V

    goto/16 :goto_4

    .line 1347
    :pswitch_5
    iget-boolean v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mAddtoNewfolder:Z

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->onSelectionDone(Z)V

    goto/16 :goto_4

    .line 1331
    :pswitch_6
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v3, :cond_1

    .line 1332
    iget-boolean v4, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mInRecycledAlbum:Z

    if-eqz v4, :cond_0

    .line 1333
    invoke-direct {v0, v2}, Lcn/nubia/gallery3d/app/AlbumPage;->updateMenuInRecycledAlbum(Z)V

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 1337
    :goto_0
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1339
    :cond_1
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_4

    .line 1319
    :pswitch_7
    iget-object v2, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v2, :cond_3

    .line 1320
    iget-boolean v2, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mInRecycledAlbum:Z

    if-eqz v2, :cond_2

    .line 1321
    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->updateMenuInRecycledAlbum(Z)V

    .line 1323
    :cond_2
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1324
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 1326
    :cond_3
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1327
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_4

    .line 1299
    :pswitch_8
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v3, :cond_4

    .line 1300
    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 1301
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 1303
    :cond_4
    iget-boolean v2, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsPickCoverImage:Z

    if-nez v2, :cond_5

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setFaceViewEnable()V

    .line 1306
    :cond_5
    iget-object v2, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1307
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/app/AlbumPage;->updateAppBars()V

    .line 1308
    sget-boolean v2, Lcn/nubia/gallery3d/app/AlbumPage;->ENTER_MANAGE_MOVE_PAGE:Z

    if-eqz v2, :cond_6

    .line 1309
    sput-boolean v1, Lcn/nubia/gallery3d/app/AlbumPage;->ENTER_MANAGE_MOVE_PAGE:Z

    .line 1311
    :cond_6
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1312
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    .line 1313
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz v1, :cond_f

    .line 1314
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SlotView;->leaveSelectionMode()V

    goto/16 :goto_4

    .line 1245
    :pswitch_9
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInMultiSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_4

    .line 1248
    :cond_7
    iget-boolean v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mInFaceAlbum:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsPickCoverImage:Z

    if-nez v3, :cond_8

    .line 1249
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/app/AlbumPage;->setFaceViewDisable()V

    .line 1251
    :cond_8
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1252
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v3, :cond_e

    .line 1253
    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1254
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 1255
    iget-boolean v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mOnCloud:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const v6, 0x7f100078

    const v7, 0x7f080110

    if-eqz v3, :cond_9

    .line 1256
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v3

    const v8, 0x7f090016

    const v9, 0x7f080107

    const v10, 0x7f10008f

    invoke-virtual {v3, v1, v8, v9, v10}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1258
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    const v3, 0x7f09000e

    invoke-virtual {v1, v2, v3, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1260
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1261
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto/16 :goto_3

    .line 1262
    :cond_9
    iget-boolean v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mInRecycledAlbum:Z

    if-eqz v3, :cond_a

    .line 1263
    invoke-direct {v0, v2}, Lcn/nubia/gallery3d/app/AlbumPage;->updateMenuInRecycledAlbum(Z)V

    goto/16 :goto_3

    .line 1264
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "in-multishoot"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const v8, 0x7f10015d

    const v9, 0x7f080130

    const v10, 0x7f090022

    const v11, 0x7f100126

    const v12, 0x7f08010c

    const v13, 0x7f09000f

    const v14, 0x7f1001fc

    const v15, 0x7f08013a

    const v4, 0x7f09002d

    if-eqz v3, :cond_c

    .line 1265
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v15, v14}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1267
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/improve/ImproveConfig;->isNoJigSaw_New(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1268
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto :goto_1

    .line 1270
    :cond_b
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1, v2, v13, v12, v11}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1273
    :goto_1
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v5, v2, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1275
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v10, v9, v8}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    goto :goto_3

    .line 1278
    :cond_c
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v15, v14}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1280
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/improve/ImproveConfig;->isNoJigSaw_New(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1281
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto :goto_2

    .line 1283
    :cond_d
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1, v2, v13, v12, v11}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1286
    :goto_2
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v5, v2, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1288
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v10, v9, v8}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1291
    :goto_3
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    .line 1293
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/AlbumPage;->performLongPressHapticFeedback()V

    .line 1294
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1295
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    :cond_f
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz p3, :cond_2

    const-string p1, "coverbitmap"

    .line 1233
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1234
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFaceAlbumView:Lcn/nubia/gallery3d/ui/FaceAlbumView;

    if-eqz p2, :cond_2

    .line 1235
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->setCover(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p3, :cond_2

    .line 1220
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumPage;->needRefreshFaceCover()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRefreshFaceCover:Z

    const-string p1, "album-path"

    .line 1221
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediaitem-count"

    .line 1222
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 p2, 0x1

    const-string v0, "addto_iscopy"

    .line 1223
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsCopy:Z

    .line 1224
    new-instance v0, Lcn/nubia/improve/move/AddExecutor;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object p3, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, p2, p3}, Lcn/nubia/improve/move/AddExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    .line 1225
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 1226
    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mIsCopy:Z

    move-object v1, p0

    move-object v3, p1

    .line 1225
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/move/AddExecutor;->doAdd(Lcn/nubia/improve/move/AddExecutor$AddProgressListener;ILjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 1227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "albumpage onStateResult path :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlbumPage"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1215
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 1211
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    :pswitch_4
    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "return-index-hint"

    .line 1206
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1207
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    :pswitch_5
    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "photo-index"

    .line 1199
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1200
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/SlotView;->setCenterIndex(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V
    .locals 2

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " result="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumPage"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcn/nubia/gallery3d/app/AlbumPage$12;

    invoke-direct {v0, p0, p2}, Lcn/nubia/gallery3d/app/AlbumPage$12;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshRootPane()V
    .locals 1

    .line 1651
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->refreshRootPane()V

    .line 1652
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1653
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void
.end method
