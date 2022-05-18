.class public Lcn/nubia/gallery3d/app/AlbumSetPage;
.super Lcn/nubia/gallery3d/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcn/nubia/improve/move/AddExecutor$AddProgressListener;
.implements Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/AlbumSetPage$MyTextWatcher;,
        Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x21

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_SELECTION_HINT_COUNT:Ljava/lang/String; = "hint-count"

.field public static final KEY_SELECTION_HINT_ITEM_PATH:Ljava/lang/String; = "item-path"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final MSG_SET_HINTIMAGE:I = 0x3

.field private static final MSG_SET_HINTVIEW:I = 0x2

.field private static final MSG_SHOW_CTA_DIALOG:I = 0x4

.field public static final MSG_SHOW_HIDE_FACEALBUM:I = 0x5

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final REQUEST_GET_ITEMS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlbumSetPage"


# instance fields
.field private mAddDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation
.end field

.field private mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

.field private mAddtoNewfolder:Z

.field private mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

.field private mAlbumSetMenu:Landroid/view/Menu;

.field private mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

.field private mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field private mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

.field private mContext:Landroid/content/Context;

.field private mDialogRename:Lcn/nubia/commonui/app/Dialog;

.field private mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetAlbums:Z

.field private mGetContent:Z

.field private mGetContentMaxNum:I

.field private mGetMultiContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasHideFaceAlbum:Z

.field private mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

.field private mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

.field private mIsActive:Z

.field private mIsFacesAlbumSet:Z

.field private mIsHideFacesAlbumSet:Z

.field private mIsLocationAlbumSet:Z

.field private mIsOtherAlbumSet:Z

.field private mIsThingsAlbumSet:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

.field private mMenuExecutor:Lcn/nubia/improve/category/FaceMenuExecutor;

.field private mNewFolderPath:Ljava/lang/String;

.field private mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

.field private mProgressListener:Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

.field private final mRootPane:Lcn/nubia/gallery3d/ui/GLView;

.field private mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

.field protected mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

.field private mSlotViewTop:I

.field private mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

