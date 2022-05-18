.class public Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/GalleryActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;,
        Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;,
        Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"


# instance fields
.field private mActionBar:Lcn/nubia/gallery3d/app/GalleryActionBar;

.field private mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

.field protected mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field mDialog:Lcn/nubia/commonui/app/Dialog;

.field private mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

.field protected mIsShowCTADialog:Z

.field protected mIsSupportCTADialog:Z

.field private mNavVisibilityListener:Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;

.field private mNavVisibilityObserver:Landroid/database/ContentObserver;

.field protected mNeedRequestPermission:Z

.field private mOrientationManager:Lcn/nubia/gallery3d/app/OrientationManager;

.field private mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mPermissionListener:Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;

.field private mPermissionsNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

.field private mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mStateManager:Lcn/nubia/gallery3d/app/StateManager;

.field private mTransitionStore:Lcn/nubia/gallery3d/app/TransitionStore;

.field showPermissionDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 89
    new-instance v0, Lcn/nubia/gallery3d/app/TransitionStore;

    invoke-direct {v0}, Lcn/nubia/gallery3d/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcn/nubia/gallery3d/app/TransitionStore;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mIsSupportCTADialog:Z

    .line 93
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNeedRequestPermission:Z

    .line 95
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 98
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    .line 100
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNavVisibilityObserver:Landroid/database/ContentObserver;

    .line 345
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionListener:Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;

    .line 362
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->showPermissionDialog:Z

    .line 735
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNavVisibilityListener:Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->dismissPermissionDialog()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->dismissPermissionGuide()V

    return-void
.end method

.method private dismissPermissionDialog()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionListener:Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;->initCloudInformation()V

    :cond_1
    return-void
.end method

.method private dismissPermissionGuide()V
    .locals 2

    .line 699
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    const v0, 0x7f100159

    const/4 v1, 0x0

    .line 702
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 703
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    .line 704
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->finish()V

    return-void
.end method

.method private initAlbumDataSupport()V
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

    .line 598
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->initFavorStuff()V

    return-void
.end method

.method private initFavorStuff()V
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$5;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    return-void
.end method

.method private initNavigationBarObserver()V
    .locals 2

    .line 117
    new-instance v0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNavVisibilityObserver:Landroid/database/ContentObserver;

    .line 128
    new-instance v0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNavVisibilityListener:Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;

    return-void
.end method

