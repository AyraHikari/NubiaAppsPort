.class Lcn/nubia/deskclock/AlarmInitReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmInitReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmInitReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmInitReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmInitReceiver;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->this$0:Lcn/nubia/deskclock/AlarmInitReceiver;

    iput-object p2, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 43
    iget-object v6, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 44
    .local v5, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 45
    iget-object v6, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 47
    const-string v6, "AlarmInitReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive() ---> action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    const-string v6, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 53
    .local v2, "isLockedBoot":Z
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 54
    .local v4, "isNormalBoot":Z
    iget-object v6, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/deskclock/util/Utils;->checkPasswordToUnLock(Landroid/content/Context;)Z

    move-result v1

    .line 55
    .local v1, "checkPasswordToUnLock":Z
    const/4 v3, 0x0

    .line 56
    .local v3, "isLowMBoot":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v6, v7, :cond_0

    .line 57
    const/4 v3, 0x1

    .line 59
    :cond_0
    if-nez v2, :cond_2

    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 60
    :cond_2
    iget-object v6, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcn/nubia/deskclock/AlarmJobService;->startJobService(Landroid/content/Context;I)V

    .line 65
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    iget-object v6, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v6}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 67
    const-string v6, "AlarmInitReceiver"

    const-string v7, "  finished"

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 49
    .end local v1    # "checkPasswordToUnLock":Z
    .end local v2    # "isLockedBoot":Z
    .end local v3    # "isLowMBoot":Z
    .end local v4    # "isNormalBoot":Z
    :cond_4
    const-string v6, "AlarmInitReceiver"

    const-string v7, "onReceive() ---> action = null"

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .restart local v1    # "checkPasswordToUnLock":Z
    .restart local v2    # "isLockedBoot":Z
    .restart local v3    # "isLowMBoot":Z
    .restart local v4    # "isNormalBoot":Z
    :cond_5
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 63
    :cond_6
    iget-object v6, p0, Lcn/nubia/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcn/nubia/deskclock/AlarmJobService;->startJobService(Landroid/content/Context;I)V

    goto :goto_1
.end method
