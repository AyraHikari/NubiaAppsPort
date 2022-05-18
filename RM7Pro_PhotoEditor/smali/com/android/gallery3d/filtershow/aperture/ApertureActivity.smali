.class public Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/net/Uri;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

.field private j:Landroid/content/ServiceConnection;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_filtershow_filters2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->e:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->g:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->h:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method private B(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->i:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    return-object p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->i:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    return-object p1
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    return-object p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->o()V

    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->e:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->B(I)V

    return-void
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->h:Z

    return p0
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->h:Z

    return p1
.end method

.method static synthetic i(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->x(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->n()I

    move-result p0

    return p0
.end method

.method private m()V
    .locals 3

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->j:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private n()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private q()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "PhotoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " VersionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private v()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/utils/b;->n(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->e:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->z()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->m()V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->setRootView(Landroid/view/View;)V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->f:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const p1, 0x7f0e016d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const v3, 0x7f0e00e5

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701f9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public k(FFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->p()V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->i:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->G(FFF)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->r()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcn/nubia/permission/b;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcn/nubia/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    sput-object p1, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->assMgr:Landroid/content/res/AssetManager;

    const/high16 p1, 0x7f0b0000

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f080096

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a:Landroid/view/View;

    const p1, 0x7f080185

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    const p1, 0x7f08026d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->y()V

    const p1, 0x7f08021f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->w()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->v()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ApertureActivity"

    const-string v1, "onDestory "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->i:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    if-eqz v1, :cond_0

    const-string v1, "onDestory ubind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->f:Ljava/lang/ref/WeakReference;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->g:Z

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->k:Landroid/os/Handler;

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->k:Landroid/os/Handler;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public t(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->k:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->g:Z

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
