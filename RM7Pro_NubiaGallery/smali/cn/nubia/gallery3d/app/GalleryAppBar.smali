.class public Lcn/nubia/gallery3d/app/GalleryAppBar;
.super Ljava/lang/Object;
.source "GalleryAppBar.java"


# static fields
.field public static final NOT_SHOW_BLANK_VIEW:I = 0x2

.field public static final ONLY_DISABLE_BLANK_VIEW:I = 0x4

.field public static final RESET_BLANK_VIEW:I = 0x3

.field public static final SHOW_BLANK_VIEW:I = 0x1


# instance fields
.field private imgSort:Landroid/widget/ImageView;

.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mBlankHeight:I

.field private mBlankHeight2:I

.field private mBlankView:Landroid/view/View;

.field private mBlankView2:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mGlobalShowBlankStatus:I

.field private mStatusBarHeight:I

.field private mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarHeight:I

.field private mToolbarWithBlankHeight:I

.field private mTopBarTitleLayout:Lcn/nubia/toolbar/TopBarTitleLayout;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView:Landroid/view/View;

    .line 52
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView2:Landroid/view/View;

    const/4 v0, 0x1

    .line 428
    iput v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mGlobalShowBlankStatus:I

    .line 54
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    .line 55
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 57
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 60
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->initBarSpec()V

    .line 61
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f090198

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/toolbar/TopBarTitleLayout;

    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTopBarTitleLayout:Lcn/nubia/toolbar/TopBarTitleLayout;

    .line 62
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->initTabLayout()V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBar()V

    .line 64
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->initDectorViewVisableListener()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/GalleryAppBar;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->imgSort:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/GalleryAppBar;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->switchToAlbumSetPage()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/GalleryAppBar;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->switchToCameraPage()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/GalleryAppBar;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/GalleryAppBar;)Lcn/nubia/gallery3d/app/GalleryActivity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-object p0
.end method

.method private initBarSpec()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mStatusBarHeight:I

    goto :goto_0

    :cond_0
    const v1, 0x7f070237

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mStatusBarHeight:I

    :goto_0
    const v1, 0x7f07024a

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarWithBlankHeight:I

    const v1, 0x7f070247

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankHeight:I

    const v1, 0x7f070248

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankHeight2:I

    .line 92
    iget v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarWithBlankHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarHeight:I

    return-void
.end method

