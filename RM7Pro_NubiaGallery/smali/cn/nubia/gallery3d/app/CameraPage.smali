.class public Lcn/nubia/gallery3d/app/CameraPage;
.super Lcn/nubia/gallery3d/app/ActivityState;
.source "CameraPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcn/nubia/gallery3d/data/MediaSet$SyncListener;
.implements Lcn/nubia/improve/move/AddExecutor$AddProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final KEY_SHOW_CLUSTER_MENU:Ljava/lang/String; = "cluster-menu"

.field public static final MAX_GIF_COUNT:I = 0x96

.field public static final MAX_JIGSAW_COUNT:I = 0x9

.field private static final MSG_PICK_PHOTO:I = 0x1

.field private static final MSG_SELECTION_LIMIT:I = 0x5

.field private static final MSG_SET_HINTVIEW:I = 0x3

.field private static final MSG_SHARE_MODE:I = 0x2

.field private static final MSG_SHOW_CTA_DIALOG:I = 0x4

.field private static final REQUEST_ALBUMSETINFO:I = 0x5

.field private static final REQUEST_BULKEDITING:I = 0x6

.field public static final REQUEST_DO_ANIMATION:I = 0x3

.field public static final REQUEST_LEAVESELECTIONMODE:I = 0x4

.field public static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private config:Lcn/nubia/gallery3d/app/Config$CameraPage;

.field private mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

.field private mAddtoNewfolder:Z

.field private mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

.field private mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

.field private mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field private mContext:Landroid/content/Context;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mGetMultiContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsLocationAlbum:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

.field private mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

.field private mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

.field private mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

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
.method public constructor <init>()V
    .locals 3

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    .line 130
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetMultiContent:Z

    .line 134
    iput v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mFocusIndex:I

    .line 138
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mShareMode:Z

    .line 140
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    .line 142
    iput v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mLoadingBits:I

    .line 143
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mInitialSynced:Z

    .line 144
    new-instance v2, Lcn/nubia/gallery3d/ui/RelativePosition;

    invoke-direct {v2}, Lcn/nubia/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    .line 146
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    .line 147
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->moveDialog:Landroid/app/AlertDialog;

    .line 151
    iput v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotViewTop:I

    .line 152
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mReselectMethod:Lcn/nubia/improve/gif/IntervalSelectMethod;

    .line 159
    new-instance v0, Lcn/nubia/gallery3d/app/CameraPage$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/CameraPage$1;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 181
    new-instance v0, Lcn/nubia/gallery3d/app/CameraPage$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/CameraPage$2;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    .line 668
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/app/AlbumDataLoader;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/os/Handler;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/CameraPage;)F
    .locals 0

    .line 85
    iget p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mUserDistance:F

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    return-object p0
.end method

.method static synthetic access$1302(Lcn/nubia/gallery3d/app/CameraPage;Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/CameraPage;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/CameraPage;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->goShareView(I)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/CameraPage;II)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CameraPage;->setHintView(II)V

    return-void
.end method

.method static synthetic access$1702(Lcn/nubia/gallery3d/app/CameraPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelected:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->setShareMode()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->startCollage()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/StaticBackground;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->initMorePopWindow()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->startMakeGif()V

    return-void
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->startPickAlbumInfoActivity()V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->dismissDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/app/CameraPage;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/app/CameraPage;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/app/CameraPage;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/gallery3d/app/CameraPage;II)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CameraPage;->onScrollPositionChanged(II)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/app/CameraPage;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/app/CameraPage;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsLocationAlbum:Z

    return p0
.end method

.method static synthetic access$3200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/app/CameraPage;IF)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CameraPage;->onScrollBarPositionChanged(IF)V

    return-void
.end method

