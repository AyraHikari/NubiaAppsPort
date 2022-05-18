.class public Lcn/nubia/gallery3d/app/PhotoPage;
.super Lcn/nubia/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/PhotoView$Listener;
.implements Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;
.implements Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;
.implements Lcn/nubia/gallery3d/app/ItemNotFindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;,
        Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;,
        Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;,
        Lcn/nubia/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field public static final DYNAMIC_WALLPAPER_EVENT_NAME:Ljava/lang/String; = "set_dynamic_wallpaper_option_click"

.field public static final DYNAMIC_WALLPAPER_KEY_NAME:Ljava/lang/String; = "duration"

.field public static final KEY_ENTER_IN_VISITOR_MODE:Ljava/lang/String; = "visitor-mode"

.field public static final KEY_ENTER_IN_VISITOR_MODE_TIME:Ljava/lang/String; = "visitor-mode-time"

.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final KEY_SHARE_CLICKED_PATH:Ljava/lang/String; = "share-clicked-path"

.field public static final KEY_SHARE_FROM_ALBUMPAGE:Ljava/lang/String; = "share-from-albumpage"

.field public static final KEY_TREAT_BACK_AS_UP:Ljava/lang/String; = "treat-back-as-up"

.field public static final KEY_TREAT_HOME_AS_BACK:Ljava/lang/String; = "treat-home-as-back"

.field private static final LOADING_TIME_OUT:I = 0x66

.field private static final MSG_CHANGE_TO_PHOTOS:I = 0xb

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_LOCK_ORIENTATION:I = 0x2

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field public static final MSG_SAVE_DONE:I = 0x8

.field private static final MSG_SHOW_CTA_DIALOG:I = 0x9

.field private static final MSG_TOGGLE_BARS:I = 0xa

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UNLOCK_ORIENTATION:I = 0x3

.field private static final MSG_UPDATE_ACTION_BAR:I = 0x5

.field private static final MSG_WANT_BARS:I = 0x7

.field private static final REQUEST_ADD_LOCATION:I = 0x7

.field private static final REQUEST_CROP:I = 0x2

.field private static final REQUEST_CROP_PICASA:I = 0x3

.field public static final REQUEST_EDIT:I = 0x4

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final REQUEST_VIDEO_EDIT:I = 0x8

.field private static final REQUEST_WLAN_CAMERA:I = 0x65

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa

.field private static final WAKE_TO_CHANGE_PHOTOS_TIME:I = 0x96


# instance fields
.field private cameraPic:Z

.field cameraView:Z

.field click_path:Lcn/nubia/gallery3d/data/Path;

.field configuration:Landroid/content/res/Configuration;

.field currentPhotoFilePath:Ljava/lang/String;

.field private glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

.field isCameraToGallerySlow:Z

.field isHeic:Z

.field itemPath:Lcn/nubia/gallery3d/data/Path;

.field private layoutBottom:I

.field private layoutRight:I

.field private volatile mActionBarAllowed:Z

.field private mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

.field private mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mAudioBecomingNoisyReceiver:Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;

.field mBundleData:Landroid/os/Bundle;

.field private mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

.field private mCurrentAudioStream:I

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcn/nubia/gallery3d/data/Path;

.field private mDetailsHelper:Lcn/nubia/gallery3d/ui/DetailsHelper;

.field private mDownloadPage:Lcn/nubia/improve/xcloud/DownloadPage;

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsFromWlanCamera:Z

.field private mIsOpenedVPFile:Z

.field private mIsRecycledAlbum:Z

.field private mIsVisitorMode:Z

