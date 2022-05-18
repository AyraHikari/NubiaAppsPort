.class public Lcn/nubia/video/player/d;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/e;


# instance fields
.field protected a:Lcn/nubia/video/player/c;

.field protected b:Landroid/app/Activity;

.field protected c:Landroid/net/Uri;

.field protected d:Lcn/nubia/video/player/o;

.field private e:Lcn/nubia/video/commonui/app/d;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/player/d;->e:Lcn/nubia/video/commonui/app/d;

    return-void
.end method

.method static synthetic u(Lcn/nubia/video/player/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/d;->v()V

    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/d;->e:Lcn/nubia/video/commonui/app/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/d;->e:Lcn/nubia/video/commonui/app/d;

    :cond_0
    return-void
.end method

.method private w(Lcn/nubia/video/commonui/app/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/d;->e:Lcn/nubia/video/commonui/app/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/d;->e:Lcn/nubia/video/commonui/app/d;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/d;->e:Lcn/nubia/video/commonui/app/d;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public A(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/d;->d:Lcn/nubia/video/player/o;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/nubia/video/player/o;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/d;->d:Lcn/nubia/video/player/o;

    invoke-virtual {p1}, Lcn/nubia/video/player/o;->e()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/d;->c()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public B(Z)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public C()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/d;->B(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    invoke-virtual {v0}, Lcn/nubia/video/player/c;->r()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/d;->d:Lcn/nubia/video/player/o;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/o;->j(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getVideoWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->getVideoHeight()I

    move-result v1

    mul-int/2addr v0, v1

    const v1, 0x7e9000

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/d;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.intent.videoeditor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcn/nubia/video/player/d;->c:Landroid/net/Uri;

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    const v1, 0x7f0f00e3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->a0()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->T()V

    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    const v2, 0x7f0f003d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    const v2, 0x7f0f003e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5
    new-instance v1, Lcn/nubia/video/commonui/app/b$a;

    iget-object v2, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f003f

    .line 6
    invoke-virtual {v1, v2}, Lcn/nubia/video/commonui/app/b$a;->k(I)Lcn/nubia/video/commonui/app/b$a;

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v2}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->getPlayerType()I

    move-result v2

    new-instance v3, Lcn/nubia/video/player/d$a;

    invoke-direct {v3, p0}, Lcn/nubia/video/player/d$a;-><init>(Lcn/nubia/video/player/d;)V

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;->j([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    const v2, 0x7f0f0036

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/nubia/video/player/d$b;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/d$b;-><init>(Lcn/nubia/video/player/d;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/video/commonui/app/b$a;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 9
    invoke-direct {p0, v1}, Lcn/nubia/video/player/d;->w(Lcn/nubia/video/commonui/app/b$a;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x4000000

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "video/*"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    const-class p3, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/video/player/d;->B(Z)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/d;->d:Lcn/nubia/video/player/o;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/nubia/video/player/o;->e()V

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/c;->p()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/d;->d:Lcn/nubia/video/player/o;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcn/nubia/video/player/o;->e()V

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/c;->s()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    invoke-virtual {v0}, Lcn/nubia/video/player/c;->l()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/c;->n()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    invoke-virtual {v0}, Lcn/nubia/video/player/c;->o()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public x(Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x429c0000    # 78.0f

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42a00000    # 80.0f

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    :goto_0
    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public y(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    .line 2
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/video/player/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    invoke-virtual {v0}, Lcn/nubia/video/player/c;->r()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/video/player/d;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcn/nubia/video/player/d;->onFinish()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/video/player/d;->f:J

    .line 6
    new-instance v0, Lcn/nubia/video/player/p;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0080

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/p;->g(I)V

    :goto_0
    return-void
.end method
