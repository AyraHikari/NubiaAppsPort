.class public abstract Lcn/nubia/touping/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0c000e

    const/16 v1, 0x400

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {p0}, Lcn/nubia/touping/Utils/OtherAppEnterUtils;->isFromGameSpace(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 17
    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 18
    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 19
    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 20
    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/touping/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    goto :goto_0
.end method
