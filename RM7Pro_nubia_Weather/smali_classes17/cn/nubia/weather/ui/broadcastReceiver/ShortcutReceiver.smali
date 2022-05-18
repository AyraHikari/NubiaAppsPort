.class public Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;
    }
.end annotation


# static fields
.field private static final MESSAGE_LAUNHCER_FANCYICON_CHECK:I = 0x1

.field private static final MESSAGE_THEME_CHANGED_BROADCAST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShortcutReceiver"


# instance fields
.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    new-instance v0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;-><init>(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->context:Landroid/content/Context;

    .line 25
    const-string v1, "com.nubia.themechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v1, "cn.nubia.launcher.fancyicon.check"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
