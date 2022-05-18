.class public Lcn/nubia/weather/ui/activity/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/BaseFragmentActivity$ActivityHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragmentActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    return-void
.end method

.method public isForeground()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 112
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 113
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 116
    .local v2, "cpn":Landroid/content/ComponentName;
    const-string v1, ""

    .line 117
    .local v1, "className":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 124
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cpn":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iput-object p0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity$ActivityHandler;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity$ActivityHandler;-><init>(Lcn/nubia/weather/ui/activity/BaseFragmentActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 36
    :cond_0
    invoke-static {p0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->addActivityHandler(Landroid/os/Handler;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 42
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    :cond_0
    invoke-static {p0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->removeActivityHandler(Landroid/os/Handler;)V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 52
    invoke-static {p0}, Lcn/nubia/weather/umeng/UmengUtils;->onPause(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 58
    invoke-static {p0}, Lcn/nubia/weather/umeng/UmengUtils;->onResume(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public openNetOrGps(Z)V
    .locals 0
    .param p1, "isNetOpened"    # Z

    .prologue
    .line 110
    return-void
.end method