.method static synthetic access$3501(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->onUpPressed()V

    return-void
.end method

.method static synthetic access$3702(Lcn/nubia/gallery3d/app/CameraPage;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$3800(Lcn/nubia/gallery3d/app/CameraPage;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3900(Lcn/nubia/gallery3d/app/CameraPage;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$402(Lcn/nubia/gallery3d/app/CameraPage;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotViewTop:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/RelativePosition;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/CameraPage;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetMultiContent:Z

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private clearLoadingBit(I)V
    .locals 1

    .line 1193
    iget v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mLoadingBits:I

    if-nez p1, :cond_2

    .line 1194
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    if-eqz p1, :cond_2

    .line 1195
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1196
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsLocationAlbum:Z

    if-eqz p1, :cond_0

    .line 1197
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->showEmptyAlbumToast()V

    .line 1198
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 1200
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->showHintView()V

    goto :goto_0

    .line 1203
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->hideHintView()V

    .line 1206
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->updateSelectButton()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 703
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getSlotRect(I)Landroid/graphics/Rect;
    .locals 3

    .line 389
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 390
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/ui/GLView;->getBoundsOf(Lcn/nubia/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 391
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 392
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method private goShareView(I)V
    .locals 3

    .line 1313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index-hint"

    .line 1314
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    const-string v1, "open-animation-rect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1316
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "media-set-path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelected:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const-string v1, "share-clicked-path"

    .line 1318
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1319
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    :cond_0
    const/4 p1, 0x1

    const-string v1, "share-from-albumpage"

    .line 1321
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1322
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v1, Lcn/nubia/gallery3d/app/PhotoPage;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    return-void
.end method

.method private hideHintView()V
    .locals 1

    .line 1352
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz v0, :cond_0

    .line 1353
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/HintViewLayout;->hide()V

    const/4 v0, 0x0

    .line 1354
    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 486
    new-instance v0, Lcn/nubia/gallery3d/app/CameraPage$3;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/CameraPage$3;-><init>(Lcn/nubia/gallery3d/app/CameraPage;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initMorePopWindow()V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 589
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v3, 0x7f100214

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v3, 0x7f100142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v3, 0x7f100044

    .line 590
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v3, 0x7f1001f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v3, 0x7f10002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v0, v0, [I

    .line 591
    fill-array-data v0, :array_0

    .line 592
    new-instance v2, Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    .line 593
    invoke-virtual {v2, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->addMenuID([I)V

    .line 594
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    new-instance v2, Lcn/nubia/gallery3d/app/CameraPage$5;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/CameraPage$5;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

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
.end method

.method private initialize(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 461
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/app/CameraPage;->reloadClusters(Landroid/os/Bundle;)V

    .line 462
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->initializeViews()V

    .line 463
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->initializeData(Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    const-string p2, "set-center"

    .line 466
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 468
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p2, v0, p1}, Lcn/nubia/gallery3d/ui/RelativePosition;->setAbsolutePosition(II)V

    .line 469
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mOpenCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SlotView;->startScatteringAnimation(Lcn/nubia/gallery3d/ui/RelativePosition;)V

    .line 472
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->initHandler()V

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3

    .line 907
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    .line 908
    new-instance v1, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/CameraPage;Lcn/nubia/gallery3d/app/CameraPage$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V

    .line 909
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcn/nubia/gallery3d/app/AlbumDataLoader;)V

    const-string v0, "get-content"

    const/4 v1, 0x0

    .line 910
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetContent:Z

    const-string v0, "addto_newfolder"

    .line 911
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAddtoNewfolder:Z

    const-string v0, "get_multi_content"

    .line 912
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetMultiContent:Z

    .line 913
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->setInMultiSelectionMode(Z)V

    const-string v0, "max_num"

    const v1, 0x7fffffff

    .line 914
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 915
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->setMaxSelectionCount(I)V

    .line 916
    new-instance v0, Lcn/nubia/improve/gif/IntervalSelectMethod;

    invoke-direct {v0}, Lcn/nubia/improve/gif/IntervalSelectMethod;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mReselectMethod:Lcn/nubia/improve/gif/IntervalSelectMethod;

    const-string v0, "auto-select-all"

    .line 918
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 919
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    :cond_0
    return-void
.end method

.method private initializeViews()V
    .locals 6

    .line 775
    new-instance v0, Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    .line 776
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 777
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e3

    .line 778
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 777
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;->setColor(I)V

    .line 779
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getSelectionManager()Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 780
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/Config$CameraPage;->get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$CameraPage;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->config:Lcn/nubia/gallery3d/app/Config$CameraPage;

    .line 781
    new-instance v0, Lcn/nubia/improve/move/AlbumView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/improve/move/AlbumView;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    .line 782
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CameraPage;->config:Lcn/nubia/gallery3d/app/Config$CameraPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/Config$CameraPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    .line 784
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsLocationAlbum:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    new-instance v2, Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/CameraPage;->config:Lcn/nubia/gallery3d/app/Config$CameraPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/Config$CameraPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v5, Lcn/nubia/gallery3d/data/LocationAlbum;

    .line 786
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/LocationAlbum;->getClustering()Lcn/nubia/gallery3d/data/NubiaLocationClustering;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/gallery3d/ui/layout/LocationLayout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;Lcn/nubia/gallery3d/data/NubiaLocationClustering;)V

    .line 785
    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V

    goto :goto_0

    .line 788
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    new-instance v2, Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/CameraPage;->config:Lcn/nubia/gallery3d/app/Config$CameraPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/Config$CameraPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v5, Lcn/nubia/gallery3d/data/CameraAlbum;

    .line 789
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/CameraAlbum;->getClustering()Lcn/nubia/gallery3d/data/CameraClustering;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;Lcn/nubia/gallery3d/data/CameraClustering;)V

    .line 788
    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V

    .line 791
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 792
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    new-instance v1, Lcn/nubia/gallery3d/app/CameraPage$8;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CameraPage$8;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->setListener(Lcn/nubia/gallery3d/ui/SlotView$Listener;)V

    .line 891
    new-instance v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    .line 892
    new-instance v0, Lcn/nubia/gallery3d/ui/ScrollBarView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    .line 893
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 894
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    new-instance v2, Lcn/nubia/gallery3d/app/CameraPage$9;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/CameraPage$9;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/ScrollBarView;->setListener(Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;)V

    .line 902
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    .line 903
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onGetContent(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 399
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mData:Landroid/os/Bundle;

    const-string v3, "crop"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 401
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x2000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 403
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 404
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mData:Landroid/os/Bundle;

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "return-data"

    .line 405
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p1, "CameraPage"

    const-string v0, "Crop not support or activity not found"

    .line 411
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 415
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 416
    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 418
    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onScrollBarPositionChanged(IF)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/SlotView;->onScrollBarPositionChanged(IF)V

    :cond_0
    return-void
.end method

.method private onScrollPositionChanged(II)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0, p2}, Lcn/nubia/gallery3d/ui/ScrollBarView;->calculateScrollRate(I)F

    .line 329
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsLocationAlbum:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v0, p2, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-eqz v0, :cond_0

    .line 330
    check-cast p2, Lcn/nubia/gallery3d/data/LocationAlbum;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/LocationAlbum;->getClustering()Lcn/nubia/gallery3d/data/NubiaLocationClustering;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->getCaptionByPosition(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 333
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast p2, Lcn/nubia/gallery3d/data/CameraAlbum;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/CameraAlbum;->getClustering()Lcn/nubia/gallery3d/data/CameraClustering;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/CameraClustering;->getCaptionByPosition(I)Ljava/lang/String;

    move-result-object p2

    .line 336
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mScrollBarView:Lcn/nubia/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/ScrollBarView;->onScrollPositionChanged(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onSingleTapUp(I)V
    .locals 3

    .line 304
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 312
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 313
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHandler:Landroid/os/Handler;

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

    .line 297
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private onUpPressed()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 283
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mParentMediaSetString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->switchState(Lcn/nubia/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private pickPhoto(I)V
    .locals 5

    .line 347
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    .line 359
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v1, v2, :cond_4

    .line 361
    new-instance p1, Landroid/os/Bundle;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mData:Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "type-bits"

    const/4 v2, 0x3

    .line 362
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v4, v1, :cond_2

    .line 363
    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    goto :goto_0

    :cond_3
    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    .line 366
    :goto_0
    check-cast v0, Lcn/nubia/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalImage;->getBucketId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media-path"

    .line 367
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cluster-menu"

    const/4 v1, 0x0

    .line 368
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is-tab"

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "in-multishoot"

    .line 370
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 373
    :cond_4
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetContent:Z

    if-eqz v1, :cond_5

    .line 374
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CameraPage;->onGetContent(Lcn/nubia/gallery3d/data/MediaItem;)V

    goto :goto_1

    .line 378
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index-hint"

    .line 379
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    const-string v2, "open-animation-rect"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 381
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media-item-path"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1, v0, v3, v1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 354
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private reloadClusters(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 477
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsLocationAlbum:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v1, p1, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-eqz v1, :cond_0

    .line 478
    check-cast p1, Lcn/nubia/gallery3d/data/LocationAlbum;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/LocationAlbum;->needReloadClusters(Z)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast p1, Lcn/nubia/gallery3d/data/CameraAlbum;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/CameraAlbum;->needReloadClusters(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHintView(II)V
    .locals 3

    .line 1342
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-nez v0, :cond_0

    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    .line 1345
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p2, v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    .line 1346
    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTabHeight()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1347
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1348
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 1189
    iget v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mLoadingBits:I

    return-void
.end method

.method private setShareMode()V
    .locals 4

    .line 1300
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getFirstSelectedIndex()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    .line 1304
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1308
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->share()V

    :goto_0
    return-void
.end method

.method private share()V
    .locals 12

    .line 984
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 985
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 986
    iget-object v3, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    .line 988
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 989
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

    .line 990
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getSupportedOperations(Lcn/nubia/gallery3d/data/Path;)J

    move-result-wide v8

    .line 991
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v10

    or-int/2addr v6, v10

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 994
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 998
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1000
    invoke-static {v6}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "android.intent.extra.STREAM"

    if-le v0, v1, :cond_2

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 1002
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.SEND"

    .line 1005
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1008
    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1012
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1014
    :catch_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v1, 0x7f10027e

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private showEmptyAlbumToast()V
    .locals 4

    .line 1395
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_1

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1398
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\""

    .line 1399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

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

    .line 1326
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz v0, :cond_0

    return-void

    .line 1328
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/ui/HintViewLayout;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v3, 0x7f08007c

    const v4, 0x7f100107

    const v5, 0x7f100046

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1329
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/HintViewLayout;-><init>(Landroid/content/Context;IIILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    .line 1330
    new-instance v1, Lcn/nubia/gallery3d/app/CameraPage$15;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CameraPage$15;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1337
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/CameraPage;->setHintView(II)V

    .line 1338
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/HintViewLayout;->show()V

    return-void
.end method

.method private startCollage()V
    .locals 3

    .line 1275
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isCollageSuppot(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1279
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.collage"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "imagepathlist"

    .line 1280
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 1281
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 1283
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1284
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startMakeGif()V
    .locals 5

    .line 1248
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.photoedit.makegif"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1252
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x2710

    if-le v1, v4, :cond_0

    .line 1255
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1256
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1000ae

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10000!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1255
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1260
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1261
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraPage"

    const-string v3, "addSubDirectory2Bucket failed"

    .line 1263
    invoke-static {v1, v3}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1266
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1267
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 1268
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x4

    .line 1269
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_1
    return-void
.end method

.method private startPickAlbumInfoActivity()V
    .locals 3

    .line 1359
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/gallery3d/app/AlbumInfoPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1360
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    const-string v2, "hint-count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getFirstSelected()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1363
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item-path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1365
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->activityOpenAnim(Landroid/content/Context;)V

    return-void
.end method

.method private updateAppBars()V
    .locals 4

    .line 924
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    if-nez v0, :cond_0

    return-void

    .line 927
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsTab:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->checkTab(I)V

    .line 929
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showTab()V

    .line 931
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setBackgroundColor(Z)V

    .line 932
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 933
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetContent:Z

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/gallery3d/app/CameraPage$10;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/CameraPage$10;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mData:Landroid/os/Bundle;

    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 942
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    .line 943
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 944
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-virtual {v1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 946
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage;->refreshRootPane()V

    goto :goto_0

    .line 947
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsTab:Z

    if-nez v0, :cond_3

    .line 948
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    const v1, 0x7f080055

    new-instance v2, Lcn/nubia/gallery3d/app/CameraPage$11;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/CameraPage$11;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNavigationIcon(ILandroid/view/View$OnClickListener;)V

    .line 955
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 956
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06008b

    .line 957
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 955
    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleTextColor(I)V

    .line 958
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/CameraPage$12;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/CameraPage$12;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 965
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 967
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->updateSelectButton()V

    return-void
.end method

.method private updateSelectButton()V
    .locals 3

    .line 1210
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1212
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mLoadingBits:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    if-eqz v0, :cond_2

    .line 1213
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1214
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetContent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetMultiContent:Z

    if-nez v0, :cond_2

    .line 1215
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setConfirmText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1218
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetContent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetMultiContent:Z

    if-nez v0, :cond_2

    .line 1219
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v2, 0x7f1001eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/CameraPage$14;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/CameraPage$14;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setConfirmText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public SetAsPrivate(Landroid/content/Context;)V
    .locals 3

    .line 671
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v1, 0x7f1100a5

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f100060

    new-instance v1, Lcn/nubia/gallery3d/app/CameraPage$7;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CameraPage$7;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    .line 673
    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10004e

    new-instance v1, Lcn/nubia/gallery3d/app/CameraPage$6;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CameraPage$6;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    .line 689
    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    .line 695
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const v0, 0x7f1001be

    .line 696
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(I)V

    .line 697
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v0, -0x1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 698
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method protected initMorePopWindowStatu()V
    .locals 11

    .line 708
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getOperaEntry()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getOperaEntry()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->getOperation()J

    move-result-wide v0

    .line 710
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getOrientationManager()Lcn/nubia/gallery3d/app/OrientationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/OrientationManager;->getDisplayRotation()I

    .line 716
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

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
    iget-object v9, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v10, 0x7f100142

    .line 717
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f09003e

    .line 716
    invoke-virtual {v2, v8, v9, v10}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 718
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    iget-object v8, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v9, 0x7f100044

    .line 719
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f09003f

    .line 718
    invoke-virtual {v2, v3, v8, v9}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 720
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    const-wide/32 v8, 0x20000000

    and-long/2addr v0, v8

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v1, 0x7f100214

    .line 721
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090042

    .line 720
    invoke-virtual {v2, v4, v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 722
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    .line 723
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSupportPrivacySpace(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const v3, 0x7f1001f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090153

    .line 722
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    :cond_3
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetMultiContent:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->onUpPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1289
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1290
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage;->isPaused()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz p1, :cond_0

    .line 1291
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->hideHintView()V

    .line 1292
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->showHintView()V

    .line 1294
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz p1, :cond_1

    .line 1295
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 445
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    const v0, 0x3e99999a    # 0.3f

    .line 446
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mUserDistance:F

    .line 447
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const-string v0, "media-path"

    .line 448
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "parent-media-path"

    .line 449
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mParentMediaSetString:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    const-string v0, "is-locationalbum"

    const/4 v1, 0x0

    .line 451
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsLocationAlbum:Z

    .line 452
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MediaSet is null. Path = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSetPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraPage"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CameraPage;->initialize(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    .line 972
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    if-eqz p1, :cond_0

    .line 973
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 975
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 976
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    goto :goto_0

    .line 978
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->updateAppBars()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 768
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    .line 769
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 770
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongTap(I)V
    .locals 3

    .line 422
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mGetContent:Z

    if-eqz v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 428
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 429
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 430
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

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

    .line 729
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    .line 732
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Lcn/nubia/improve/move/AddExecutor;->pause()V

    .line 735
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->onPause()V

    .line 739
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->pause()V

    .line 742
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 743
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 744
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 746
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_4

    .line 747
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 748
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    const/4 v0, 0x2

    .line 749
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CameraPage;->clearLoadingBit(I)V

    .line 751
    :cond_4
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->hideHintView()V

    .line 753
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz v0, :cond_5

    .line 754
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->freeHeaderTexture()V

    .line 757
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_7

    .line 758
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsLocationAlbum:Z

    if-eqz v1, :cond_6

    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-eqz v1, :cond_6

    .line 759
    check-cast v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocationAlbum;->getClustering()Lcn/nubia/gallery3d/data/NubiaLocationClustering;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->clearDisplayNames()V

    goto :goto_0

    .line 761
    :cond_6
    check-cast v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getClustering()Lcn/nubia/gallery3d/data/CameraClustering;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CameraClustering;->clearDisplayNames()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onProgressComplete(II)V
    .locals 2

    .line 1370
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_2

    .line 1375
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    const p2, 0x7f100175

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 1378
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    invoke-virtual {p1}, Lcn/nubia/improve/move/AddExecutor;->showAddFailToast()V

    goto :goto_0

    .line 1383
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 521
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    .line 522
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 523
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mIsActive:Z

    .line 526
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAllowFadeTexture:Z

    .line 528
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v2, "resume_animation"

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v0, :cond_0

    .line 529
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    if-eqz v2, :cond_0

    .line 530
    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 531
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 532
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mResumeEffect:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 535
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/CameraPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 536
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_1

    return-void

    .line 539
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    .line 543
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/CameraPage;->setLoadingBit(I)V

    .line 544
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    .line 545
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    .line 546
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumDataAdapter:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->resume()V

    .line 547
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAlbumView:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 548
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    new-instance v1, Lcn/nubia/gallery3d/app/CameraPage$4;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CameraPage$4;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setMenuActionListener(Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;)V

    .line 575
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mInitialSynced:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 576
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CameraPage;->setLoadingBit(I)V

    .line 577
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/MediaSet;->requestSync(Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    .line 579
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 580
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelected:Ljava/util/ArrayList;

    .line 583
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSelectionListener(Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;)V

    return-void
.end method

.method public onSelectionChange(Lcn/nubia/gallery3d/data/Path;Z)V
    .locals 0

    .line 1152
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 1154
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    goto :goto_0

    .line 1156
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 1158
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1139
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz p1, :cond_3

    .line 1140
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->leaveSelectionAllMode()V

    goto/16 :goto_1

    .line 1133
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz p1, :cond_3

    .line 1134
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->enterSelectionAllMode()V

    goto/16 :goto_1

    .line 1127
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1128
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1145
    :pswitch_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage;->onBackPressed()V

    goto/16 :goto_1

    .line 1123
    :pswitch_4
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage;->onSelectionCancel()V

    goto/16 :goto_1

    .line 1119
    :pswitch_5
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAddtoNewfolder:Z

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->onSelectionDone(Z)V

    goto/16 :goto_1

    .line 1113
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 1114
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1115
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_1

    .line 1106
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1107
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 1108
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1109
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_1

    .line 1094
    :pswitch_8
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 1095
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 1096
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1097
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CameraPage;->updateAppBars()V

    .line 1098
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1099
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    .line 1100
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    if-eqz p1, :cond_3

    .line 1101
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->leaveSelectionMode()V

    goto/16 :goto_1

    .line 1067
    :pswitch_9
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInMultiSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 1070
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1071
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 1072
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_2

    .line 1073
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1074
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v2, 0x7f09002d

    const v3, 0x7f08013a

    const v4, 0x7f1001fc

    invoke-virtual {p1, v0, v2, v3, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1076
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/improve/ImproveConfig;->isNoJigSaw_New(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1077
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto :goto_0

    .line 1079
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v0, 0x7f09000f

    const v2, 0x7f08010c

    const v3, 0x7f100126

    invoke-virtual {p1, v1, v0, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1082
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v0, 0x2

    const v1, 0x7f090025

    const v2, 0x7f080110

    const v3, 0x7f100078

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1084
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const/4 v0, 0x3

    const v1, 0x7f090022

    const v2, 0x7f080130

    const v3, 0x7f10015d

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1086
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    .line 1088
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage;->performLongPressHapticFeedback()V

    .line 1089
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1090
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    :cond_3
    :goto_1
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
    .locals 9

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_7

    const-string p1, "album-path"

    .line 1047
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mediaitem-count"

    .line 1048
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "addto_iscopy"

    .line 1049
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1050
    new-instance v1, Lcn/nubia/improve/move/AddExecutor;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object p3, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v1, p2, p3}, Lcn/nubia/improve/move/AddExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    .line 1051
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 1052
    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    .line 1051
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/improve/move/AddExecutor;->doAdd(Lcn/nubia/improve/move/AddExecutor$AddProgressListener;ILjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 1053
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "albumpage onStateResult path :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraPage"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1042
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 1037
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    return-void

    :cond_4
    const-string p1, "return-index-hint"

    .line 1032
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mFocusIndex:I

    .line 1033
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    return-void

    :cond_6
    const-string p1, "photo-index"

    .line 1025
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mFocusIndex:I

    .line 1026
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/SlotView;->setCenterIndex(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V
    .locals 2

    .line 1163
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

    const-string v0, "CameraPage"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcn/nubia/gallery3d/app/CameraPage$13;

    invoke-direct {v0, p0, p2}, Lcn/nubia/gallery3d/app/CameraPage$13;-><init>(Lcn/nubia/gallery3d/app/CameraPage;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshRootPane()V
    .locals 1

    .line 1389
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->refreshRootPane()V

    .line 1390
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1391
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void
.end method