.method private registerNavVisibilityObserver()V
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cc_navi_status"

    .line 144
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNavVisibilityObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private showPermissionGuide(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 670
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, "\n"

    .line 673
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    :cond_1
    new-instance p2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v2, 0x7f1100a5

    invoke-direct {p2, p0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1001a9

    .line 678
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p2

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p2

    .line 680
    invoke-virtual {p2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1000f3

    new-instance v1, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$7;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$7;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Landroid/content/Context;)V

    .line 681
    invoke-virtual {p2, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    new-instance v0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$6;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$6;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    .line 689
    invoke-virtual {p1, p2, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    .line 694
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 695
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermissionUserGuideDialog(Landroid/content/Context;)V
    .locals 11

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "txh showPermissionUserGuideDialog"

    .line 631
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 636
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 637
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->IsFromSMS()Z

    move-result v1

    const-string v2, ", "

    const-string v3, "txh add i = "

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 638
    sget-object v1, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_SMS:[Ljava/lang/String;

    array-length v5, v1

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v8, v1, v6

    .line 639
    invoke-static {p1, v8}, Lcn/nubia/gallery3d/permission/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 640
    invoke-static {p0, v8}, Lcn/nubia/gallery3d/permission/PermissionUtil;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 641
    sget-object v8, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_NAME_SMS:[I

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 642
    iget-object v8, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_NAME_SMS:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_NAME_SMS:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcn/nubia/gallery3d/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 649
    :cond_2
    sget-object v1, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    array-length v5, v1

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v8, v1, v6

    .line 650
    invoke-static {p1, v8}, Lcn/nubia/gallery3d/permission/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 651
    invoke-static {p0, v8}, Lcn/nubia/gallery3d/permission/PermissionUtil;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 652
    sget-object v8, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_NAME:[I

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 653
    iget-object v8, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_NAME:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_NAME:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcn/nubia/gallery3d/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 660
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 661
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->showPermissionGuide(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    const p1, 0x7f100159

    .line 663
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 664
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->finish()V

    :goto_2
    return-void
.end method

.method private unregisterNavVisibilityObserver()V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNavVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public createPermissionDialogForCTA(II)V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mIsSupportCTADialog:Z

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getPermissionDialog()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 246
    :cond_2
    new-instance p1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const p2, 0x7f1100b4

    invoke-direct {p1, p0, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 250
    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 251
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 252
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 253
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4

    const v0, 0x7f0c004f

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(I)V

    const v0, 0x7f090073

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090065

    .line 257
    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090115

    .line 258
    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 262
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    if-eqz v1, :cond_3

    .line 265
    new-instance p2, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$3;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$3;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 273
    new-instance p2, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$4;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$4;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 486
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x52

    if-ne v0, v4, :cond_0

    if-nez v1, :cond_0

    const/16 v4, 0x80

    if-eq v1, v4, :cond_0

    if-eqz v2, :cond_1

    .line 490
    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcn/nubia/gallery3d/app/StateManager;->onMenuOpened(ILandroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 495
    throw p1

    :cond_0
    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 501
    :cond_1
    :goto_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 503
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return v3
.end method

.method public getAccountVersionCode()I
    .locals 3

    .line 722
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 725
    :try_start_0
    sget-object v1, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_ACCOUT_PACKAGE_NAME:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 727
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractGalleryActivity"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;
    .locals 1

    .line 615
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

    .line 618
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getAppActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAppActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    return-object v0
.end method

.method public getAppActivity()Landroid/support/v7/app/AppCompatActivity;
    .locals 0

    return-object p0
.end method

.method public getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 1

    .line 564
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object v0
.end method

.method public getDataManager()Lcn/nubia/gallery3d/data/DataManager;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcn/nubia/gallery3d/app/GalleryActionBar;
    .locals 1

    .line 556
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcn/nubia/gallery3d/app/GalleryActionBar;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcn/nubia/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/GalleryActionBar;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcn/nubia/gallery3d/app/GalleryActionBar;

    .line 559
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcn/nubia/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getGalleryApp()Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method public getOrientationManager()Lcn/nubia/gallery3d/app/OrientationManager;
    .locals 1

    .line 217
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcn/nubia/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method public getSelectionHintView()Lcn/nubia/gallery3d/ui/SelectionHintView;
    .locals 2

    .line 590
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lcn/nubia/gallery3d/ui/SelectionHintView;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionHintView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    .line 593
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mSelectionHintView:Lcn/nubia/gallery3d/ui/SelectionHintView;

    return-object v0
.end method

.method public declared-synchronized getSelectionManager()Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 1

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/SelectionManager;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStateManager()Lcn/nubia/gallery3d/app/StateManager;
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcn/nubia/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcn/nubia/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/StateManager;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcn/nubia/gallery3d/app/StateManager;

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcn/nubia/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;
    .locals 1

    .line 585
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcn/nubia/gallery3d/app/TransitionStore;

    return-object v0
.end method

.method public getViewRoot()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f09009f

    .line 213
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hideProgressBar()V
    .locals 2

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "hideProgressBar"

    .line 745
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 462
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 469
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 473
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 476
    throw v1

    .line 478
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcn/nubia/gallery3d/app/StateManager;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance p1, Lcn/nubia/gallery3d/app/OrientationManager;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcn/nubia/gallery3d/app/OrientationManager;

    .line 107
    invoke-static {p0}, Lcn/nubia/improve/drm/DrmUtil;->startDrmService(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->initNavigationBarObserver()V

    .line 109
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 425
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 426
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 429
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->destroy()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 431
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 434
    throw v0

    .line 436
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/drm/DrmUtil;->stopDrmService(Landroid/content/Context;)V

    .line 437
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 439
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 441
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 443
    iput-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionsNames:Ljava/util/ArrayList;

    .line 445
    :cond_2
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->isBind:Z

    .line 446
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->unbindServiceInvoked()V

    .line 448
    invoke-static {p0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->close()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcn/nubia/gallery3d/app/StateManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 533
    throw p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 535
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 510
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcn/nubia/gallery3d/app/StateManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 518
    throw p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 520
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 541
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcn/nubia/gallery3d/app/StateManager;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 549
    throw p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 551
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 576
    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 407
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 408
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->onPause()V

    .line 410
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 412
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->pause()V

    .line 413
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 416
    throw v0

    .line 418
    :cond_0
    :goto_0
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->yieldAllTextures()V

    .line 419
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->clear()V

    .line 420
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/BytesBufferPool;->clear()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 622
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "txh onRequestPermissionsResult, grantResults.length = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbstractGalleryActivity"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {p3}, Lcn/nubia/gallery3d/permission/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->showPermissionUserGuideDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 365
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 366
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0, p0}, Lcn/nubia/gallery3d/app/GalleryApp;->setAbstractGalleryActivity(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    .line 367
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 368
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getPermissionDialog()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mIsShowCTADialog:Z

    .line 373
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mIsSupportCTADialog:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 385
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->initAlbumDataSupport()V

    .line 389
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->resume()V

    .line 390
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 394
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->onResume()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 392
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 393
    throw v0

    .line 396
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mIsSupportCTADialog:Z

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mIsShowCTADialog:Z

    if-eqz v1, :cond_5

    :cond_4
    if-nez v0, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->showPermissionDialog:Z

    if-eqz v0, :cond_7

    .line 397
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionGuideAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 399
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mNeedRequestPermission:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 400
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 158
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 162
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 228
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 229
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->registerNavVisibilityObserver()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 359
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 360
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->unregisterNavVisibilityObserver()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 222
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0900a2

    .line 223
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/GLRootView;

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcn/nubia/gallery3d/ui/GLRootView;

    return-void
.end method

.method public setPermissionListener(Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mPermissionListener:Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;

    return-void
.end method

.method public showAccoutLoginOrRegist()V
    .locals 3

    .line 712
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100171

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    move-result-object v0

    .line 717
    invoke-virtual {v0, p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->loginOrRegister(Landroid/app/Activity;)V

    return-void
.end method

.method public showProgressBar()V
    .locals 2

    const-string v0, "AbstractGalleryActivity"

    const-string v1, "showProgressBar"

    .line 737
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v0, Lcn/nubia/commonui/app/Dialog;

    const v1, 0x7f1100a3

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    const v1, 0x7f0c0052

    .line 739
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/Dialog;->setContentView(I)V

    .line 740
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 741
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->show()V

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;I)V
    .locals 10

    :try_start_0
    const-string v0, "android.app.Activity"

    .line 753
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivityAsCaller"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    .line 754
    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/IBinder;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const/4 p1, 0x0

    aput-object p1, v1, v6

    aput-object p1, v1, v7

    .line 756
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 758
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
