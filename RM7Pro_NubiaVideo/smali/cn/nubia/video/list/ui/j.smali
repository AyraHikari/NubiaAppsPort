.class public abstract Lcn/nubia/video/list/ui/j;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field protected b:Lb/a/b/c/b/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "ViewBaseFragment"

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setHasOptionsMenu(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "DataFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 4
    check-cast p1, Lb/a/b/c/b/f;

    iput-object p1, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->a:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->a:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract u()V
.end method

.method public v(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/j;->u()V

    return-void
.end method
