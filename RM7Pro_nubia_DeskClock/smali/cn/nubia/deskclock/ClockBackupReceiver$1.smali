.class Lcn/nubia/deskclock/ClockBackupReceiver$1;
.super Ljava/lang/Object;
.source "ClockBackupReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ClockBackupReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ClockBackupReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ClockBackupReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ClockBackupReceiver;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->this$0:Lcn/nubia/deskclock/ClockBackupReceiver;

    iput-object p2, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p5, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "com.nubia.deskclock.REFRESH_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/model/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 33
    iget-object v0, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 36
    iget-object v0, p0, Lcn/nubia/deskclock/ClockBackupReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 37
    return-void
.end method
