.class public Lcn/nubia/gallery3d/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"


# static fields
.field public static final ALBUM:I = 0x2

.field public static final CAMERA:I = 0x1

.field public static final CLOUD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GalleryActionBar"


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCustomView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCustomView:Landroid/view/View;

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 85
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 87
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x2

    .line 89
    iput p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/app/GalleryActionBar;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/GalleryActionBar;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryActionBar;->goAllAlbumView()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/GalleryActionBar;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryActionBar;->switchToCloud()V

    return-void
.end method

.method public static getHeight(Landroid/app/Activity;)I
    .locals 0

    .line 93
    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private goAllAlbumView()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getStateCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    .line 272
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media-path"

    .line 274
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 275
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is-tab"

    const/4 v2, 0x1

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->exchangeState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 281
    throw v0
.end method

.method private initCustomView()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0036

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCustomView:Landroid/view/View;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0037

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCustomView:Landroid/view/View;

    .line 127
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCustomView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/GalleryActionBar;->setLinstener(Landroid/view/View;)V

    return-void
.end method

.method public static initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private setLinstener(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090036

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f090037

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    const v0, 0x7f090038

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 135
    new-instance v2, Lcn/nubia/gallery3d/app/GalleryActionBar$1;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/GalleryActionBar$1;-><init>(Lcn/nubia/gallery3d/app/GalleryActionBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 144
    new-instance v1, Lcn/nubia/gallery3d/app/GalleryActionBar$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/GalleryActionBar$2;-><init>(Lcn/nubia/gallery3d/app/GalleryActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090039

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 154
    new-instance v1, Lcn/nubia/gallery3d/app/GalleryActionBar$3;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/GalleryActionBar$3;-><init>(Lcn/nubia/gallery3d/app/GalleryActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryActionBar;->initMoreMenu()V

    const v0, 0x7f0900f3

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 164
    new-instance v0, Lcn/nubia/gallery3d/app/GalleryActionBar$4;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/GalleryActionBar$4;-><init>(Lcn/nubia/gallery3d/app/GalleryActionBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private switchToCloud()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media-path"

    .line 200
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 201
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is-tab"

    const/4 v2, 0x1

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/CloudPage;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 209
    throw v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_0
    return-void
.end method

.method public checkTab(I)V
    .locals 0

    return-void
.end method

.method public disableShowHideAnimation()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 291
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setShowHideAnimationEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-array v4, v1, [Ljava/lang/Object;

    .line 292
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    :try_start_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mActionBar"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 297
    iget-object v3, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mShowHideAnimationEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 299
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 300
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mCurrentShowAnim"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public enableShowHideAnimation()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 312
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setShowHideAnimationEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-array v4, v1, [Ljava/lang/Object;

    .line 313
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    :try_start_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mActionBar"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 318
    iget-object v3, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mShowHideAnimationEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 320
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 321
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mCurrentShowAnim"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public enableTabsMenu(I)V
    .locals 2

    .line 110
    iput p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 112
    new-instance p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 113
    iput v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 115
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goCameraView()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 253
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "media-path"

    .line 257
    sget-object v3, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is-tab"

    .line 258
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/CameraPage;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->exchangeState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 264
    throw v0
.end method

.method public hide()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public initMoreMenu()V
    .locals 0

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(I)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDisplayOptions(ZZ)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    const/16 v1, 0x8

    :cond_1
    or-int p2, v2, v1

    const/16 v1, 0xc

    .line 216
    invoke-virtual {v0, p2, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 218
    iget-object p2, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 104
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    :cond_0
    return-void
.end method
