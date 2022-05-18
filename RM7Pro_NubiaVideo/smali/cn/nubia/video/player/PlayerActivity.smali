.class public Lcn/nubia/video/player/PlayerActivity;
.super Lcn/nubia/video/player/b;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private b:Lcn/nubia/video/player/d;

.field private c:Ljava/lang/String;

.field private d:Lcn/nubia/video/player/VideoView;

.field e:Z

.field private f:Landroid/net/Uri;

.field private g:Lcn/nubia/video/commonui/app/b;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcn/nubia/video/commonui/app/a;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->e:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcn/nubia/video/player/PlayerActivity;->h:Z

    .line 5
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->j:Z

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->l:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->m:Z

    return-void
.end method

.method static synthetic h(Lcn/nubia/video/player/PlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PlayerActivity;->m()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/video/player/PlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PlayerActivity;->q()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/video/player/PlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/PlayerActivity;->i:Z

    return p1
.end method

.method static synthetic k(Lcn/nubia/video/player/PlayerActivity;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PlayerActivity;->d:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f0c006c

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    const v2, 0x7f090050

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    const v1, 0x7f090031

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/player/PlayerActivity$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/PlayerActivity$a;-><init>(Lcn/nubia/video/player/PlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090033

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/player/PlayerActivity$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/PlayerActivity$b;-><init>(Lcn/nubia/video/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->g:Lcn/nubia/video/commonui/app/b;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "showPermissionDialog"

    invoke-static {v0, v2, v1}, Lb/a/b/d/e;->L(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private p()Z
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

.method private q()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcn/nubia/video/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->i:Z

    .line 4
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->r()V

    return-void
.end method


# virtual methods
.method public n()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public o()Lcn/nubia/video/player/VideoView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->d:Lcn/nubia/video/player/VideoView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->b:Lcn/nubia/video/player/d;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/video/player/m;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/video/player/d;->z()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->d:Lcn/nubia/video/player/VideoView;

    iget-boolean v1, p0, Lcn/nubia/video/player/PlayerActivity;->e:Z

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->N(Z)V

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->k:Lcn/nubia/video/commonui/app/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/a;->h(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "PlayerActivity"

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/video/player/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004c

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ver@"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "P875N02"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "com.android.systemui"

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dock_non_resizeble_failed_to_dock_text"

    const-string v4, "string"

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v2, "NameNotfoundException"

    .line 11
    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->a:Landroid/support/v4/app/FragmentManager;

    .line 14
    iput-boolean v1, p0, Lcn/nubia/video/player/PlayerActivity;->i:Z

    .line 15
    iput-boolean v1, p0, Lcn/nubia/video/player/PlayerActivity;->j:Z

    const p1, 0x7f090165

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/VideoView;

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->d:Lcn/nubia/video/player/VideoView;

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->f:Landroid/net/Uri;

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "is_game_highlights"

    const-string v1, ""

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->l:Ljava/lang/String;

    const-string v0, "cn.nubia.gamehighlights"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/video/player/PlayerActivity;->m:Z

    .line 21
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/video/player/PIPPlayer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 22
    invoke-static {p0}, Lb/a/b/a/k/a;->c(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcn/nubia/video/player/PlayerActivity;->h:Z

    .line 23
    new-instance p1, Lcn/nubia/video/commonui/app/a;

    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/video/player/PlayerActivity;->m:Z

    invoke-direct {p1, v1, p0, v2}, Lcn/nubia/video/commonui/app/a;-><init>(Landroid/view/View;Landroid/app/Activity;Z)V

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->k:Lcn/nubia/video/commonui/app/a;

    .line 24
    invoke-static {p0, v0}, Lb/a/b/d/e;->O(Landroid/app/Activity;Z)V

    .line 25
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcn/nubia/video/player/PlayerActivity;->h:Z

    if-eqz p1, :cond_2

    .line 26
    invoke-direct {p0}, Lcn/nubia/video/player/PlayerActivity;->p()Z

    move-result p1

    if-nez p1, :cond_3

    .line 27
    :cond_2
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->i:Z

    .line 28
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->r()V

    .line 29
    :cond_3
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_video"

    invoke-virtual {p1, v0, v1}, Lb/a/b/a/j/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/player/b;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->b:Lcn/nubia/video/player/d;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/nubia/video/player/d;->A(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/nubia/video/player/b;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->e:Z

    .line 3
    invoke-static {p0}, Lb/a/b/d/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "latest_video_uri"

    invoke-static {v0, v2, v1}, Lb/a/b/d/e;->M(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "secure_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->e:Z

    .line 2
    invoke-super {p0}, Lcn/nubia/video/player/b;->onResume()V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->k:Lcn/nubia/video/commonui/app/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/nubia/video/commonui/app/a;->g()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "secure_camera"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/video/player/PlayerActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/player/PlayerActivity;->l()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 9
    iget-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->j:Z

    if-nez v0, :cond_2

    .line 10
    iput-boolean v1, p0, Lcn/nubia/video/player/PlayerActivity;->j:Z

    .line 11
    invoke-static {p0}, Lcn/nubia/video/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 13
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->i:Z

    if-nez v0, :cond_4

    .line 14
    iput-boolean v1, p0, Lcn/nubia/video/player/PlayerActivity;->i:Z

    .line 15
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->r()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->e:Z

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->d:Lcn/nubia/video/player/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/PlayerActivity;->s(Landroid/net/Uri;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->d:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/PlayerActivity$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/PlayerActivity$c;-><init>(Lcn/nubia/video/player/PlayerActivity;)V

    iget-object v2, p0, Lcn/nubia/video/player/PlayerActivity;->c:Ljava/lang/String;

    const-string v3, "SimplePlayerFragment"

    if-ne v2, v3, :cond_1

    const-wide/16 v2, 0xfa

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x3c

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method s(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lb/a/b/d/e;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "player_type"

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v1, v0}, Lb/a/b/d/e;->L(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 p1, 0x67

    .line 5
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/PlayerActivity;->u(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/b/d/e;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v1, v0}, Lb/a/b/d/e;->L(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 p1, 0x66

    .line 8
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/PlayerActivity;->u(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v1, v0}, Lb/a/b/d/e;->L(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 p1, 0x65

    .line 10
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/PlayerActivity;->u(I)V

    :goto_0
    return-void
.end method

.method public t(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->f:Landroid/net/Uri;

    return-void
.end method

.method u(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->b:Lcn/nubia/video/player/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance p1, Lcn/nubia/video/player/nubiaplayer/b;

    invoke-direct {p1}, Lcn/nubia/video/player/nubiaplayer/b;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->b:Lcn/nubia/video/player/d;

    const-string p1, "NubiaPlayerFragment"

    .line 5
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 6
    :pswitch_1
    new-instance p1, Lcn/nubia/video/player/m;

    invoke-direct {p1}, Lcn/nubia/video/player/m;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->b:Lcn/nubia/video/player/d;

    const-string p1, "SimplePlayerFragment"

    .line 7
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 8
    :pswitch_2
    new-instance p1, Lcn/nubia/video/player/j;

    invoke-direct {p1}, Lcn/nubia/video/player/j;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->b:Lcn/nubia/video/player/d;

    const-string p1, "PlayerFragment"

    .line 9
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->c:Ljava/lang/String;

    :goto_0
    const p1, 0x7f09009f

    .line 10
    iget-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->b:Lcn/nubia/video/player/d;

    iget-object v2, p0, Lcn/nubia/video/player/PlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 11
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
