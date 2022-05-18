.class public Lcn/nubia/gallery3d/ui/MenuActionHandler;
.super Ljava/lang/Object;
.source "MenuActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private final mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenuActionListener:Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;

.field private final mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

.field private final mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

.field private mMenuTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mOperaEntry:Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

.field private mProgressListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

.field private final mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mProgressListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    .line 42
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 43
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcn/nubia/gallery3d/ui/MenuExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    goto :goto_0

    .line 47
    :cond_0
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    .line 49
    :goto_0
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 50
    new-instance p2, Landroid/os/Handler;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMainHandler:Landroid/os/Handler;

    .line 51
    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f090056

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    .line 52
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuActionListener:Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mProgressListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/MenuExecutor;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryAppBar;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mOperaEntry:Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/ui/MenuActionHandler;Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;)Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mOperaEntry:Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    return-object p1
.end method

.method static synthetic access$702(Lcn/nubia/gallery3d/ui/MenuActionHandler;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuTask:Lcn/nubia/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/ui/MenuActionHandler;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateMenuOperation(J)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateMenuOperation(J)V
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1

    and-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const-wide/16 v7, 0x4

    and-long v7, p1, v7

    cmp-long v7, v7, v3

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    const-wide/16 v8, 0x20

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    const-wide/16 v8, 0x200

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    const-wide/16 v8, 0x400

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    const-wide/16 v8, 0x1000

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    const-wide/16 v8, 0x4000

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    const-wide/32 v8, 0x8000

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    const-wide/32 v8, 0x20000

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    const-wide/32 v9, 0x400000

    and-long v9, p1, v9

    cmp-long v9, v9, v3

    if-eqz v9, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, v5

    :goto_3
    const-wide/32 v10, 0x800000

    and-long v10, p1, v10

    cmp-long v10, v10, v3

    if-eqz v10, :cond_4

    move v10, v2

    goto :goto_4

    :cond_4
    move v10, v5

    :goto_4
    const-wide/32 v11, 0x1000000

    and-long v11, p1, v11

    cmp-long v11, v11, v3

    const-wide/32 v11, 0x8000000

    and-long v11, p1, v11

    cmp-long v11, v11, v3

    if-eqz v11, :cond_5

    move v11, v2

    goto :goto_5

    :cond_5
    move v11, v5

    :goto_5
    const-wide/32 v12, 0x10000000

    and-long v12, p1, v12

    cmp-long v12, v12, v3

    if-eqz v12, :cond_6

    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v5

    :goto_6
    const-wide/32 v13, 0x40000000

    and-long v13, p1, v13

    cmp-long v13, v13, v3

    if-eqz v13, :cond_7

    move v13, v2

    goto :goto_7

    :cond_7
    move v13, v5

    :goto_7
    const-wide/32 v14, -0x80000000

    and-long v14, p1, v14

    cmp-long v14, v14, v3

    if-eqz v14, :cond_8

    move v14, v2

    goto :goto_8

    :cond_8
    move v14, v5

    :goto_8
    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    move v1, v5

    :goto_9
    const-wide/16 v15, 0x2

    and-long v15, p1, v15

    cmp-long v3, v15, v3

    if-eqz v3, :cond_a

    goto :goto_a

    :cond_a
    move v2, v5

    .line 247
    :goto_a
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090016

    invoke-virtual {v3, v4, v10}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 248
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090013

    invoke-virtual {v3, v4, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 249
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f09000e

    invoke-virtual {v3, v4, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 250
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090025

    invoke-virtual {v3, v4, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 251
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f09002d

    invoke-virtual {v3, v4, v7}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 252
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f09000f

    invoke-virtual {v3, v4, v8}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 253
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090022

    invoke-virtual {v3, v4, v9}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 254
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090024

    invoke-virtual {v3, v4, v11}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 255
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090023

    invoke-virtual {v3, v4, v6}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 256
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f09002e

    invoke-virtual {v3, v4, v12}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 257
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f09002f

    invoke-virtual {v3, v4, v12}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 258
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f09001a

    invoke-virtual {v3, v4, v13}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 259
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090018

    invoke-virtual {v3, v4, v14}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 260
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v4, 0x7f090019

    invoke-virtual {v3, v4, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    .line 261
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    const v3, 0x7f09001e

    invoke-virtual {v1, v3, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemEnabled(IZ)V

    return-void
.end method


# virtual methods
.method public getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    return-object v0
.end method

.method public getOperaEntry()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;
    .locals 1

    .line 290
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mOperaEntry:Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuExecutor:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->pause()V

    return-void
.end method

.method public setAllMenuEnabled(Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setAllItemEnabled(Z)V

    return-void
.end method

.method public setMenuActionListener(Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuActionListener:Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;

    .line 61
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    new-instance v0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setListener(Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;)V

    return-void
.end method

.method public setProgressListener(Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mProgressListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    return-void
.end method

.method public updateSelectAll()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->initTotal()V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V

    .line 116
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V

    return-void
.end method

.method public updateSelectionMenu()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInMultiSelectionMode()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0f0009

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 123
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/SelectionManager;->getMaxSelectionCount()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 125
    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/SelectionManager;->getMaxSelectionCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_0
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_0
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->isTab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 134
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/ui/MenuActionHandler$2;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$2;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    .line 133
    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 142
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/ui/MenuActionHandler$3;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$3;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 151
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    .line 150
    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setConfirmText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 171
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 173
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleText(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 185
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    new-instance v2, Lcn/nubia/gallery3d/ui/MenuActionHandler$5;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$5;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    invoke-virtual {v0, v3, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->showSelectedItemCancel(ZLandroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    new-instance v1, Lcn/nubia/gallery3d/ui/MenuActionHandler$6;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$6;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    invoke-virtual {v0, v3, v3, v1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->showSelectedItemSelected(ZZLandroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 217
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuLayout:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    new-instance v2, Lcn/nubia/gallery3d/ui/MenuActionHandler$7;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$7;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->showSelectedItemSelected(ZZLandroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateSupportedOperation()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler;->mMenuTask:Lcn/nubia/gallery3d/util/Future;

    return-void
.end method
