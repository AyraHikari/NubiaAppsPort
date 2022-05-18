.class public Lcn/nubia/notepad/NotePadImagePreviewActivity;
.super Landroid/app/Activity;
.source "NotePadImagePreviewActivity.java"


# instance fields
.field private view:Lcn/nubia/notepad/view/ZoomImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hideNavigation()V
    .locals 2

    .prologue
    .line 63
    invoke-static {p0}, Lcn/nubia/notepad/utils/Util;->getNavigationStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImagePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1306

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 71
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/notepad/SysApplication;->addActivity(Landroid/app/Activity;)V

    .line 23
    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/NotePadImagePreviewActivity;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImagePreviewActivity;->hideNavigation()V

    .line 25
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "picResourceFilePath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "picResourceFilePath":Ljava/lang/String;
    const v1, 0x7f0f00b3

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/NotePadImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/view/ZoomImageView;

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImagePreviewActivity;->view:Lcn/nubia/notepad/view/ZoomImageView;

    .line 27
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImagePreviewActivity;->view:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/view/ZoomImageView;->setUrl(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImagePreviewActivity;->view:Lcn/nubia/notepad/view/ZoomImageView;

    new-instance v2, Lcn/nubia/notepad/NotePadImagePreviewActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadImagePreviewActivity$1;-><init>(Lcn/nubia/notepad/NotePadImagePreviewActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/ZoomImageView;->setOnScaleListener(Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;)V

    .line 35
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImagePreviewActivity;->view:Lcn/nubia/notepad/view/ZoomImageView;

    new-instance v2, Lcn/nubia/notepad/NotePadImagePreviewActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadImagePreviewActivity$2;-><init>(Lcn/nubia/notepad/NotePadImagePreviewActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/ZoomImageView;->setOnOneTouchListener(Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->removeActivity(Landroid/app/Activity;)V

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->onPause(Landroid/content/Context;)V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0}, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->onResume(Landroid/content/Context;)V

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    return-void
.end method
