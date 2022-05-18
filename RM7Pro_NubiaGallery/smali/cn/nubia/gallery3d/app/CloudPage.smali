.class public Lcn/nubia/gallery3d/app/CloudPage;
.super Lcn/nubia/gallery3d/app/ActivityState;
.source "CloudPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcn/nubia/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;,
        Lcn/nubia/gallery3d/app/CloudPage$LoginListener;,
        Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final DATA_CACHE_SIZE:I = 0x100

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final MSG_GET_CLOUD_MANAGER:I = 0x2

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final MSG_SET_HINTVIEW:I = 0x4

.field private static final MSG_SHOW_CTA_DIALOG:I = 0x7

.field private static final MSG_SHOW_LOGINERROR:I = 0x3

.field public static final NUBIA_CLOUD:Ljava/lang/String; = "nubia_cloud"

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CloudPage"

.field private static mLoadingDialogIsShown:Z = false


# instance fields
.field private final MSG_HIDE_LOADING_DIALOG:I

.field private final MSG_HIDE_LOGIN_VIEW:I

.field private final MSG_SHOW_LOADING_DIALOG:I

.field private isShowMoreItem:Z

.field private mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

.field private mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field private mCloudIsEmpty:Z

.field private mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

.field private mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

.field private mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

.field private mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mGetMultiContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsLogin:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoadCloudAlbumListener:Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;

.field private mLoadingBits:I

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

.field private mMenuMoreView:Landroid/widget/ImageView;

.field private final mRootPane:Lcn/nubia/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

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

.field private mX:F

.field private mY:F

.field private mZ:F

.field private nubiaAccountexist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 88
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x5

    .line 98
    iput v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->MSG_SHOW_LOADING_DIALOG:I

    const/4 v0, 0x6

    .line 99
    iput v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->MSG_HIDE_LOADING_DIALOG:I

    const/16 v0, 0x8

    .line 101
    iput v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->MSG_HIDE_LOGIN_VIEW:I

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsActive:Z

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    .line 135
    iput v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingBits:I

    .line 136
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mInitialSynced:Z

    .line 138
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    .line 140
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 141
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->isShowMoreItem:Z

    .line 142
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 143
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    .line 145
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadCloudAlbumListener:Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;

    .line 146
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 148
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsLogin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudIsEmpty:Z

    .line 151
    iput-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 153
    new-instance v0, Lcn/nubia/gallery3d/app/CloudPage$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/CloudPage$1;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/EyePosition;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/StaticBackground;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/CloudPage;)F
    .locals 0

    .line 88
    iget p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mY:F

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/CloudPage;)F
    .locals 0

    .line 88
    iget p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mZ:F

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/CloudPage;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    return-object p0
.end method

