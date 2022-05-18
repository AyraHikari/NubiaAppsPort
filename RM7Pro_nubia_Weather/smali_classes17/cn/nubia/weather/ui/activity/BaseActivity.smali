.class public Lcn/nubia/weather/ui/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;-><init>(Lcn/nubia/weather/ui/activity/BaseActivity;Lcn/nubia/weather/ui/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 21
    const-string v0, "BaseActivity"

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method protected doHandlerMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iput-object p0, p0, Lcn/nubia/weather/ui/activity/BaseActivity;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->addActivityHandler(Landroid/os/Handler;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->removeActivityHandler(Landroid/os/Handler;)V

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 47
    invoke-static {p0}, Lcn/nubia/weather/umeng/UmengUtils;->onPause(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    invoke-static {p0}, Lcn/nubia/weather/umeng/UmengUtils;->onResume(Landroid/content/Context;)V

    .line 54
    return-void
.end method