.method private initDectorViewVisableListener()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/GalleryAppBar$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar$1;-><init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private initTabLayout()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f090194

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView2:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090182

    .line 242
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->imgSort:Landroid/widget/ImageView;

    .line 243
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    const/4 v1, 0x0

    new-instance v2, Lcn/nubia/gallery3d/app/GalleryAppBar$2;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar$2;-><init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->addTabListener(ILcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    const/4 v1, 0x1

    new-instance v2, Lcn/nubia/gallery3d/app/GalleryAppBar$3;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar$3;-><init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->addTabListener(ILcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;)V

    .line 258
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    const/4 v1, 0x2

    new-instance v2, Lcn/nubia/gallery3d/app/GalleryAppBar$4;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar$4;-><init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->addTabListener(ILcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->imgSort:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/gallery3d/app/GalleryAppBar$5;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar$5;-><init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private switchToAlbumSetPage()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 379
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media-path"

    .line 380
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 381
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is-tab"

    const/4 v2, 0x1

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->exchangeState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 386
    throw v0
.end method

.method private switchToCameraPage()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 356
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 361
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "type-bits"

    const/4 v2, 0x3

    .line 363
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 364
    sget-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    sget-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    .line 365
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    .line 366
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "media-path"

    .line 367
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is-tab"

    .line 368
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcn/nubia/gallery3d/app/CameraPage;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/app/StateManager;->exchangeState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 372
    throw v0
.end method


# virtual methods
.method public checkTab(I)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    if-nez v0, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->updateTab(I)V

    return-void
.end method

.method public getTabHeight()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTopBarTitleLayout:Lcn/nubia/toolbar/TopBarTitleLayout;

    return-object v0
.end method

.method public getTopBarHeight()I
    .locals 2

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarHeight:I

    return v0

    .line 131
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarHeight:I

    iget v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mStatusBarHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hideAppBar()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3706

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_1
    return-void
.end method

.method public hideAppBarNotHideStatueBar()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 225
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1302

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 233
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public hideTab()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->hide()V

    return-void
.end method

.method public refreshGlrootView(Z)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoPage;

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoPage;

    .line 416
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->setNatvigationBarDdjust(Z)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    if-eqz p1, :cond_1

    .line 418
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object p1

    check-cast p1, Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    check-cast p1, Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    .line 419
    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->setNatvigationBarDdjust()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundColor(Z)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 124
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTopBarTitleLayout:Lcn/nubia/toolbar/TopBarTitleLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTitleTextColor(Z)V

    return-void
.end method

.method public setGetContentConfig()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabVisibility(IZ)V

    return-void
.end method

.method public setToolBarLayoutParam()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x400

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 107
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 113
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    iget v2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mStatusBarHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 116
    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 117
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setToolbarLayout()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setToolBarLayoutParam()V

    return-void
.end method

.method public showAppBar()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GalleryAppBar"

    const-string v1, "isInMultiWindowMode!"

    .line 143
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2500

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    :cond_2
    return-void
.end method

.method public showAppBarHideNav()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2700

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    :cond_1
    return-void
.end method

.method public showBlankView(I)V
    .locals 5

    .line 430
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView2:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarWithBlankHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarHeight:I

    .line 435
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTopBarTitleLayout:Lcn/nubia/toolbar/TopBarTitleLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTextCenter(Z)V

    .line 436
    iput p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mGlobalShowBlankStatus:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne p1, v2, :cond_1

    .line 438
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarWithBlankHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankHeight2:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarHeight:I

    .line 441
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTopBarTitleLayout:Lcn/nubia/toolbar/TopBarTitleLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTextCenter(Z)V

    .line 442
    iput p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mGlobalShowBlankStatus:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 443
    iget v4, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mGlobalShowBlankStatus:I

    if-eq v4, v2, :cond_2

    .line 444
    invoke-virtual {p0, v4}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 446
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankView2:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarWithBlankHeight:I

    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankHeight:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mBlankHeight2:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mToolbarHeight:I

    .line 449
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTopBarTitleLayout:Lcn/nubia/toolbar/TopBarTitleLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTextCenter(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected showSortAndCaterogyDialog()V
    .locals 6

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v2, 0x7f100229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v2, 0x7f10019a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v2, 0x7f10005a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    .line 307
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 308
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v4, 0x7f11012a

    invoke-direct {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-array v1, v1, [Z

    .line 311
    invoke-static {}, Lcn/nubia/gallery3d/data/DataManager;->isSortByASC()Z

    move-result v3

    const/4 v4, 0x0

    aput-boolean v3, v1, v4

    .line 312
    invoke-static {}, Lcn/nubia/gallery3d/data/DataManager;->isSortByASC()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    aput-boolean v3, v1, v4

    const/4 v3, 0x2

    .line 313
    invoke-static {}, Lcn/nubia/gallery3d/data/DataManager;->isThingsAlbumSetVisible()Z

    move-result v5

    aput-boolean v5, v1, v3

    const/4 v3, 0x3

    .line 314
    invoke-static {}, Lcn/nubia/gallery3d/data/DataManager;->isThingsAlbumSetVisible()Z

    move-result v5

    xor-int/2addr v4, v5

    aput-boolean v4, v1, v3

    .line 316
    new-instance v3, Lcn/nubia/gallery3d/app/GalleryAppBar$7;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar$7;-><init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    invoke-virtual {v2, v0, v1, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 337
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v1, 0x7f10004e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method protected showSortDialog()V
    .locals 4

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v2, 0x7f100229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 282
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v3, 0x7f110129

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 283
    invoke-static {}, Lcn/nubia/gallery3d/data/DataManager;->isSortByASC()Z

    move-result v2

    .line 284
    new-instance v3, Lcn/nubia/gallery3d/app/GalleryAppBar$6;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar$6;-><init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 297
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mContext:Landroid/content/Context;

    const v2, 0x7f10004e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method public showTab()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mTabLayout:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->show()V

    return-void
.end method

.method public switchToCloudPage()V
    .locals 4

    .line 390
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 393
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media-path"

    .line 394
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 395
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is-tab"

    const/4 v2, 0x1

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/CloudPage;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 400
    throw v0
.end method