.method static synthetic access$1402(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager;
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/CloudPage;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadCloudAlbumListener:Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/CloudPage;)Z
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->needMoveOldPhotos()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->setNoNeedToMoveOldPath()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/app/CloudPage;Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->showLoginErrorHint(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/app/CloudPage;II)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CloudPage;->setHintView(II)V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideCloudLoginView()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/app/CloudPage;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/app/CloudPage;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$2802(Lcn/nubia/gallery3d/app/CloudPage;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2900(Lcn/nubia/gallery3d/app/CloudPage;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/app/CloudPage;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/app/CloudPage;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/app/CloudPage;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudIsEmpty:Z

    return p0
.end method

.method static synthetic access$3302(Lcn/nubia/gallery3d/app/CloudPage;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudIsEmpty:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/CloudPage;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetMultiContent:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/SlotView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/CloudPage;)F
    .locals 0

    .line 88
    iget p0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mX:F

    return p0
.end method

.method private clearLoadingBit(I)V
    .locals 2

    .line 461
    iget v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingBits:I

    if-nez p1, :cond_1

    .line 462
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 470
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 473
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/StateManager;->getStateCount()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 474
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsTab:Z

    if-nez p1, :cond_1

    .line 475
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/content/Context;

    const v1, 0x7f1000a0

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 477
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    :cond_1
    return-void
.end method

.method private getSlotCenter(I[I)V
    .locals 6

    .line 242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 243
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/ui/GLView;->getBoundsOf(Lcn/nubia/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 244
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 245
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollX()I

    move-result v1

    .line 246
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollY()I

    move-result v2

    .line 247
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v3, p2, v1

    .line 248
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    const/4 p1, 0x1

    aput v0, p2, p1

    return-void
.end method

.method private hideCloudLoginView()V
    .locals 2

    .line 810
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    if-eqz v0, :cond_0

    const-string v0, "login"

    const-string v1, " hideCloudLoginView==========="

    .line 811
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudLoginView;->hide()V

    const/4 v0, 0x0

    .line 813
    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    :cond_0
    return-void
.end method

.method private hideEmptyAlbumToast()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private hideLoadingDialog()V
    .locals 1

    .line 921
    sget-boolean v0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingDialogIsShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 923
    sput-boolean v0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingDialogIsShown:Z

    :cond_0
    return-void
.end method

.method private initBackupSetting()V
    .locals 5

    .line 928
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CloudAblumBackupSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selectedAlbums"

    .line 930
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 931
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "back_up_toggle"

    .line 932
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 935
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->addDefaultBucket()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 936
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "media-path"

    .line 560
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 564
    new-instance p1, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    const/16 v2, 0x100

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    .line 566
    new-instance v0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/app/CloudPage$1;)V

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V

    .line 567
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)V

    .line 568
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    return-void
.end method

.method private initializeViews()V
    .locals 5

    .line 572
    new-instance v0, Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    .line 573
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 574
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e3

    .line 575
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 574
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;->setColor(I)V

    .line 576
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 577
    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSelectionListener(Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 579
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    .line 580
    new-instance v0, Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    .line 581
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/CloudPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    .line 584
    new-instance v0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    .line 585
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getScreenPixels(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 586
    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->setScreenSize(II)V

    .line 587
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V

    .line 588
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    new-instance v1, Lcn/nubia/gallery3d/app/CloudPage$4;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CloudPage$4;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->setListener(Lcn/nubia/gallery3d/ui/SlotView$Listener;)V

    .line 610
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 611
    new-instance v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    return-void
.end method

.method private isCloudItemRecordedInLocalDatabase()Z
    .locals 3

    .line 893
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "state=\'106\' AND deleted!=\'1\'"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 900
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 901
    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 900
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v1
.end method

.method private needMoveOldPhotos()Z
    .locals 3

    .line 441
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CloudAblumBackupSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sync_old_path"

    const/4 v2, 0x1

    .line 443
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onDown(I)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private pickAlbum(I)V
    .locals 10

    .line 293
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 299
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 300
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/app/CloudPage;->showEmptyAlbumToast(I)V

    return-void

    .line 303
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideEmptyAlbumToast()V

    .line 305
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CloudPage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 309
    invoke-direct {p0, p1, v4}, Lcn/nubia/gallery3d/app/CloudPage;->getSlotCenter(I[I)V

    const-string p1, "set-center"

    .line 310
    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 311
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetAlbum:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 312
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    .line 313
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "album-path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 315
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 316
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 317
    :cond_4
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result p1

    const-string v4, "media-path"

    const/4 v5, 0x1

    if-lez p1, :cond_5

    .line 318
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1, v0, v5, v3}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 322
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetContent:Z

    if-nez p1, :cond_6

    .line 323
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v6

    const-wide/16 v8, 0x800

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-eqz p1, :cond_6

    const-string p1, "auto-select-all"

    .line 324
    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    :cond_6
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result p1

    xor-int/2addr p1, v5

    const-string v0, "cluster-menu"

    .line 330
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "is-tab"

    .line 331
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "nubia_cloud"

    .line 332
    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {p1, v0, v5, v3}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private setHintView(II)V
    .locals 3

    .line 851
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    if-nez v0, :cond_0

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    .line 855
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p2, v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTabHeight()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 856
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 857
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 858
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    invoke-virtual {p1, v1}, Lcn/nubia/cloud/ui/CloudLoginView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 485
    iget v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingBits:I

    return-void
.end method

.method private setNoNeedToMoveOldPath()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CloudAblumBackupSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_old_path"

    .line 450
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showCloudLoginView(Z)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    if-eqz v0, :cond_0

    return-void

    .line 792
    :cond_0
    new-instance v0, Lcn/nubia/cloud/ui/CloudLoginView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/ui/CloudLoginView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    .line 793
    new-instance v1, Lcn/nubia/gallery3d/app/CloudPage$7;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CloudPage$7;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/ui/CloudLoginView;->setLoginButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/CloudPage;->setHintView(II)V

    if-eqz p1, :cond_1

    .line 803
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudLoginView;->setBottonGone()V

    .line 804
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudLoginView;->setTextViewShowEmpty()V

    .line 806
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudLoginView:Lcn/nubia/cloud/ui/CloudLoginView;

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudLoginView;->show()V

    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1000a0

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 282
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showEmptyPage()Z
    .locals 2

    .line 906
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->isCloudItemRecordedInLocalDatabase()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 908
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/CloudPage;->showCloudLoginView(Z)V

    :cond_0
    return v1
.end method

.method private showLoadingDialog()V
    .locals 3

    .line 914
    sget-boolean v0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingDialogIsShown:Z

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "roading"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    .line 916
    sput-boolean v0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadingDialogIsShown:Z

    :cond_0
    return-void
.end method

.method private showLoginErrorHint(Landroid/content/Context;)V
    .locals 4

    .line 835
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    .line 836
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 837
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 838
    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 839
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 841
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcn/nubia/gallery3d/app/CloudPage$8;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/CloudPage$8;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    .line 842
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 846
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 847
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateAppBars()V
    .locals 3

    .line 615
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->checkTab(I)V

    .line 616
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showTab()V

    .line 617
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/CloudPage$5;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CloudPage$5;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    const v2, 0x7f08008b

    invoke-virtual {v0, v2, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCustomImage(ILandroid/view/View$OnClickListener;)V

    .line 628
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getCustomImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuMoreView:Landroid/widget/ImageView;

    .line 629
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuMoreView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 775
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 776
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    if-nez p1, :cond_0

    .line 777
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideCloudLoginView()V

    const/4 p1, 0x0

    .line 778
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->showCloudLoginView(Z)V

    goto :goto_0

    .line 780
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->isCloudItemRecordedInLocalDatabase()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz p1, :cond_1

    .line 781
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 782
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideCloudLoginView()V

    const/4 p1, 0x1

    .line 783
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->showCloudLoginView(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 362
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 363
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->initBackupSetting()V

    .line 365
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->initializeViews()V

    .line 366
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->initializeData(Landroid/os/Bundle;)V

    .line 367
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "get-content"

    const/4 v1, 0x0

    .line 368
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetContent:Z

    const-string v0, "get_multi_content"

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetMultiContent:Z

    const-string v0, "get-album"

    .line 370
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetAlbum:Z

    .line 371
    new-instance p1, Lcn/nubia/gallery3d/app/EyePosition;

    invoke-direct {p1, p2, p0}, Lcn/nubia/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    .line 372
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 p2, 0x1

    .line 373
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 375
    new-instance p1, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;-><init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/app/CloudPage$1;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mLoadCloudAlbumListener:Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;

    .line 376
    new-instance p1, Lcn/nubia/gallery3d/app/CloudPage$2;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/gallery3d/app/CloudPage$2;-><init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1

    .line 634
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setBackgroundColor(Z)V

    .line 635
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 636
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 637
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_1

    .line 638
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    goto :goto_0

    .line 641
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->updateAppBars()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 456
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    .line 457
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideCloudLoginView()V

    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->lockRendering()V

    .line 216
    iput p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mX:F

    .line 217
    iput p2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mY:F

    .line 218
    iput p3, p0, Lcn/nubia/gallery3d/app/CloudPage;->mZ:F

    .line 219
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->unlockRendering()V

    .line 220
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void
.end method

.method public onLongTap(I)V
    .locals 3

    .line 352
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetContent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mGetAlbum:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 356
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 357
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    const/16 p2, 0x8

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v0, Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->reSetForceReloadFlag()V

    .line 491
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->forceStopScrolling()V

    .line 492
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsActive:Z

    .line 494
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 495
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->pause()V

    .line 496
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/EyePosition;->pause()V

    .line 497
    invoke-static {}, Lcn/nubia/gallery3d/ui/DetailsHelper;->pause()V

    .line 498
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideCloudLoginView()V

    .line 502
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    const/4 v0, 0x2

    .line 505
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CloudPage;->clearLoadingBit(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 511
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    .line 512
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 513
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsActive:Z

    .line 514
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/CloudPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 515
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isNubiaAccountLogin(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    .line 516
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 518
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 520
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    invoke-virtual {v0, v2}, Lcn/nubia/improve/xcloud/CloudManager;->setLogin(Z)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubiaAccountexist = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mIsLogin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsLogin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CloudPage"

    invoke-static {v2, v0}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    if-nez v0, :cond_2

    .line 523
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsLogin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    check-cast v0, Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->needReload()V

    .line 527
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/app/CloudPage;->showCloudLoginView(Z)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->hideCloudLoginView()V

    .line 531
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 532
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsLogin:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/CloudPage;->nubiaAccountexist:Z

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 536
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/CloudPage;->setLoadingBit(I)V

    .line 537
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 538
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/EyePosition;->resume()V

    .line 539
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v0, :cond_3

    .line 540
    new-instance v1, Lcn/nubia/gallery3d/app/CloudPage$3;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CloudPage$3;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setMenuActionListener(Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;)V

    .line 550
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mInitialSynced:Z

    if-nez v0, :cond_4

    const/4 v0, 0x2

    .line 551
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CloudPage;->setLoadingBit(I)V

    .line 552
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/MediaSet;->requestSync(Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSyncTask:Lcn/nubia/gallery3d/util/Future;

    .line 554
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    .line 555
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->showEmptyPage()Z

    .line 556
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object v0

    const-string v1, "cn.nubia.gallery3d"

    const-string v2, "gallery_launch_cloud"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectionChange(Lcn/nubia/gallery3d/data/Path;Z)V
    .locals 0

    .line 720
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_1

    .line 721
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 723
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    goto :goto_0

    .line 725
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 727
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    :cond_1
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 7

    .line 669
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 707
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_1

    .line 708
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 710
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 712
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_0

    .line 699
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_3

    .line 700
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 701
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 703
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 688
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_5

    .line 689
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 690
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1, v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 692
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 693
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CloudPage;->updateAppBars()V

    .line 695
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 672
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 673
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 674
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_7

    .line 675
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 676
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v4, 0x7f09000e

    const v5, 0x7f080110

    const v6, 0x7f100078

    invoke-virtual {p1, v0, v4, v5, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 678
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 679
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 680
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 681
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    .line 683
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CloudPage;->performLongPressHapticFeedback()V

    .line 684
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 3

    .line 252
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 259
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 650
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->startRisingAnimation()V

    .line 653
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "login success, resultCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudPage"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAccountVersionCode()I

    move-result p1

    const/16 v0, 0x208

    if-lt p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 656
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez p1, :cond_2

    .line 657
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 659
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {p1, p3}, Lcn/nubia/improve/xcloud/CloudManager;->setLogin(Z)V

    .line 662
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CloudPage;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isNubiaAccountLogin(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z

    :goto_0
    return-void
.end method

.method public onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 734
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

    const-string v0, "CloudPage"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcn/nubia/gallery3d/app/CloudPage$6;

    invoke-direct {v0, p0, p2}, Lcn/nubia/gallery3d/app/CloudPage$6;-><init>(Lcn/nubia/gallery3d/app/CloudPage;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshRootPane()V
    .locals 1

    .line 943
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->refreshRootPane()V

    .line 944
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 945
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void
.end method
