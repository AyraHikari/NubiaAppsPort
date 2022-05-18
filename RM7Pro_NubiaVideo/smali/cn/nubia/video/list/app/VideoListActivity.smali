.class public Lcn/nubia/video/list/app/VideoListActivity;
.super Lcn/nubia/video/player/b;
.source "SourceFile"

# interfaces
.implements Lb/a/b/c/b/k$b;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->b:Z

    return-void
.end method

.method static synthetic h(Lcn/nubia/video/list/app/VideoListActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/video/list/app/VideoListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/app/VideoListActivity;->k()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f090031

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/list/app/VideoListActivity$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/list/app/VideoListActivity$a;-><init>(Lcn/nubia/video/list/app/VideoListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090033

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/list/app/VideoListActivity$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/app/VideoListActivity$b;-><init>(Lcn/nubia/video/list/app/VideoListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "showPermissionDialog"

    invoke-static {v0, v2, v1}, Lb/a/b/d/e;->L(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private l()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showPermissionDialog"

    const/4 v3, 0x1

    .line 4
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method private m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DataFragment"

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lb/a/b/c/b/f;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lb/a/b/c/b/f;->E(I)Z

    :cond_0
    const v1, 0x7f090077

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/list/ui/j;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcn/nubia/video/list/ui/j;->v(I)V

    :cond_1
    return-void
.end method

.method public d(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f090077

    .line 2
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/list/ui/j;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/j;->u()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/video/player/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c002e

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/list/app/VideoListActivity;->m()V

    .line 4
    invoke-static {p0}, Lb/a/b/a/k/a;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/list/app/VideoListActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/list/app/VideoListActivity;->j()V

    .line 7
    :cond_0
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p0}, Lcn/nubia/video/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    return-void

    :cond_1
    const v0, 0x7f090077

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance p1, Lb/a/b/c/b/f;

    invoke-direct {p1}, Lb/a/b/c/b/f;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "videoEditorMode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {p1, v1}, Lb/a/b/c/b/f;->G(Z)V

    .line 15
    invoke-virtual {p1, v0}, Lb/a/b/c/b/f;->H(Z)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "DataFragment"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_4
    :try_start_0
    const-string p1, "VideoListActivity"

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ver@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/app/VideoListActivity;->a:Landroid/app/Dialog;

    .line 4
    :cond_0
    invoke-static {}, Lb/a/b/c/a/d;->c()Lb/a/b/c/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/b/c/a/d;->a()V

    .line 5
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/b/c/a/b;->a()V

    .line 6
    invoke-super {p0}, Lcn/nubia/video/player/b;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090077

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/list/ui/j;

    .line 3
    instance-of v1, v0, Lcn/nubia/video/list/ui/g;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcn/nubia/video/list/ui/g;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/video/list/ui/f;->L(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 4

    const-string v0, "xiawenjun"

    const-string v1, "listactivity onMenuOpened"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090077

    .line 3
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/list/ui/j;

    .line 4
    instance-of v2, v1, Lcn/nubia/video/list/ui/i;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "listactivity onMenuOpened 1"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    check-cast v1, Lcn/nubia/video/list/ui/i;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/video/list/ui/i;->y(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    instance-of v2, v1, Lcn/nubia/video/list/ui/h;

    if-eqz v2, :cond_3

    const-string v2, "listactivity onMenuOpened 2"

    .line 9
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    check-cast v1, Lcn/nubia/video/list/ui/h;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/video/list/ui/h;->A(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 11
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/player/b;->onResume()V

    return-void
.end method
