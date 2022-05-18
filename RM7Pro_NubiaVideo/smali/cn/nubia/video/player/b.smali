.class public Lcn/nubia/video/player/b;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/video/player/b$a;

    invoke-direct {v0, p0, p0}, Lcn/nubia/video/player/b$a;-><init>(Lcn/nubia/video/player/b;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/b;->g()V

    .line 3
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/b/a/j/a;->j(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/a/b/a/j/a;->d:Z

    .line 3
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/b/a/j/a;->n()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method
