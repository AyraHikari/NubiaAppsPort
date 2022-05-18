.class public Lcn/nubia/deskclock/ClockBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClockBackupReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockBackupReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/deskclock/ClockBackupReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 20
    .local v4, "result":Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 21
    .local v5, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 23
    if-eqz v2, :cond_0

    .line 24
    const-string v0, "ClockBackupReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClockBackupReceiver.onReceive() ---> action = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/ClockBackupReceiver$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/ClockBackupReceiver$1;-><init>(Lcn/nubia/deskclock/ClockBackupReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