.field private mIsVisitorModeDuration:[J

.field private mMarkPathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaItemRename:Lcn/nubia/improve/rename/MediaItemRename;

.field private mMediaSet:Lcn/nubia/gallery3d/data/FilterDeleteSet;

.field private mMenu:Landroid/view/Menu;

.field private mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

.field private mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

.field private mMenuMoreView:Landroid/widget/ImageView;

.field private mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

.field private mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

.field mOldProgress:I

.field private mOnCloud:Z

.field private mOriItemPath:Lcn/nubia/gallery3d/data/Path;

.field private mOrientationManager:Lcn/nubia/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPhotoPageIsDestroy:Z

.field private mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

.field private mPhotoPageTopbarNavigation:Landroid/widget/ImageView;

.field private mPhotoPageTopbarTitle:Landroid/widget/TextView;

.field private mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

.field private mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

.field private mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mRenameListener:Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;

.field private final mRootPane:Lcn/nubia/gallery3d/ui/GLView;

.field private mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

.field private mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mSetVideoStart:Z

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

.field private mThumbnailFinish:Z

.field private mTreatBackAsUp:Z

.field private mTreatHomeAsBack:Z

.field private movieSnapshot:Lcn/nubia/video/player/MovieSnapshot;

.field pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

.field progressBar:Landroid/widget/ProgressBar;

.field rotation:I

.field time_out:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 180
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    const/4 v2, 0x0

    .line 186
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v3, -0x1

    .line 197
    iput v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->layoutBottom:I

    .line 198
    iput v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->layoutRight:I

    new-array v1, v1, [Landroid/net/Uri;

    .line 202
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 203
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->cameraPic:Z

    .line 208
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaItemRename:Lcn/nubia/improve/rename/MediaItemRename;

    .line 209
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRenameListener:Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;

    .line 211
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 212
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    .line 214
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDownloadPage:Lcn/nubia/improve/xcloud/DownloadPage;

    .line 215
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    .line 220
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    .line 221
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    .line 222
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mThumbnailFinish:Z

    .line 223
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageIsDestroy:Z

    .line 224
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsOpenedVPFile:Z

    .line 226
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    .line 231
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    .line 239
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mBundleData:Landroid/os/Bundle;

    .line 240
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->itemPath:Lcn/nubia/gallery3d/data/Path;

    .line 241
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->cameraView:Z

    .line 242
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isCameraToGallerySlow:Z

    .line 246
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isHeic:Z

    const-string v1, ""

    .line 248
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    .line 249
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->click_path:Lcn/nubia/gallery3d/data/Path;

    .line 250
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->rotation:I

    .line 263
    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$1;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    .line 468
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    .line 1322
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1360
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$19;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/PhotoPage$19;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    .line 2744
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    .line 2866
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$26;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/PhotoPage$26;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->time_out:Ljava/lang/Runnable;

    return-void
.end method

.method private DynaWallpaper4kEditable()Z
    .locals 3

    .line 2590
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->IsNeedCutVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2593
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    const v2, 0x7e9000

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/PhotoPage;)I
    .locals 0

    .line 117
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->layoutBottom:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/app/PhotoPage;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->layoutBottom:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/PhotoPage;)I
    .locals 0

    .line 117
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->layoutRight:I

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/app/PhotoPage;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->layoutRight:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->toggleBars()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->changeToShowMultPhoto()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/PhotoPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->swapHeic(I)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/PhotoPage;)[Landroid/net/Uri;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->onUpPressed()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->shareHoriCustom()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/StaticBackground;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->initMorePopWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->initMorePopWindowStatu()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/data/FilterDeleteSet;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaSet:Lcn/nubia/gallery3d/data/FilterDeleteSet;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/gallery3d/app/PhotoPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->setAsDetails(I)V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->startDolby()V

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/gallery3d/app/PhotoPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->showDetails(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->startWallpaperVideoEditor()V

    return-void
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->dismissDialog()V

    return-void
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/GLView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    return-object p0
.end method

.method static synthetic access$3500(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/video/player/MovieSnapshot;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->movieSnapshot:Lcn/nubia/video/player/MovieSnapshot;

    return-object p0
.end method

.method static synthetic access$3502(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/video/player/MovieSnapshot;)Lcn/nubia/video/player/MovieSnapshot;
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->movieSnapshot:Lcn/nubia/video/player/MovieSnapshot;

    return-object p1
.end method

.method static synthetic access$3600(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/PhotoPage;->startVideoEditor(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;)V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/app/PhotoPage;->startPhotoEditor(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;I)V

    return-void
.end method

.method static synthetic access$3800(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    return-object p0
.end method

.method static synthetic access$3900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/PhotoPage;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowDetails:Z

    return p0
.end method

.method static synthetic access$4000(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->deleteVideo()V

    return-void
.end method

.method static synthetic access$402(Lcn/nubia/gallery3d/app/PhotoPage;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowDetails:Z

    return p1
.end method

.method static synthetic access$4100(Lcn/nubia/gallery3d/app/PhotoPage;)Z
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isMarkAlbum()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->removeMarkId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    return-object p0
.end method

.method static synthetic access$4400(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->addMarkId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->share()V

    return-void
.end method

.method static synthetic access$4600(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->doDownloadImage()V

    return-void
.end method

.method static synthetic access$4800(Lcn/nubia/gallery3d/app/PhotoPage;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->cameraPic:Z

    return p0
.end method

.method static synthetic access$4900(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateTitle()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/DetailsHelper;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDetailsHelper:Lcn/nubia/gallery3d/ui/DetailsHelper;

    return-object p0
.end method

.method static synthetic access$5000(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$5102(Lcn/nubia/gallery3d/app/PhotoPage;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$5200(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcn/nubia/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$5300(Lcn/nubia/gallery3d/app/PhotoPage;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$5400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/GLFreezeHandler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    return-object p0
.end method

.method static synthetic access$5402(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/GLFreezeHandler;)Lcn/nubia/gallery3d/app/GLFreezeHandler;
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/OrientationManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOrientationManager:Lcn/nubia/gallery3d/app/OrientationManager;

    return-object p0
.end method

.method private addMarkId(Ljava/lang/String;)V
    .locals 1

    .line 2537
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2538
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    .line 2540
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private canShowBars()Z
    .locals 1

    .line 788
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private changeToShowMultPhoto()V
    .locals 2

    .line 2727
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->freeze()V

    .line 2728
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->itemPath:Lcn/nubia/gallery3d/data/Path;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->initShowMultPhoto(Lcn/nubia/gallery3d/data/Path;)V

    .line 2729
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_0

    .line 2730
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->resume()V

    .line 2732
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->resume()V

    .line 2733
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_2

    .line 2734
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getSurfaceTextureScreenNail()Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setSurfaceTextureScreenNail(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V

    .line 2735
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    .line 2736
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2737
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onResumePausePosition()V

    goto :goto_0

    .line 2739
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mThumbnailFinish:Z

    if-eqz v0, :cond_3

    .line 2740
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->openVideo(Landroid/net/Uri;)V

    const/4 v0, 0x0

    .line 2741
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mThumbnailFinish:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private checkPlayPosition(II)Z
    .locals 7

    .line 1748
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    .line 1749
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 1750
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    .line 1751
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result v3

    .line 1753
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_2

    if-le v0, v1, :cond_2

    .line 1756
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    if-gt p1, v1, :cond_1

    div-int/lit8 p1, v0, 0x2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    if-gt p1, v0, :cond_1

    move v5, v6

    :cond_1
    return v5

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 1759
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    if-gt p1, v0, :cond_3

    div-int/lit8 p1, v1, 0x2

    sub-int/2addr p2, p1

    .line 1760
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    if-gt p1, v1, :cond_3

    move v5, v6

    :cond_3
    return v5
.end method

.method private deleteVideo()V
    .locals 4

    .line 2508
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2510
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2511
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2514
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 2518
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v1, :cond_1

    .line 2519
    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2520
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onPause()V

    .line 2522
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsRecycledAlbum:Z

    if-eqz v1, :cond_2

    const v1, 0x7f090013

    goto :goto_0

    :cond_2
    const v1, 0x7f090025

    .line 2523
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-virtual {v2, v1, v0, v3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 1356
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private doDownloadImage()V
    .locals 3

    .line 2432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2433
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2434
    new-instance v1, Lcn/nubia/improve/xcloud/DownloadPage;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v2, v0}, Lcn/nubia/improve/xcloud/DownloadPage;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDownloadPage:Lcn/nubia/improve/xcloud/DownloadPage;

    .line 2435
    invoke-virtual {v1}, Lcn/nubia/improve/xcloud/DownloadPage;->downloadImage()V

    return-void
.end method

.method private doNavigationJob()V
    .locals 3

    .line 889
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBarHideNav()V

    .line 891
    new-instance v0, Lcn/nubia/commonui/app/AdjustNavUtils;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/app/AdjustNavUtils;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    .line 892
    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$9;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$9;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AdjustNavUtils;->setmListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0

    .line 900
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBar()V

    .line 901
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AdjustNavUtils;->removeGlobalLayoutListerner()V

    const/4 v0, 0x0

    .line 903
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    :cond_1
    :goto_0
    return-void
.end method

.method private gotoMultiShootAlbum(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 2

    .line 1764
    instance-of v0, p1, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v0, :cond_0

    .line 1765
    sget-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    check-cast p1, Lcn/nubia/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalImage;->getBucketId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    .line 1766
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1767
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "media-path"

    .line 1768
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "cluster-menu"

    .line 1769
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    const-string v1, "in-multishoot"

    .line 1770
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1771
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v1, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private hideBars()V
    .locals 2

    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 768
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setIsShowActionBar(Z)V

    .line 769
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mFlags:I

    .line 770
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isFringerFullBlackSet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideAppBarNotHideStatueBar()V

    goto :goto_0

    .line 773
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideAppBar()V

    .line 774
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 775
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setShowNewSeekBar(Z)V

    return-void
.end method

.method private hideDetails()V
    .locals 1

    .line 1634
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDetailsHelper:Lcn/nubia/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/DetailsHelper;->hide()V

    return-void
.end method

.method private initMorePopWindow()V
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 1211
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100214

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1212
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1213
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1214
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1215
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100085

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1216
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1217
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1218
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1219
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10022b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-array v0, v0, [I

    .line 1220
    fill-array-data v0, :array_0

    .line 1223
    new-instance v2, Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    .line 1224
    invoke-virtual {v2, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->addMenuID([I)V

    .line 1225
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$16;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/PhotoPage$16;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090120
        0x7f090122
        0x7f090121
        0x7f090153
        0x7f09011e
        0x7f090154
        0x7f09014d
        0x7f09007c
        0x7f090173
    .end array-data
.end method

.method private initMorePopWindowStatu()V
    .locals 16

    move-object/from16 v0, p0

    .line 1123
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-nez v1, :cond_0

    return-void

    .line 1132
    :cond_0
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriItemPath:Lcn/nubia/gallery3d/data/Path;

    if-eqz v2, :cond_1

    .line 1133
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriItemPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaItem;

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 1140
    :cond_2
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    .line 1142
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isFromMms"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-wide/16 v7, 0x20

    if-eqz v4, :cond_4

    .line 1144
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isReceiverMsgs"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x200000

    goto :goto_0

    :cond_3
    move-wide v2, v7

    :cond_4
    :goto_0
    and-long v4, v2, v7

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v6

    :goto_1
    const/4 v11, 0x4

    if-nez v4, :cond_6

    .line 1155
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v11, :cond_7

    :cond_6
    const-wide/32 v12, 0x400000

    or-long/2addr v2, v12

    .line 1158
    :cond_7
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const v12, 0x7f090120

    const v13, 0x7f100214

    if-eq v4, v11, :cond_9

    instance-of v4, v1, Lcn/nubia/gallery3d/data/UriImage;

    if-eqz v4, :cond_8

    goto :goto_2

    .line 1161
    :cond_8
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v14, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v14}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v5, v13, v12}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    goto :goto_3

    .line 1159
    :cond_9
    :goto_2
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v14, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v14}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v6, v13, v12}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1163
    :goto_3
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    and-long/2addr v7, v2

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a

    move v8, v5

    goto :goto_4

    :cond_a
    move v8, v6

    :goto_4
    iget-object v12, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1164
    invoke-interface {v12}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f1001f9

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f090122

    .line 1163
    invoke-virtual {v4, v8, v12, v13}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1165
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz v7, :cond_b

    move v7, v5

    goto :goto_5

    :cond_b
    move v7, v6

    :goto_5
    iget-object v8, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1166
    invoke-interface {v8}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v12, 0x7f1001f8

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v12, 0x7f090121

    .line 1165
    invoke-virtual {v4, v7, v8, v12}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1168
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const v7, 0x7f09007c

    const v8, 0x7f100076

    const v12, 0x7f09014d

    const v13, 0x7f1001e2

    const v14, 0x7f090173

    const v15, 0x7f10022b

    if-ne v4, v11, :cond_12

    .line 1169
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v4, :cond_c

    .line 1170
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v11, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v5, v11, v12}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1171
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v11, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8, v7}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    goto :goto_6

    .line 1173
    :cond_c
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v11, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6, v11, v12}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1174
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v11, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8, v7}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1176
    :goto_6
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/improve/ImproveConfig;->isSupportDolby(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1177
    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/improve/ImproveConfig;->isSupportDTS(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1178
    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/improve/ImproveConfig;->isSupportHPX(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_7

    .line 1190
    :cond_d
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v7, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v14}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    goto/16 :goto_a

    .line 1179
    :cond_e
    :goto_7
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v7, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v14}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1180
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 1181
    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    move v4, v6

    goto :goto_9

    :cond_10
    :goto_8
    move v4, v5

    :goto_9
    if-eqz v4, :cond_11

    .line 1183
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v7, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v14, v5}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setMenuDisable(Ljava/lang/CharSequence;IZ)V

    goto :goto_a

    .line 1186
    :cond_11
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v7, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v14}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    goto :goto_a

    .line 1193
    :cond_12
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v11, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6, v11, v12}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1194
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v11, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8, v7}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1195
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v7, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v14}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1197
    :goto_a
    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    const-wide/16 v7, 0x400

    and-long/2addr v2, v7

    cmp-long v2, v2, v9

    if-eqz v2, :cond_13

    move v2, v5

    goto :goto_b

    :cond_13
    move v2, v6

    :goto_b
    iget-object v3, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1198
    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f100085

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f09011e

    .line 1197
    invoke-virtual {v4, v2, v3, v7}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1199
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v3, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1200
    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSupportPrivacySpace(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f1001f0

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f090153

    .line 1199
    invoke-virtual {v2, v3, v4, v7}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    .line 1201
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const v3, 0x7f090154

    const v4, 0x7f1001f1

    const/4 v7, 0x4

    if-ne v2, v7, :cond_14

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->SupportDynamicWallPaper()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/app/PhotoPage;->DynaWallpaper4kEditable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1202
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    goto :goto_c

    .line 1204
    :cond_14
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V

    :goto_c
    return-void
.end method

.method private initShowMultPhoto(Lcn/nubia/gallery3d/data/Path;)V
    .locals 11

    .line 2746
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    .line 2747
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/filter/delete/{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 2749
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/FilterDeleteSet;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaSet:Lcn/nubia/gallery3d/data/FilterDeleteSet;

    if-nez v0, :cond_0

    .line 2751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to restore "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoPage"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2754
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorModeDuration:[J

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->setDuration([J)V

    .line 2755
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mBundleData:Landroid/os/Bundle;

    const-string v1, "index-hint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 2757
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    if-nez v0, :cond_1

    .line 2758
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    iget-object v6, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaSet:Lcn/nubia/gallery3d/data/FilterDeleteSet;

    iget v8, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const/4 v9, -0x1

    .line 2759
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->getBucketId()I

    move-result v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPanoBucket(I)Z

    move-result v10

    move-object v3, v0

    move-object v7, p1

    invoke-direct/range {v3 .. v10}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/Path;IIZ)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    .line 2760
    new-instance p1, Lcn/nubia/gallery3d/app/PhotoPage$25;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$25;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 2859
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setmItemNotFindListener(Lcn/nubia/gallery3d/app/ItemNotFindListener;)V

    .line 2860
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    .line 2861
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {p1, v2}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->setOrientation(Z)V

    .line 2862
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setModel(Lcn/nubia/gallery3d/ui/PhotoView$Model;)V

    return-void
.end method

.method private initShowSinglePhoto(Lcn/nubia/gallery3d/data/Path;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2716
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez p1, :cond_1

    return-void

    .line 2720
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {v0, v1, v2, p1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    .line 2722
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setModel(Lcn/nubia/gallery3d/ui/PhotoView$Model;)V

    .line 2723
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcn/nubia/gallery3d/data/MediaItem;)V

    return-void
.end method

.method private isAperAvailable()Z
    .locals 2

    .line 2600
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalImage;

    .line 2602
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalImage;->getSourceType()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isItemEditable()Z
    .locals 3

    .line 2574
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2576
    :cond_0
    instance-of v0, v0, Lcn/nubia/gallery3d/data/LocalImage;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2578
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isVideoEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private isLivephoto()Z
    .locals 2

    .line 1785
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalImage;

    .line 1787
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalImage;->getSourceType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMarkAlbum()Z
    .locals 2

    .line 2532
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    .line 2533
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVideoEditable()Z
    .locals 4

    .line 2584
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    .line 2585
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    const v3, 0x7e9000

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 2586
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoUtils;->IsNubiaVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private onUpPressed()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsFromWlanCamera:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mTreatHomeAsBack:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 942
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    .line 943
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    return-void

    .line 947
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "cameraview"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    return-void

    .line 956
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 957
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v2, 0x3

    .line 959
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent-media-path"

    .line 958
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->switchState(Lcn/nubia/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    .line 936
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->setResult()V

    const-string v0, "PhotoPage"

    const-string v1, "onUpPressed finishState"

    .line 937
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    return-void
.end method

.method private declared-synchronized openVideo(Landroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    .line 2440
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageIsDestroy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsOpenedVPFile:Z

    if-eqz v0, :cond_3

    .line 2442
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-nez v0, :cond_2

    .line 2443
    new-instance v0, Lcn/nubia/gallery3d/video/ui/PlayerController;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {v0, v1, v2, p0}, Lcn/nubia/gallery3d/video/ui/PlayerController;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    :cond_2
    if-eqz p1, :cond_3

    .line 2445
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_3

    .line 2446
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getSurfaceTextureScreenNail()Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->openVideoPlayer(Landroid/net/Uri;Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2449
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static playGif(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    .line 1941
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/gallery3d/app/GifView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1942
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1943
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private preparePhotoFallbackView()V
    .locals 3

    .line 2066
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 2067
    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V

    .line 2068
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2071
    :try_start_0
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 2072
    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->get()Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2076
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v2, "resume_animation"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 2074
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2075
    throw v1
.end method

.method private removeMarkFlags()V
    .locals 5

    .line 2550
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2552
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2553
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    .line 2554
    invoke-static {v2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    .line 2556
    iget v3, v2, Lcn/nubia/gallery3d/data/LocalMediaItem;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/LocalMediaItem;->resetFakeUnMark()V

    goto :goto_0

    .line 2560
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2561
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$24;

    invoke-direct {v2, p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage$24;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    .line 2568
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 2569
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method private removeMarkId(Ljava/lang/String;)V
    .locals 1

    .line 2544
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMarkPathSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 2545
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setAsDetails(I)V
    .locals 3

    .line 318
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 327
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 328
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1981
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    .line 1982
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1984
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v0, p1, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcn/nubia/gallery3d/data/Path;I)V

    :cond_1
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeicSeekBarView()Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$3;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$3;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->setListener(Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;)V

    return-void
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method private setResult()V
    .locals 3

    .line 965
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsFromWlanCamera:Z

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 969
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 970
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 971
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const-string v2, "return-index-hint"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/4 v1, -0x1

    .line 973
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3

    .line 567
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 572
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 573
    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$4;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$4;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private share()V
    .locals 5

    .line 1509
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1512
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1513
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 1515
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    const-string v4, "android.intent.action.SEND"

    .line 1516
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1517
    invoke-virtual {v3, v0}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1518
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1001fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1520
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1522
    :catch_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f10027e

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1523
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private shareCustom()V
    .locals 17

    move-object/from16 v0, p0

    .line 1531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelected(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_2

    .line 1534
    iget-object v8, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v8

    .line 1535
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v9, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/gallery3d/data/Path;

    .line 1536
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v11

    or-int/2addr v9, v11

    .line 1537
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v11

    instance-of v11, v11, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v11, :cond_0

    .line 1539
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v10}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v10

    add-long/2addr v6, v10

    goto :goto_0

    :cond_1
    move-object v11, v1

    goto :goto_1

    :cond_2
    move-object v11, v4

    move v9, v5

    :goto_1
    move-wide v14, v6

    if-nez v9, :cond_3

    goto :goto_2

    .line 1545
    :cond_3
    invoke-static {v9}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v12, v4

    .line 1546
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelectedCount()I

    move-result v1

    if-le v1, v3, :cond_4

    const/4 v5, 0x1

    :cond_4
    move v13, v5

    .line 1549
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-nez v2, :cond_5

    .line 1550
    new-instance v2, Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v3, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v3}, Lcn/nubia/improve/share/PhotoPageShareManager;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    .line 1551
    invoke-virtual {v2, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setCustomShareViewListener(Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;)V

    .line 1553
    :cond_5
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {v2, v9, v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->setSelectedMediaTypeAndCount(II)V

    .line 1554
    iget-object v10, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcn/nubia/improve/share/PhotoPageShareManager;->show(Ljava/util/ArrayList;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method private shareHoriCustom()V
    .locals 17

    move-object/from16 v0, p0

    .line 1560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelected(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_2

    .line 1563
    iget-object v8, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v8

    .line 1564
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v9, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/gallery3d/data/Path;

    .line 1565
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v11

    or-int/2addr v9, v11

    .line 1566
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v11

    instance-of v11, v11, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v11, :cond_0

    .line 1568
    invoke-virtual {v8, v10}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v10}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v10

    add-long/2addr v6, v10

    goto :goto_0

    :cond_1
    move-object v11, v1

    goto :goto_1

    :cond_2
    move-object v11, v4

    move v9, v5

    :goto_1
    move-wide v14, v6

    if-nez v9, :cond_3

    goto :goto_2

    .line 1574
    :cond_3
    invoke-static {v9}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v12, v4

    .line 1575
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelectedCount()I

    move-result v1

    if-le v1, v3, :cond_4

    const/4 v5, 0x1

    :cond_4
    move v13, v5

    .line 1578
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-nez v2, :cond_5

    .line 1579
    new-instance v2, Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v3, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v3}, Lcn/nubia/improve/share/PhotoPageShareManager;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    .line 1580
    invoke-virtual {v2, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setCustomShareViewListener(Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;)V

    .line 1582
    :cond_5
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {v2, v9, v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->setSelectedMediaTypeAndCount(II)V

    .line 1583
    iget-object v10, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcn/nubia/improve/share/PhotoPageShareManager;->showLand(Ljava/util/ArrayList;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method private showBars()V
    .locals 2

    const/4 v0, 0x1

    .line 748
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 749
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setIsShowActionBar(Z)V

    .line 750
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mFlags:I

    xor-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mFlags:I

    .line 751
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBar()V

    goto :goto_0

    .line 755
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBarHideNav()V

    .line 757
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    .line 760
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_2

    .line 761
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    .line 763
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setShowNewSeekBar(Z)V

    return-void
.end method

.method private showDetails(I)V
    .locals 4

    const/4 p1, 0x1

    .line 1638
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1639
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDetailsHelper:Lcn/nubia/gallery3d/ui/DetailsHelper;

    if-nez p1, :cond_0

    .line 1640
    new-instance p1, Lcn/nubia/gallery3d/ui/DetailsHelper;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/gallery3d/ui/DetailsHelper;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDetailsHelper:Lcn/nubia/gallery3d/ui/DetailsHelper;

    .line 1641
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$20;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/PhotoPage$20;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/DetailsHelper;->setCloseListener(Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1648
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDetailsHelper:Lcn/nubia/gallery3d/ui/DetailsHelper;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/DetailsHelper;->show()V

    return-void
.end method

.method private startDolby()V
    .locals 4

    .line 1613
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "audio"

    .line 1614
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1615
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 1618
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.CONTENT_TYPE"

    .line 1619
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.nubia.dolbypanel.extra.CONTENT_TYPE"

    const-string v2, "com.nubia.dolbypanel.moviesetting"

    .line 1620
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1623
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1625
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1628
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f10022c

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    :goto_2
    return-void
.end method

.method private startPhotoEditor(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;I)V
    .locals 6

    .line 2667
    invoke-static {p3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object p3

    .line 2668
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPhotoEditorSupport(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "heic_index"

    const/4 v2, 0x4

    const-string v3, "is_heic"

    const/4 v4, 0x1

    const-string v5, "android.intent.action.EDIT"

    if-eqz v0, :cond_1

    .line 2669
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "cn.nubia.photoeditor"

    .line 2671
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2672
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 2673
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isHeic:Z

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2674
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isHeic:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    if-eqz p2, :cond_0

    .line 2675
    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2677
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 2678
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2680
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2681
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    .line 2680
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2681
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 2683
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isHeic:Z

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2684
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isHeic:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    if-eqz p2, :cond_2

    .line 2685
    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2687
    :cond_2
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private startPlayerActivity(Z)V
    .locals 3

    .line 2620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2621
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playertype"

    const/4 v2, 0x1

    .line 2622
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "isWallPaper"

    if-eqz p1, :cond_0

    .line 2624
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2626
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2628
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2629
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 2630
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startVideoEditor(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;)V
    .locals 2

    .line 2642
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-nez v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->openVideo(Landroid/net/Uri;)V

    .line 2645
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2646
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getVideoInfo()Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    if-eqz v0, :cond_1

    .line 2647
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoPage;->startPlayerActivity(Z)V

    goto :goto_0

    .line 2650
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/PhotoPage;->startVideoEditorActivity(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2652
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 2653
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoPage;->startPlayerActivity(Z)V

    .line 2656
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz p1, :cond_2

    .line 2657
    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onRelease()V

    const/4 p1, 0x0

    .line 2658
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    :cond_2
    return-void
.end method

.method private startVideoEditorActivity(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;)V
    .locals 2

    .line 2634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.intent.videoeditor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "video/*"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 2636
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2637
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 2638
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startWallpaperVideoEditor()V
    .locals 1

    const/4 v0, 0x1

    .line 2663
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->startPlayerActivity(Z)V

    return-void
.end method

.method private swapHeic(I)V
    .locals 4

    const-string v0, "PhotoPage"

    .line 2370
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setHeic_index(I)V

    .line 2371
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setIs_heic_check(Z)V

    .line 2372
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-eqz p1, :cond_1

    .line 2373
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->click_path:Lcn/nubia/gallery3d/data/Path;

    if-eqz p1, :cond_0

    .line 2374
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->rotation:I

    invoke-virtual {v1, p1, v2, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->HeicScreenNailUpdate(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "click_path error!!!"

    .line 2376
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener error!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->click_path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private toggleBars()V
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 800
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->hideBars()V

    goto :goto_0

    .line 802
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->showBars()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBars()V
    .locals 1

    .line 808
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->hideBars()V

    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 4

    .line 598
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-ne v0, p1, :cond_1

    .line 599
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 600
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    :cond_0
    return-void

    .line 605
    :cond_1
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez p1, :cond_2

    return-void

    .line 608
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 609
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    .line 612
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_4

    .line 613
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDetailsHelper:Lcn/nubia/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/DetailsHelper;->reloadDetails(I)V

    .line 615
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 616
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V

    .line 617
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->updateShareURI(Lcn/nubia/gallery3d/data/Path;)V

    .line 619
    :cond_5
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateCurrentVideo()V

    return-void
.end method

.method private updateCurrentVideo()V
    .locals 4

    .line 2475
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2477
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2479
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2480
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_2

    .line 2481
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2483
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onRelease()V

    .line 2484
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    :cond_2
    return-void

    .line 2488
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 2489
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2490
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_5

    .line 2491
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    .line 2493
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onRelease()V

    .line 2494
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    goto :goto_0

    .line 2498
    :cond_4
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    .line 2499
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_5

    .line 2501
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onRelease()V

    .line 2502
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    :cond_5
    :goto_0
    return-void
.end method

.method private updateMenuOperations()V
    .locals 9

    .line 662
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v4, "/storage/emulated/"

    const v5, 0x7f080129

    const v6, 0x7f080143

    const v7, 0x7f09002b

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 671
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    goto :goto_1

    .line 673
    :cond_2
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 674
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    goto :goto_1

    .line 678
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    goto :goto_1

    .line 683
    :cond_4
    iget-object v8, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    if-eqz v8, :cond_7

    .line 684
    invoke-interface {v8, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_7

    if-eqz v0, :cond_5

    .line 686
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 687
    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 689
    :cond_5
    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 690
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 691
    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 693
    :cond_6
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_7
    :goto_1
    const v0, 0x7f090017

    if-eqz v1, :cond_9

    .line 702
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isItemEditable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 703
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    goto :goto_2

    .line 705
    :cond_8
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    goto :goto_2

    .line 708
    :cond_9
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    if-eqz v4, :cond_b

    .line 709
    invoke-interface {v4, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    const v4, 0x7f080114

    .line 711
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 712
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isItemEditable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 713
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 715
    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_b
    :goto_2
    if-eqz v1, :cond_d

    .line 723
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isAperAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    if-nez v0, :cond_c

    .line 724
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    const v1, 0x7f08008c

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$8;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/PhotoPage$8;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setFeatureIcon(ILandroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 732
    :cond_c
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setFeatureIcon(ILandroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 735
    :cond_d
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_e

    const v1, 0x7f090006

    .line 736
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 738
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isAperAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e
    :goto_3
    return-void
.end method

.method private updateShareCustomView()V
    .locals 15

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelected(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_2

    .line 1592
    iget-object v7, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v7

    .line 1593
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/gallery3d/data/Path;

    .line 1594
    invoke-virtual {v7, v9}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v9, :cond_0

    goto :goto_0

    .line 1596
    :cond_0
    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v10

    or-int/2addr v8, v10

    .line 1597
    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    check-cast v9, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v9

    add-long/2addr v5, v9

    goto :goto_0

    :cond_1
    move-object v10, v0

    goto :goto_1

    :cond_2
    move-object v10, v3

    move v8, v4

    :goto_1
    move-wide v13, v5

    if-nez v8, :cond_3

    goto :goto_2

    .line 1603
    :cond_3
    invoke-static {v8}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v11, v3

    .line 1604
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelectedCount()I

    move-result v0

    if-le v0, v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    move v12, v4

    .line 1606
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-eqz v1, :cond_5

    .line 1607
    invoke-virtual {v1, v8, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setSelectedMediaTypeAndCount(II)V

    .line 1608
    iget-object v9, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/improve/share/PhotoPageShareManager;->update(Ljava/util/ArrayList;Ljava/lang/String;ZJ)V

    :cond_5
    return-void
.end method

.method private updateShareURI(Lcn/nubia/gallery3d/data/Path;)V
    .locals 4

    .line 587
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v1

    .line 590
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 593
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {p1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private updateTitle()V
    .locals 4

    .line 628
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    if-eqz v1, :cond_1

    .line 631
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$5;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/PhotoPage$5;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    .line 639
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    .line 641
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v1

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getTitleTimeFormat(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$6;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/PhotoPage$6;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    .line 640
    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 649
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$7;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/PhotoPage$7;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 656
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageTopbarTitle:Landroid/widget/TextView;

    .line 657
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageTopbarTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageTopbarNavigation:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private updateUIForCurrentPhoto()V
    .locals 0

    .line 623
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 624
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateTitle()V

    return-void
.end method

.method private wantBars()V
    .locals 1

    .line 794
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->showBars()V

    :cond_0
    return-void
.end method


# virtual methods
.method public HideProgressBar()V
    .locals 2

    .line 2880
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public SetAsPrivate(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1326
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1327
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v1, 0x7f1100a5

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100060

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoPage$18;

    invoke-direct {v2, p0, p2, p1}, Lcn/nubia/gallery3d/app/PhotoPage$18;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1328
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10004e

    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$17;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/PhotoPage$17;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    .line 1342
    invoke-virtual {p1, p2, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    .line 1348
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const p2, 0x7f1001be

    .line 1349
    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(I)V

    .line 1350
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 p2, -0x1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 1351
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPrivateAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public ShowProgressBar()V
    .locals 2

    .line 2874
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2875
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public VideoStatusChanged(I)V
    .locals 2

    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPage"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2464
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2465
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    .line 2466
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onStart()V

    .line 2468
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2469
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setShowNewSeekBar(Z)V

    :cond_1
    return-void
.end method

.method public clearSelected()V
    .locals 1

    .line 1840
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->clear()V

    return-void
.end method

.method public editAperture()V
    .locals 3

    .line 1875
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1878
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.aperture"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1880
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 1879
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1881
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 1883
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "PhotoPage"

    const-string v1, "Editor not found"

    .line 1885
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public filmModeChanged()V
    .locals 0

    .line 2528
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateCurrentVideo()V

    return-void
.end method

.method public getSelectedCount()I
    .locals 1

    .line 1835
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelectedCount()I

    move-result v0

    return v0
.end method

.method public image3dPlay()V
    .locals 3

    .line 2607
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2608
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2609
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2610
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 2611
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initProgressbar()V
    .locals 3

    .line 554
    :try_start_0
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    .line 555
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getScreenPixels(Landroid/app/Activity;)[I

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    aget v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x28

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setY(F)V

    .line 557
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    aget v0, v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x28

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setX(F)V

    .line 558
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f06003d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 559
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 560
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "PhotoPage"

    const-string v1, "init progressbar error!!!"

    .line 563
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z
    .locals 1

    .line 1830
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p1

    return p1
.end method

.method public lockOrientation()V
    .locals 2

    .line 1891
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 1

    .line 1901
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 1908
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-nez p1, :cond_0

    .line 1909
    iget p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mFlags:I

    .line 1911
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .line 1916
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBack()V
    .locals 2

    .line 1863
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->setResult()V

    const-string v0, "PhotoPage"

    const-string v1, "onBack finishState!!!"

    .line 1864
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .line 910
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->leaveShareMode(I)V

    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 915
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 916
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    .line 918
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 919
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->hideDetails()V

    goto :goto_0

    .line 922
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->setResult()V

    .line 923
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_3

    .line 924
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    :cond_3
    const-string v0, "PhotoPage"

    const-string v1, "onBackPressed finishState"

    .line 926
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCommitDeleteImage()V
    .locals 7

    .line 1962
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeletePath:Lcn/nubia/gallery3d/data/Path;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090025

    .line 1965
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    if-eqz v1, :cond_2

    const v0, 0x7f09000e

    :cond_1
    :goto_0
    move v2, v0

    goto :goto_1

    .line 1967
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsRecycledAlbum:Z

    if-eqz v1, :cond_3

    const v0, 0x7f090013

    goto :goto_0

    .line 1969
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "in-multishoot"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f090023

    goto :goto_0

    .line 1972
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1973
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeletePath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 1974
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/MenuExecutor;->startAction(IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V

    const/4 v0, 0x0

    .line 1975
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeletePath:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string p1, "PhotoPage"

    const-string v0, "in onConfigurationChanged"

    .line 858
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->doNavigationJob()V

    .line 860
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 863
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 865
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 866
    iput v0, p1, Landroid/os/Message;->what:I

    .line 867
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 870
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-eqz p1, :cond_3

    .line 871
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->setOrientation(Z)V

    .line 873
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-eqz p1, :cond_5

    .line 874
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-eqz p1, :cond_4

    .line 875
    check-cast p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->forceReload()V

    .line 877
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    .line 878
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->shareCustom()V

    .line 880
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz p1, :cond_6

    .line 881
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->hideDetails()V

    .line 882
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-eqz p1, :cond_7

    .line 883
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->dismiss()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "PhotoPage"

    const-string v1, "in oncreate"

    .line 333
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageIsDestroy:Z

    .line 335
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v2, 0x2

    .line 336
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 337
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->doNavigationJob()V

    .line 338
    new-instance v1, Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 339
    new-instance v1, Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/ui/MenuExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    .line 340
    new-instance v1, Lcn/nubia/gallery3d/ui/MenuActionHandler;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    .line 341
    new-instance v1, Lcn/nubia/gallery3d/app/GLFreezeHandler;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/app/GLFreezeHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    .line 343
    new-instance v1, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-direct {v1}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    .line 344
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryApp;

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const-string v1, "visitor-mode"

    .line 346
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    const-string v1, "visitor-mode-time"

    .line 347
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorModeDuration:[J

    .line 349
    new-instance v1, Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    const/high16 v2, -0x1000000

    .line 350
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/StaticBackground;->setColor(I)V

    .line 351
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 353
    new-instance v1, Lcn/nubia/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/ui/PhotoView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Z)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    const-string v1, "media-set-path"

    .line 354
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 355
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v1, "nubia_cloud"

    .line 356
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    .line 357
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInRecycledAlbum(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsRecycledAlbum:Z

    .line 358
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsFromWlanCamera:Z

    .line 360
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcn/nubia/gallery3d/ui/PhotoView;->setListener(Lcn/nubia/gallery3d/ui/PhotoView$Listener;)V

    .line 361
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->setSwipingDelete(Z)V

    .line 362
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 363
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getOrientationManager()Lcn/nubia/gallery3d/app/OrientationManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOrientationManager:Lcn/nubia/gallery3d/app/OrientationManager;

    .line 364
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOrientationManager:Lcn/nubia/gallery3d/app/OrientationManager;

    invoke-interface {v1, v2}, Lcn/nubia/gallery3d/ui/GLRoot;->setOrientationSource(Lcn/nubia/gallery3d/ui/OrientationSource;)V

    .line 366
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->setupNfcBeamPush()V

    const-string v1, "media-item-path"

    .line 367
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->itemPath:Lcn/nubia/gallery3d/data/Path;

    .line 368
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->initProgressbar()V

    .line 370
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOriItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 371
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    const-string v2, "share-from-albumpage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->setFromAlbumPage(Z)V

    .line 372
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    const-string v2, "share-clicked-path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->setClickedSet(Ljava/util/ArrayList;)V

    const-string v1, "treat-back-as-up"

    .line 374
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    const-string v1, "treat-home-as-back"

    .line 375
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mTreatHomeAsBack:Z

    .line 381
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mBundleData:Landroid/os/Bundle;

    .line 382
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cameraview"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->cameraView:Z

    .line 383
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isCameraToGallerySlow:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->itemPath:Lcn/nubia/gallery3d/data/Path;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->initShowSinglePhoto(Lcn/nubia/gallery3d/data/Path;)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    .line 387
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->itemPath:Lcn/nubia/gallery3d/data/Path;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->initShowMultPhoto(Lcn/nubia/gallery3d/data/Path;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->itemPath:Lcn/nubia/gallery3d/data/Path;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->initShowSinglePhoto(Lcn/nubia/gallery3d/data/Path;)V

    .line 393
    :goto_0
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$2;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$2;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_2

    .line 457
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    const-string v0, "open-animation-rect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 460
    :cond_2
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportRename()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 461
    new-instance p1, Lcn/nubia/improve/rename/MediaItemRename;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/nubia/improve/rename/MediaItemRename;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaItemRename:Lcn/nubia/improve/rename/MediaItemRename;

    .line 462
    new-instance p1, Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRenameListener:Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;

    .line 463
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaItemRename:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-virtual {p2, p1}, Lcn/nubia/improve/rename/MediaItemRename;->setListener(Lcn/nubia/improve/rename/MediaItemRename$Listener;)V

    .line 465
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->setListener()V

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 12

    .line 979
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 980
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setBackgroundColor(Z)V

    .line 981
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result v1

    const v2, 0x7f1001fc

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_4

    .line 982
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 983
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 984
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v5, :cond_0

    .line 985
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    const v1, 0x7f10004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcn/nubia/gallery3d/app/PhotoPage$10;

    invoke-direct {v6, p0}, Lcn/nubia/gallery3d/app/PhotoPage$10;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {p1, v1, v6}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 994
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelectedCount()I

    move-result p1

    .line 995
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 996
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v5, :cond_2

    .line 998
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    const v1, 0x7f10016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$11;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$11;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setConfirmText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1007
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isEnablePrivacyStatus(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1008
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1013
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$12;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/PhotoPage$12;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidSubTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1020
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    goto/16 :goto_6

    .line 1022
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 1023
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1024
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    const v1, 0x7f080055

    new-instance v6, Lcn/nubia/gallery3d/app/PhotoPage$13;

    invoke-direct {v6, p0}, Lcn/nubia/gallery3d/app/PhotoPage$13;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1, v6}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNavigationIcon(ILandroid/view/View$OnClickListener;)V

    .line 1030
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageTopbarNavigation:Landroid/widget/ImageView;

    .line 1031
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-nez v0, :cond_5

    return v4

    .line 1035
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    const/4 v1, 0x3

    const v6, 0x7f100078

    const v7, 0x7f080110

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 1036
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f090016

    const v9, 0x7f080107

    const v10, 0x7f10008f

    invoke-virtual {v0, v8, v2, v9, v10}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1038
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f09000e

    invoke-virtual {v0, v4, v2, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1040
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1041
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto/16 :goto_1

    .line 1042
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsRecycledAlbum:Z

    if-eqz v0, :cond_7

    .line 1043
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f090024

    const v9, 0x7f080133

    const v10, 0x7f10014f

    invoke-virtual {v0, v8, v2, v9, v10}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1045
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f090013

    invoke-virtual {v0, v4, v2, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1047
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1048
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto/16 :goto_1

    .line 1049
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsFromWlanCamera:Z

    if-eqz v0, :cond_8

    .line 1050
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f090026

    invoke-virtual {v0, v8, v2, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1052
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1053
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1054
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto :goto_1

    .line 1055
    :cond_8
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    const v9, 0x7f090025

    if-eqz v0, :cond_9

    .line 1056
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1058
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1059
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1060
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    goto :goto_1

    .line 1062
    :cond_9
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v10, 0x7f09002d

    const v11, 0x7f08013a

    invoke-virtual {v0, v8, v10, v11, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1064
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f09002b

    const v10, 0x7f080143

    const v11, 0x7f1001fa

    invoke-virtual {v0, v4, v2, v10, v11}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1066
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    const v2, 0x7f090017

    const v10, 0x7f080114

    const v11, 0x7f10011f

    invoke-virtual {v0, v5, v2, v10, v11}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1068
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v9, v7, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1072
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_a

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_a

    .line 1074
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    goto :goto_2

    .line 1076
    :cond_a
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 1079
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_f

    .line 1080
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    if-eqz v0, :cond_b

    .line 1081
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_4

    .line 1083
    :cond_b
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsRecycledAlbum:Z

    if-eqz v0, :cond_c

    .line 1084
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_4

    .line 1085
    :cond_c
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsFromWlanCamera:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    if-eqz v0, :cond_d

    goto :goto_3

    .line 1088
    :cond_d
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_4

    .line 1086
    :cond_e
    :goto_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1090
    :goto_4
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    .line 1091
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1, v8, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCustomImage(ILandroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1092
    :cond_f
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsRecycledAlbum:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsFromWlanCamera:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    if-nez p1, :cond_10

    .line 1093
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    const v0, 0x7f08012e

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$14;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$14;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCustomImage(ILandroid/view/View$OnClickListener;)V

    .line 1105
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->getCustomImageView()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuMoreView:Landroid/widget/ImageView;

    .line 1106
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuMoreView:Landroid/widget/ImageView;

    invoke-static {p1, v3, v3, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1108
    :cond_10
    :goto_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$15;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/PhotoPage$15;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {p1, v3, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidSubTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1114
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    :goto_6
    return v4
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .line 2113
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unfreeze()V

    return-void
.end method

.method public onDeleteImage(Lcn/nubia/gallery3d/data/Path;I)V
    .locals 2

    .line 1933
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1934
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeletePath:Lcn/nubia/gallery3d/data/Path;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1935
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 1936
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaSet:Lcn/nubia/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->addDeletion(Lcn/nubia/gallery3d/data/Path;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "PhotoPage"

    const-string v1, "in onDestroy"

    .line 2317
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    if-eqz v0, :cond_0

    .line 2320
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->ReleaseMediaMetadataRetriever()V

    .line 2322
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$23;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$23;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidSubTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 2327
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageIsDestroy:Z

    .line 2328
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2329
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    .line 2330
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setSurfaceTextureScreenNail(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V

    .line 2331
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onRelease()V

    .line 2332
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    .line 2334
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    if-eqz v0, :cond_2

    .line 2335
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AdjustNavUtils;->removeGlobalLayoutListerner()V

    .line 2336
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    .line 2337
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBar()V

    .line 2339
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 2340
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->removeMarkFlags()V

    .line 2342
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/nubia/gallery3d/ui/GLRoot;->setOrientationSource(Lcn/nubia/gallery3d/ui/OrientationSource;)V

    .line 2343
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-eqz v0, :cond_3

    .line 2344
    invoke-virtual {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    .line 2347
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 2348
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2351
    :cond_4
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    .line 2352
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaSet:Lcn/nubia/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_5

    .line 2353
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 2356
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    if-eqz v0, :cond_6

    .line 2357
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GLFreezeHandler;->quit()V

    .line 2358
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    .line 2360
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAudioBecomingNoisyReceiver:Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;

    if-eqz v0, :cond_7

    .line 2361
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->unregister()V

    .line 2362
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAudioBecomingNoisyReceiver:Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;

    .line 2364
    :cond_7
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    .line 2365
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->HideProgressBar()V

    return-void
.end method

.method public onDoubleTap(II)V
    .locals 0

    .line 1740
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 p2, 0xa

    .line 1741
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onFling(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFullScreenChanged(Z)V
    .locals 3

    .line 1921
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1922
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onItemNotFind(Lcn/nubia/gallery3d/data/Path;)V
    .locals 5

    .line 2037
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    .line 2038
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getAbslotePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getAbslotePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1382
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1383
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 1386
    invoke-interface {v0, v2}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1391
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    .line 1392
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v4

    .line 1393
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    .line 1394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const/4 v7, 0x4

    const/high16 v8, 0x7f0f0000

    sparse-switch v6, :sswitch_data_0

    return v2

    .line 1475
    :sswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1476
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->switchShareMode(Z)V

    goto :goto_0

    .line 1478
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->share()V

    :goto_0
    return v1

    .line 1459
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isMarkAlbum()Z

    move-result v2

    .line 1460
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isMarked()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    .line 1462
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/app/PhotoPage;->removeMarkId(Ljava/lang/String;)V

    .line 1464
    :cond_3
    check-cast v0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->setMarkFlag()V

    const v0, 0x7f080129

    .line 1465
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 1468
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/app/PhotoPage;->addMarkId(Ljava/lang/String;)V

    .line 1470
    :cond_5
    check-cast v0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/LocalMediaItem;->removeMarkFlag(Z)V

    const v0, 0x7f080143

    .line 1471
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    return v1

    :sswitch_2
    if-ne v5, v7, :cond_6

    .line 1425
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz p1, :cond_6

    .line 1426
    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1427
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onPause()V

    .line 1430
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "in-multishoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1431
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1432
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1433
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 1434
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const v2, 0x7f090023

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-virtual {v0, v2, p1, v3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    goto :goto_2

    .line 1437
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 1439
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1440
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 1441
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-virtual {v0, v6, p1, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    :goto_2
    return v1

    .line 1417
    :sswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f000a

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 1418
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1419
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 1420
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-virtual {v0, v6, p1, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    return v1

    .line 1485
    :sswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-nez p1, :cond_8

    .line 1486
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->initMorePopWindow()V

    .line 1488
    :cond_8
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->initMorePopWindowStatu()V

    .line 1489
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f09019b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setAnchorView(Landroid/view/View;)V

    .line 1490
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->show()V

    return v1

    .line 1406
    :sswitch_5
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_9

    return v1

    :cond_9
    if-ne v5, v7, :cond_a

    .line 1410
    invoke-direct {p0, v3, v4}, Lcn/nubia/gallery3d/app/PhotoPage;->startVideoEditor(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;)V

    goto :goto_3

    .line 1412
    :cond_a
    invoke-direct {p0, v3, v4, v5}, Lcn/nubia/gallery3d/app/PhotoPage;->startPhotoEditor(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;I)V

    :goto_3
    return v1

    .line 1482
    :sswitch_6
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->doDownloadImage()V

    return v1

    :sswitch_7
    if-ne v5, v7, :cond_b

    .line 1448
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->deleteVideo()V

    goto :goto_4

    .line 1450
    :cond_b
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 1452
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1453
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 1454
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-virtual {v0, v6, p1, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    :goto_4
    return v1

    .line 1493
    :sswitch_8
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 1495
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1496
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 1497
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, p1, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    return v1

    .line 1500
    :sswitch_9
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->editAperture()V

    return v1

    .line 1398
    :sswitch_a
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mTreatHomeAsBack:Z

    if-eqz p1, :cond_c

    .line 1399
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_5

    .line 1401
    :cond_c
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->onUpPressed()V

    :goto_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f090006 -> :sswitch_9
        0x7f09000e -> :sswitch_8
        0x7f090013 -> :sswitch_7
        0x7f090016 -> :sswitch_6
        0x7f090017 -> :sswitch_5
        0x7f090022 -> :sswitch_4
        0x7f090024 -> :sswitch_3
        0x7f090025 -> :sswitch_2
        0x7f090026 -> :sswitch_7
        0x7f09002b -> :sswitch_1
        0x7f09002d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 829
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 832
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v2, v0, :cond_1

    .line 833
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 834
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 835
    :cond_1
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p2

    if-ne v2, p2, :cond_4

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_2

    const/16 p2, 0x55

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7e

    if-ne p1, p2, :cond_4

    .line 840
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz p1, :cond_3

    .line 841
    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onPlayPause()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x52

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLeaveShareMode()V
    .locals 2

    .line 2427
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->switchShareMode(Z)V

    const/4 v0, 0x0

    .line 2428
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    return-void
.end method

.method public onLongPress(II)V
    .locals 0

    .line 1777
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->isLivephoto()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1778
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsOpenedVPFile:Z

    .line 1779
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/app/PhotoPage;->openVideo(Landroid/net/Uri;)V

    .line 1780
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    :cond_0
    return-void
.end method

.method protected onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 815
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsRecycledAlbum:Z

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 816
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mOnCloud:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    if-nez p1, :cond_1

    .line 820
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->initMorePopWindow()V

    .line 822
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->initMorePopWindowStatu()V

    .line 823
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setAnchorView(Landroid/view/View;)V

    .line 824
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->show()V

    :cond_2
    :goto_0
    return p2
.end method

.method public onPause()V
    .locals 3

    .line 2081
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    const-string v0, "PhotoPage"

    const-string v1, "in onPause"

    .line 2082
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2084
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    .line 2085
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->videoPause()V

    .line 2086
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setSurfaceTextureScreenNail(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V

    .line 2088
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2089
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2090
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/app/GLFreezeHandler;->removeMessages(I)V

    .line 2095
    invoke-static {}, Lcn/nubia/gallery3d/ui/DetailsHelper;->pause()V

    .line 2096
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->pause()V

    .line 2097
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_1

    .line 2098
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->pause()V

    .line 2100
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2101
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2103
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->pause()V

    .line 2104
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentAudioStream:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 2105
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->movieSnapshot:Lcn/nubia/video/player/MovieSnapshot;

    if-eqz v0, :cond_3

    .line 2106
    invoke-virtual {v0}, Lcn/nubia/video/player/MovieSnapshot;->onRelease()V

    .line 2107
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->movieSnapshot:Lcn/nubia/video/player/MovieSnapshot;

    :cond_3
    return-void
.end method

.method public onResetData()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 2126
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    .line 2127
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2128
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setIs_heic_check(Z)V

    .line 2129
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setHeic_index(I)V

    :cond_0
    const-string v0, "PhotoPage"

    const-string v2, "in onResume"

    .line 2131
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageIsDestroy:Z

    .line 2133
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mShowBars:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2134
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2136
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->freeze()V

    .line 2137
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2138
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 2139
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_2

    .line 2144
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->resume()V

    .line 2146
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->resume()V

    .line 2147
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_4

    .line 2148
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getSurfaceTextureScreenNail()Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setSurfaceTextureScreenNail(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V

    .line 2149
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    .line 2150
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 2151
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onResumePausePosition()V

    goto :goto_0

    .line 2153
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mThumbnailFinish:Z

    if-eqz v0, :cond_5

    .line 2154
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->openVideo(Landroid/net/Uri;)V

    .line 2155
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mThumbnailFinish:Z

    .line 2158
    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->glFreezeHandler:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/gallery3d/app/GLFreezeHandler;->sendEmptyMessageDelayed(IJ)V

    .line 2160
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->isCameraToGallerySlow:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->cameraView:Z

    if-eqz v0, :cond_6

    .line 2161
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2163
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentAudioStream:I

    .line 2164
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object v0

    const-string v1, "cn.nubia.gallery3d"

    const-string v2, "gallery_launch_photos"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getNewCutView()Lcn/nubia/gallery3d/video/ui/NewCutView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    if-eqz v0, :cond_7

    .line 2168
    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$21;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$21;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewCutView;->setListener(Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;)V

    .line 2194
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v0, :cond_8

    .line 2195
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoPage$22;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/PhotoPage$22;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setListener(Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;)V

    .line 2309
    :cond_8
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAudioBecomingNoisyReceiver:Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;

    if-nez v0, :cond_9

    .line 2310
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAudioBecomingNoisyReceiver:Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;

    .line 2311
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->register()V

    :cond_9
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowContent()V
    .locals 2

    .line 1870
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->gotoMultiShootAlbum(Lcn/nubia/gallery3d/data/MediaItem;)V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 6

    .line 1656
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1658
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1664
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1667
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1668
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 1672
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/PhotoPage;->checkPlayPosition(II)Z

    move-result v2

    :cond_4
    if-eqz v4, :cond_5

    .line 1675
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/PhotoPage;->checkPlayPosition(II)Z

    move-result v4

    :cond_5
    const/16 p1, 0xa

    if-eqz v2, :cond_a

    .line 1679
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-nez p2, :cond_8

    .line 1680
    new-instance p1, Lcn/nubia/video/editor/VideoItem;

    invoke-direct {p1}, Lcn/nubia/video/editor/VideoItem;-><init>()V

    .line 1681
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/video/editor/VideoItem;->setDataSource(Ljava/lang/String;)I

    .line 1682
    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoItem;->is10BitVideo()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1683
    instance-of p2, v0, Lcn/nubia/gallery3d/data/LocalVideo;

    if-eqz p2, :cond_7

    .line 1684
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1685
    check-cast v0, Lcn/nubia/gallery3d/data/LocalVideo;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "video/*"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1686
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsVisitorMode:Z

    if-eqz v0, :cond_6

    .line 1687
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "secure_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1689
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1691
    :cond_7
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/app/PhotoPage;->openVideo(Landroid/net/Uri;)V

    .line 1692
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1694
    :goto_2
    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoItem;->release()V

    .line 1695
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    goto/16 :goto_3

    .line 1697
    :cond_8
    invoke-virtual {p2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    .line 1711
    :pswitch_0
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->checkPlayIconIsShow()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1712
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onStart()V

    .line 1713
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1715
    :cond_9
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result p2

    if-nez p2, :cond_c

    .line 1716
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1717
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 1716
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 1722
    :pswitch_1
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    goto :goto_3

    .line 1699
    :pswitch_2
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->openVideo(Landroid/net/Uri;)V

    .line 1700
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSetVideoStart:Z

    .line 1701
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1704
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onRelease()V

    const/4 p1, 0x0

    .line 1705
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    .line 1729
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/app/PhotoPage;->playGif(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_3

    .line 1731
    :cond_b
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result p2

    if-nez p2, :cond_c

    .line 1732
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1733
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 1732
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1990
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "isWallPaper"

    .line 2024
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2025
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getAbslotePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setFilePath(Ljava/lang/String;)V

    .line 2026
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setLiveWallpaper(Landroid/content/Context;Landroid/app/Activity;I)V

    goto :goto_0

    .line 2028
    :cond_2
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-ne p2, v3, :cond_8

    .line 1996
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_8

    .line 2006
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f10006c

    new-array p3, v0, [Ljava/lang/Object;

    const v0, 0x7f1000ce

    .line 2008
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 2007
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2009
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    if-ne p2, v3, :cond_8

    .line 2001
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "media-item-path"

    .line 2016
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "photo-index"

    .line 2017
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_8

    .line 2019
    iget-object p3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    invoke-static {p1}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcn/nubia/gallery3d/data/Path;I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .line 1950
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeletePath:Lcn/nubia/gallery3d/data/Path;

    if-nez v0, :cond_0

    return-void

    .line 1954
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v1, :cond_1

    .line 1955
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcn/nubia/gallery3d/data/Path;)V

    .line 1956
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mMediaSet:Lcn/nubia/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeletePath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcn/nubia/gallery3d/data/Path;)V

    const/4 v0, 0x0

    .line 1957
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mDeletePath:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public onUp()V
    .locals 1

    .line 1793
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsOpenedVPFile:Z

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 1795
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onRelease()V

    const/4 v0, 0x0

    .line 1796
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    const/4 v0, 0x0

    .line 1798
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mIsOpenedVPFile:Z

    :cond_0
    return-void
.end method

.method public refreshHidingMessage()V
    .locals 0

    return-void
.end method

.method public selectItem(Lcn/nubia/gallery3d/data/MediaItem;)Z
    .locals 4

    .line 1819
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->toggle(Lcn/nubia/gallery3d/data/MediaItem;)Z

    move-result p1

    .line 1820
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mSMSelectionManager:Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelectedCount()I

    move-result v0

    .line 1821
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001fc

    .line 1822
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1823
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 1824
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateShareCustomView()V

    return p1
.end method

.method public setNatvigationBarDdjust(Z)V
    .locals 5

    .line 2117
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    check-cast p1, Lcn/nubia/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalImage;->getSourceType()I

    move-result p1

    const/16 v2, 0x1e

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 2118
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2119
    :goto_1
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez p1, :cond_3

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 2121
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->requestLayout()V

    :cond_4
    return-void
.end method

.method public setShareCustom(Z)V
    .locals 1

    .line 1845
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1846
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mModel:Lcn/nubia/gallery3d/app/PhotoPage$Model;

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->forceReload()V

    if-eqz p1, :cond_0

    .line 1849
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->shareCustom()V

    goto :goto_0

    .line 1851
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1852
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-eqz p1, :cond_1

    .line 1853
    invoke-virtual {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    const/4 p1, 0x0

    .line 1854
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    .line 1858
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoPage;->updateCurrentVideo()V

    return-void
.end method

.method public unlockOrientation()V
    .locals 2

    .line 1896
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public videoPause()V
    .locals 1

    .line 2454
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage;->mPlayerController:Lcn/nubia/gallery3d/video/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 2455
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onPause()V

    :cond_0
    return-void
.end method
