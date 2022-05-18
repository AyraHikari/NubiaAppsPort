.class public Lcn/nubia/deskclock/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 43
    const-string v1, "AlarmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmReceiver.onReceive() ---> action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    invoke-static {p1}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 50
    const-class v1, Lcn/nubia/deskclock/AlarmIntentService;

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 52
    return-void

    .line 46
    :cond_0
    const-string v1, "AlarmReceiver"

    const-string v2, "AlarmReceiver.onReceive() ---> action = null"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