.field private mTabAddView:Landroid/widget/ImageView;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 159
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    .line 168
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 171
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotViewTop:I

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetMenu:Landroid/view/Menu;

    .line 184
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$1;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    .line 1408
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$13;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$13;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mProgressListener:Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/EyePosition;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/StaticBackground;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SelectionHintView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SlotView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/AlbumSetPage;)F
    .locals 0

    .line 108
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mX:F

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/AlbumSetPage;)F
    .locals 0

    .line 108
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mY:F

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/AlbumSetPage;)F
    .locals 0

    .line 108
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mZ:F

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/commonui/app/Dialog;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/AlbumSetPage;Ljava/lang/String;IZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/app/AlbumSetPage;->doAddOperation(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/app/AlbumSetPage;II)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->setHintView(II)V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/GLView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->pickHideFaceAlbum()V

    return-void
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->share()V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->albumShiftIn()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->albumShiftOut()V

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mProgressListener:Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/improve/category/FaceMenuExecutor;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcn/nubia/improve/category/FaceMenuExecutor;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/gallery3d/app/AlbumSetPage;I)I
    .locals 0

    .line 108
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotViewTop:I

    return p1
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/app/AlbumSetPage;Z)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mNewFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3202(Lcn/nubia/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mNewFolderPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/app/AlbumSetPage;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->showFolderDialog(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$3500(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    return p0
.end method

.method static synthetic access$3800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    return p0
.end method

.method static synthetic access$3900(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->updateHideFaceHintView()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/HideFaceHintView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/content/Context;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private albumShiftIn()V
    .locals 2

    .line 1307
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 1308
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 1307
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/util/AlbumPreference;->remove(Ljava/util/List;)Z

    .line 1309
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    return-void
.end method

.method private albumShiftOut()V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 1314
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 1313
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/util/AlbumPreference;->put(Ljava/util/List;)Z

    .line 1315
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 1

    .line 529
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    if-nez p1, :cond_4

    .line 530
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz p1, :cond_4

    .line 531
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 532
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsTab:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    goto :goto_1

    .line 533
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->showHintView()V

    goto :goto_1

    .line 538
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsTab:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    if-nez p1, :cond_4

    .line 539
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->hideHintView()V

    :cond_4
    :goto_1
    return-void
.end method

.method private createDefaultFolderName()Ljava/lang/String;
    .locals 7

    .line 1044
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->getPicturesDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1048
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object v5, v0

    .line 1051
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDefaultFolderName e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetPage"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v5
.end method

.method private doAddOperation(Ljava/lang/String;IZ)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 412
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "addto_iscopy"

    .line 413
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "album-path"

    .line 414
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mediaitem-count"

    .line 415
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 416
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 417
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 418
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->activityCloseAnim(Landroid/content/Context;)V

    return-void
.end method

.method private getAddDatas(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    const-string v0, "AlbumSetPage"

    .line 948
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "external"

    .line 949
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 950
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 951
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSelectedDataProjection()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 954
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 955
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 956
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "FilePath is null"

    .line 957
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    :cond_0
    new-instance v3, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v3}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 961
    iput-object v2, v3, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 962
    invoke-static {p1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getImageRotation(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    const/4 v2, 0x1

    .line 963
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->fileSize:J

    const/4 v2, 0x5

    .line 964
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    const/4 v2, 0x6

    .line 965
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcn/nubia/gallery3d/data/RecycledData;->duration:I

    .line 966
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 971
    :cond_1
    :goto_1
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 969
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 971
    :goto_2
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 972
    throw v0

    :cond_2
    :goto_3
    return-object v1
.end method

.method private getPicturesDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1063
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 1064
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1065
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1068
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1069
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSdcardStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1073
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1074
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1076
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object p1

    .line 1080
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSlotCenter(I[I)V
    .locals 6

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 284
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/ui/GLView;->getBoundsOf(Lcn/nubia/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 285
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 286
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollX()I

    move-result v1

    .line 287
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollY()I

    move-result v2

    .line 288
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v3, p2, v1

    .line 289
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

.method private hideHintView()V
    .locals 1

    .line 1251
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/HintViewLayout;->hide()V

    const/4 v0, 0x0

    .line 1253
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 488
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage$3;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initHideFaceHintView()V
    .locals 3

    .line 1366
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    if-nez v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v1, v0, Lcn/nubia/gallery3d/data/FacesAlbumSet;

    if-eqz v1, :cond_0

    .line 1368
    check-cast v0, Lcn/nubia/gallery3d/data/FacesAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->hasHideAlbum()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    .line 1370
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

    if-nez v0, :cond_1

    .line 1372
    new-instance v0, Lcn/nubia/gallery3d/ui/HideFaceHintView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/HideFaceHintView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

    .line 1373
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    :cond_1
    return-void
.end method

.method private initializeData()V
    .locals 4

    .line 696
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    .line 697
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    .line 698
    new-instance v1, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;Lcn/nubia/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V

    .line 699
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)V

    .line 702
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    :cond_1
    return-void
.end method

.method private initializeViews()V
    .locals 5

    .line 708
    new-instance v0, Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    .line 709
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 710
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e3

    .line 711
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 710
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;->setColor(I)V

    .line 712
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getSelectionManager()Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 714
    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContentMaxNum:I

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setMaxSelectionCount(I)V

    goto :goto_0

    .line 716
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 718
    :goto_0
    new-instance v0, Lcn/nubia/improve/category/FaceMenuExecutor;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/improve/category/FaceMenuExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcn/nubia/improve/category/FaceMenuExecutor;

    .line 719
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    .line 720
    new-instance v0, Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    .line 721
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    .line 723
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v1, :cond_1

    .line 724
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setGetAlbum()V

    goto :goto_1

    .line 725
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v1, :cond_3

    .line 726
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setGetContent()V

    .line 728
    :cond_3
    :goto_1
    new-instance v0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mConfig:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    .line 729
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getScreenPixels(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 730
    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v0, v3, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->setScreenSize(II)V

    .line 731
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, v3, v0}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V

    .line 732
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    new-instance v1, Lcn/nubia/gallery3d/app/AlbumSetPage$5;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$5;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->setListener(Lcn/nubia/gallery3d/ui/SlotView$Listener;)V

    .line 753
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 754
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->initHideFaceHintView()V

    .line 755
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v0, :cond_4

    .line 756
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    if-nez v0, :cond_4

    .line 757
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getSelectionHintView()Lcn/nubia/gallery3d/ui/SelectionHintView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    .line 758
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mData:Landroid/os/Bundle;

    const-string v1, "hint-count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 759
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f000b

    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 761
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->setText(Ljava/lang/String;)V

    .line 764
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbums:Z

    if-nez v0, :cond_5

    .line 765
    new-instance v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    :cond_5
    return-void
.end method

.method private isFacesAlbumSet(Lcn/nubia/gallery3d/data/MediaSet;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1380
    instance-of p1, p1, Lcn/nubia/gallery3d/data/FacesAlbumSet;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLocationAlbumSet(Lcn/nubia/gallery3d/data/MediaSet;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1384
    instance-of p1, p1, Lcn/nubia/gallery3d/data/LocationAlbumSet;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isThingsAlbumSet(Lcn/nubia/gallery3d/data/MediaSet;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1388
    instance-of p1, p1, Lcn/nubia/gallery3d/data/ThingsAlbumSet;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadSelectionHintImage()V
    .locals 4

    .line 1285
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getBitmapLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mData:Landroid/os/Bundle;

    const-string v1, "item-path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1289
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1290
    instance-of v1, v0, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v1, :cond_1

    .line 1291
    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    .line 1292
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v2

    const/4 v3, 0x2

    .line 1293
    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    new-instance v3, Lcn/nubia/gallery3d/app/AlbumSetPage$12;

    invoke-direct {v3, p0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage$12;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V

    .line 1292
    invoke-virtual {v2, v0, v3}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    :cond_1
    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private pickAlbum(I)V
    .locals 10

    .line 319
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 327
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->isFacesAlbumSet(Lcn/nubia/gallery3d/data/MediaSet;)Z

    move-result v1

    .line 328
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->isLocationAlbumSet(Lcn/nubia/gallery3d/data/MediaSet;)Z

    move-result v2

    .line 329
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->isThingsAlbumSet(Lcn/nubia/gallery3d/data/MediaSet;)Z

    move-result v3

    .line 330
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickAlbum targetSet is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mediaPath is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlbumSetPage"

    invoke-static {v6, v5}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v5, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 334
    invoke-direct {p0, p1, v6}, Lcn/nubia/gallery3d/app/AlbumSetPage;->getSlotCenter(I[I)V

    const-string p1, "set-center"

    .line 335
    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 336
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeAdd(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 338
    :cond_3
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz p1, :cond_5

    .line 339
    :cond_4
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result p1

    sget v6, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-ne p1, v6, :cond_5

    return-void

    .line 341
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    const/4 v6, 0x1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 342
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result p1

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->NEWFOLDER_BUCKET_ID:I

    if-ne p1, v1, :cond_7

    .line 343
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_1

    .line 346
    :cond_6
    new-instance p1, Lcn/nubia/gallery3d/app/AlbumSetPage$2;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$2;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->showFolderDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 367
    :cond_7
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMediaSetDirPath(Lcn/nubia/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getToggleState()Z

    move-result v1

    xor-int/2addr v1, v6

    .line 367
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->doAddOperation(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_8
    const/4 p1, 0x0

    const-string v7, "is-tab"

    const-string v8, "media-path"

    if-nez v1, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    .line 371
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v9

    if-lez v9, :cond_9

    goto :goto_0

    .line 389
    :cond_9
    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-eqz v1, :cond_a

    .line 390
    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "is-locationalbum"

    .line 392
    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/CameraPage;

    invoke-virtual {p1, v0, v6, v5}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 396
    :cond_a
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_b

    .line 397
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const-string v0, "auto-select-all"

    .line 398
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    :cond_b
    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    xor-int/2addr v0, v6

    const-string v1, "cluster-menu"

    .line 403
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {p1, v0, v6, v5}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 372
    :cond_c
    :goto_0
    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_d

    const-string p1, "is-facesalbumset"

    .line 375
    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_d
    if-eqz v2, :cond_e

    const-string p1, "is-locationalbumset"

    .line 378
    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    if-eqz v3, :cond_f

    const-string p1, "is-thingsalbumset"

    .line 381
    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    :cond_f
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result p1

    if-lez p1, :cond_10

    const-string p1, "is-other-albumset"

    .line 384
    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    :cond_10
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1, v0, v6, v5}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private pickHideFaceAlbum()V
    .locals 4

    .line 1319
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    const-string v1, "facehide"

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 1320
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1321
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is-tab"

    const/4 v2, 0x0

    .line 1322
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is-hide-facesalbumset"

    const/4 v2, 0x1

    .line 1323
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1324
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v3, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v3, v2, v1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    return-void
.end method

.method private setHintView(II)V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    .line 1262
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p2, v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTabHeight()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1263
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1264
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 546
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    return-void
.end method

.method private share()V
    .locals 17

    move-object/from16 v0, p0

    .line 894
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 895
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_3

    .line 897
    iget-object v8, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v8

    .line 898
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/gallery3d/data/Path;

    if-nez v9, :cond_0

    return-void

    .line 901
    :cond_0
    invoke-virtual {v8, v9}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v10

    or-int/2addr v5, v10

    .line 902
    invoke-virtual {v8, v9}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v10

    instance-of v10, v10, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v10, :cond_1

    .line 903
    invoke-virtual {v8, v9}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v10}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 905
    :cond_1
    invoke-virtual {v8, v9}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v11, v3

    goto :goto_1

    :cond_3
    move-object v11, v4

    :goto_1
    move-wide v14, v6

    if-nez v5, :cond_4

    goto :goto_2

    .line 910
    :cond_4
    invoke-static {v5}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v12, v4

    const/4 v13, 0x0

    .line 912
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-nez v1, :cond_5

    .line 913
    new-instance v1, Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v3}, Lcn/nubia/improve/share/PhotoPageShareManager;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object v1, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    .line 914
    invoke-virtual {v1, v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->setPtriHasGrayBG(Z)V

    .line 915
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {v1, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setCustomShareViewListener(Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;)V

    .line 917
    :cond_5
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 918
    iget-object v10, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcn/nubia/improve/share/PhotoPageShareManager;->show(Ljava/util/ArrayList;Ljava/lang/String;ZJZ)V

    goto :goto_3

    .line 920
    :cond_6
    iget-object v10, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/16 v16, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v16}, Lcn/nubia/improve/share/PhotoPageShareManager;->showLand(Ljava/util/ArrayList;Ljava/lang/String;ZJZ)V

    :goto_3
    return-void
.end method

.method private showFolderDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 978
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 979
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1100a5

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100060

    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10004e

    const/4 v1, 0x0

    .line 980
    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0c005c

    .line 981
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 982
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c002b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 983
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 984
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    const v0, 0x7f09008e

    .line 985
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1000d8

    .line 986
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 987
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 988
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetPage$MyTextWatcher;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage$MyTextWatcher;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;Lcn/nubia/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 989
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->showKeyBord(Lcn/nubia/commonui/app/Dialog;)V

    .line 991
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->createDefaultFolderName()Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 994
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 996
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 997
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelected(Z)V

    return-void
.end method

.method private showHintView()V
    .locals 8

    .line 1219
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f100046

    .line 1223
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    if-eqz v1, :cond_2

    .line 1224
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const v1, 0x7f10010d

    goto :goto_0

    :cond_1
    const v1, 0x7f100111

    goto :goto_0

    .line 1230
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsLocationAlbumSet:Z

    if-eqz v1, :cond_3

    const v1, 0x7f100112

    :goto_0
    move v6, v0

    move v5, v1

    goto :goto_1

    .line 1232
    :cond_3
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsThingsAlbumSet:Z

    if-eqz v1, :cond_4

    const v1, 0x7f100113

    goto :goto_0

    :cond_4
    const v1, 0x7f100107

    goto :goto_0

    .line 1237
    :goto_1
    new-instance v0, Lcn/nubia/gallery3d/ui/HintViewLayout;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08007c

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1238
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/HintViewLayout;-><init>(Landroid/content/Context;IIILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    .line 1239
    new-instance v1, Lcn/nubia/gallery3d/app/AlbumSetPage$11;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$11;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->setHintView(II)V

    .line 1247
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/HintViewLayout;->show()V

    return-void
.end method

.method private showKeyBord(Lcn/nubia/commonui/app/Dialog;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090091

    .line 1003
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 1004
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1005
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1006
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1007
    invoke-virtual {p1}, Lcn/nubia/commonui/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private updateAppBars()V
    .locals 4

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mGet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetPage"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsTab:Z

    if-eqz v0, :cond_2

    .line 772
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    const/4 v1, 0x1

    const v2, 0x7f10004e

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/app/GalleryAppBar;->checkTab(I)V

    .line 774
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showTab()V

    .line 775
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 776
    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/gallery3d/app/AlbumSetPage$6;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$6;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    .line 775
    invoke-virtual {v0, v2, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mData:Landroid/os/Bundle;

    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 784
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 785
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 786
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-virtual {v1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 788
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->refreshRootPane()V

    goto/16 :goto_0

    .line 789
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 791
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 792
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumSetPage$7;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$7;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    .line 791
    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 800
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 801
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 803
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/app/GalleryAppBar;->checkTab(I)V

    .line 804
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showTab()V

    .line 805
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    const v2, 0x7f08008a

    new-instance v3, Lcn/nubia/gallery3d/app/AlbumSetPage$8;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$8;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCustomImage(ILandroid/view/View$OnClickListener;)V

    .line 842
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getCustomImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mTabAddView:Landroid/widget/ImageView;

    .line 843
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 844
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 845
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->refreshRootPane()V

    goto :goto_0

    .line 848
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 849
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    const v1, 0x7f080055

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumSetPage$9;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$9;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNavigationIcon(ILandroid/view/View$OnClickListener;)V

    .line 856
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 857
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06008b

    .line 858
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 856
    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleTextColor(I)V

    .line 859
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/app/AlbumSetPage$10;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$10;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private updateHideFaceHintView()V
    .locals 3

    .line 1392
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGalleryApp()Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->hasFaceHideAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHasHideFaceAlbum:Z

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

    if-nez v0, :cond_1

    .line 1395
    new-instance v0, Lcn/nubia/gallery3d/ui/HideFaceHintView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/HideFaceHintView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

    .line 1396
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 1397
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1398
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1400
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

    if-eqz v0, :cond_1

    .line 1401
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->removeComponent(Lcn/nubia/gallery3d/ui/GLView;)Z

    .line 1402
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1403
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    const/4 v0, 0x0

    .line 1404
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHideFaceHintView:Lcn/nubia/gallery3d/ui/HideFaceHintView;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1021
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1022
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1023
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const v0, 0x7f1000e7

    invoke-static {p1, v0, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    return-object v1

    .line 1026
    :cond_0
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->inValidFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const v0, 0x7f1000e6

    invoke-static {p1, v0, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    return-object v1

    .line 1030
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->getPicturesDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1032
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1036
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const v0, 0x7f1000aa

    invoke-static {p1, v0, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public onBackPressed()V
    .locals 3

    .line 264
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbums:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 267
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 273
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onBackPressed()V

    .line 277
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f010013

    const v2, 0x7f010027

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1207
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1208
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->isPaused()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHintView:Lcn/nubia/gallery3d/ui/HintViewLayout;

    if-eqz p1, :cond_0

    .line 1209
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->hideHintView()V

    .line 1210
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->showHintView()V

    .line 1212
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    if-eqz p1, :cond_1

    .line 1213
    invoke-virtual {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    .line 1214
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->share()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 453
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    const-string p2, "get-albums"

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbums:Z

    .line 455
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const-string p2, "get-content"

    .line 456
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    const-string p2, "get_multi_content"

    .line 457
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    const-string p2, "max_num"

    const v1, 0x7fffffff

    .line 458
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContentMaxNum:I

    const-string p2, "get-album"

    .line 459
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    const-string p2, "addto_newfolder"

    .line 460
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddtoNewfolder:Z

    const-string p2, "is-facesalbumset"

    .line 461
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    const-string p2, "is-hide-facesalbumset"

    .line 462
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    const-string p2, "is-locationalbumset"

    .line 463
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsLocationAlbumSet:Z

    const-string p2, "is-thingsalbumset"

    .line 464
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsThingsAlbumSet:Z

    const-string p2, "is-other-albumset"

    .line 465
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsOtherAlbumSet:Z

    .line 467
    new-instance p2, Lcn/nubia/gallery3d/app/EyePosition;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcn/nubia/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    const-string p2, "media-path"

    const-string v0, "/combo/{/local/all}"

    .line 468
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez p2, :cond_0

    .line 471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaSet is null. Path = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlbumSetPage"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    .line 474
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->initHandler()V

    .line 475
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 476
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->initializeData()V

    .line 477
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    .line 478
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddtoNewfolder:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsThingsAlbumSet:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsLocationAlbumSet:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsOtherAlbumSet:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 482
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x2

    .line 480
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 484
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getSelectionManager()Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setInMultiSelectionMode(Z)V

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1

    .line 870
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setBackgroundColor(Z)V

    .line 871
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 872
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 873
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz p1, :cond_1

    .line 874
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsTab:Z

    if-eqz p1, :cond_0

    .line 875
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->checkTab(I)V

    .line 876
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showTab()V

    goto :goto_0

    .line 878
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 881
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_3

    .line 882
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 883
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->refreshRootPane()V

    goto :goto_1

    .line 886
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->updateAppBars()V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->lockRendering()V

    .line 255
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mX:F

    .line 256
    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mY:F

    .line 257
    iput p3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mZ:F

    .line 258
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->unlockRendering()V

    .line 259
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void
.end method

.method public onLeaveShareMode()V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 1350
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onResetData()V

    return-void
.end method

.method public onLongTap(I)V
    .locals 3

    .line 435
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 440
    :cond_1
    instance-of v1, v0, Lcn/nubia/gallery3d/data/RecycledAlbum;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcn/nubia/gallery3d/data/FacesAlbumSet;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocationAlbumSet;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcn/nubia/gallery3d/data/ThingsAlbum;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcn/nubia/gallery3d/data/CollectAlbumSet;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 446
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 447
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 448
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 551
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 553
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 556
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->pause()V

    .line 559
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/EyePosition;->pause()V

    .line 560
    invoke-static {}, Lcn/nubia/gallery3d/ui/DetailsHelper;->pause()V

    .line 561
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {v0}, Lcn/nubia/improve/move/AddExecutor;->pause()V

    .line 564
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->onPause()V

    .line 571
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->hideHintView()V

    .line 572
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    if-eqz v0, :cond_4

    .line 573
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->removeComponent(Lcn/nubia/gallery3d/ui/GLView;)Z

    :cond_4
    return-void
.end method

.method public onProgressComplete(II)V
    .locals 2

    .line 1269
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

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

    .line 1274
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const p2, 0x7f100175

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 1277
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    invoke-virtual {p1}, Lcn/nubia/improve/move/AddExecutor;->showAddFailToast()V

    goto :goto_0

    .line 1280
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResetData()V
    .locals 1

    const/4 v0, 0x0

    .line 1355
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mPhotoPageShareManager:Lcn/nubia/improve/share/PhotoPageShareManager;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 579
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    .line 580
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddtoNewfolder:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsThingsAlbumSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsLocationAlbumSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsOtherAlbumSet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    goto :goto_1

    .line 582
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 586
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    if-nez v0, :cond_2

    .line 587
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->updateHideFaceHintView()V

    .line 589
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 590
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 591
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    if-eqz v0, :cond_3

    .line 592
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 593
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->loadSelectionHintImage()V

    .line 597
    :cond_3
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 598
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    .line 599
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 600
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 601
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mEyePosition:Lcn/nubia/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/EyePosition;->resume()V

    .line 602
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz v0, :cond_4

    .line 603
    new-instance v1, Lcn/nubia/gallery3d/app/AlbumSetPage$4;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$4;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setMenuActionListener(Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;)V

    .line 687
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbums:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v0, :cond_6

    .line 688
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 690
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSelectionListener(Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 691
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->showKeyBord(Lcn/nubia/commonui/app/Dialog;)V

    .line 692
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object v0

    const-string v1, "cn.nubia.gallery3d"

    const-string v2, "gallery_launch_albums"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectionChange(Lcn/nubia/gallery3d/data/Path;Z)V
    .locals 0

    .line 1178
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_1

    .line 1179
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 1181
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    goto :goto_0

    .line 1183
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 1185
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    :cond_1
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 6

    .line 1085
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1170
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onBackPressed()V

    goto/16 :goto_3

    .line 1166
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onSelectionCancel()V

    goto/16 :goto_3

    .line 1162
    :pswitch_2
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddtoNewfolder:Z

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onSelectionDone(Z)V

    goto/16 :goto_3

    .line 1153
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 1156
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1158
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_3

    .line 1145
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_1

    .line 1146
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1147
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    .line 1149
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_3

    .line 1130
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_2

    .line 1131
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    .line 1132
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    .line 1134
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1135
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->updateAppBars()V

    .line 1136
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    .line 1137
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetAlbums:Z

    if-eqz p1, :cond_9

    .line 1138
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x0

    .line 1139
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1140
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 1088
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInMultiSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_3

    .line 1091
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 1092
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    .line 1093
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    if-eqz p1, :cond_8

    .line 1094
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 1095
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v2, 0x7f09002d

    const v3, 0x7f08013a

    const v4, 0x7f1001fc

    invoke-virtual {p1, v0, v2, v3, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1097
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsFacesAlbumSet:Z

    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_5

    .line 1098
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v3, 0x7f09001a

    const v4, 0x7f08011d

    const v5, 0x7f10014c

    invoke-virtual {p1, v1, v3, v4, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1100
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsHideFacesAlbumSet:Z

    if-eqz p1, :cond_4

    .line 1101
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v1, 0x7f090019

    const v3, 0x7f080117

    const v4, 0x7f10014b

    invoke-virtual {p1, v2, v1, v3, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    goto :goto_0

    .line 1104
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v1, 0x7f090018

    const v3, 0x7f08011a

    const v4, 0x7f10014a

    invoke-virtual {p1, v2, v1, v3, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1107
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v1, 0x7f09001e

    const v2, 0x7f08012c

    const v3, 0x7f10014e

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    goto :goto_2

    .line 1110
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v3, 0x7f090025

    const v4, 0x7f080110

    const v5, 0x7f100078

    invoke-virtual {p1, v2, v3, v4, v5}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    .line 1112
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsTab:Z

    if-eqz p1, :cond_6

    .line 1113
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v2, 0x7f09002e

    const v3, 0x7f08013d

    const v4, 0x7f100151

    invoke-virtual {p1, v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    goto :goto_1

    .line 1115
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result p1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOTSYSTEM_ALBUM_SET_BUCKET_ID:I

    if-ne p1, v2, :cond_7

    .line 1116
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v2, 0x7f09002f

    const v3, 0x7f080140

    const v4, 0x7f100152

    invoke-virtual {p1, v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V

    goto :goto_1

    .line 1119
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1121
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->removeItemByIndex(I)V

    .line 1123
    :goto_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mMenuActionHandler:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    .line 1125
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->performLongPressHapticFeedback()V

    .line 1126
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 3

    .line 293
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-nez v0, :cond_3

    .line 297
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 301
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeSelected(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 304
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;I)V

    .line 305
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 928
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->startRisingAnimation()V

    :cond_1
    if-eqz p3, :cond_3

    const-string p1, "uri_result"

    .line 932
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "addto_iscopy"

    .line 933
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 934
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->getAddDatas(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddDatas:Ljava/util/ArrayList;

    .line 935
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 936
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mContext:Landroid/content/Context;

    const p2, 0x7f1001e6

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 939
    :cond_2
    new-instance v1, Lcn/nubia/improve/move/AddExecutor;

    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v1, p1, p2}, Lcn/nubia/improve/move/AddExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddExecutor:Lcn/nubia/improve/move/AddExecutor;

    const/4 v3, 0x0

    .line 940
    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mNewFolderPath:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mAddDatas:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/improve/move/AddExecutor;->doAdd(Lcn/nubia/improve/move/AddExecutor$AddProgressListener;ILjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public refreshRootPane()V
    .locals 1

    .line 1360
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->refreshRootPane()V

    .line 1361
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    .line 1362
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void
.end method
