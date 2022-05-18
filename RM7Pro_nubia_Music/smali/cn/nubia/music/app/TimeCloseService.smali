.class public Lcn/nubia/music/app/TimeCloseService;
.super Landroid/app/Service;
.source "TimeCloseService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CLOSE_TIMER_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.closetimer"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isRunMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcn/nubia/music/app/TimeCloseService;->stopSelf()V

    .line 62
    const-string v0, "nubiamusic_timer"

    invoke-static {v1, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 63
    invoke-static {p0}, Lcn/nubia/music/third/StatisticsEvent;->onKillProcess(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->exitApp()V

    .line 68
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    const-string v0, "nubiamusic_timer"

    invoke-static {v1, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/nubia/music/app/TimeCloseService;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcn/nubia/music/app/TimeCloseService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    const-string v0, "nubiamusic_timer"

    invoke-static {v2, v0, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 75
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 28
    const-string v0, "onStartCommand"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 29
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v4

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    const-string v1, "cn.nubia.music.preset.musicservicecommand.closetimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "delay"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 36
    const-string v2, "CLOSE_TIMER_ACTION"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcn/nubia/music/app/TimeCloseService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    iget-object v2, p0, Lcn/nubia/music/app/TimeCloseService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 39
    iget-object v3, p0, Lcn/nubia/music/app/TimeCloseService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/app/TimeCloseService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method
