.class Lcn/nubia/deskclock/CountDownRingService$2;
.super Landroid/content/BroadcastReceiver;
.source "CountDownRingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/CountDownRingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/CountDownRingService;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/CountDownRingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownRingService$2;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string v1, ""

    .line 101
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.systemui.headsup_released"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pkgname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    const-string v2, "CountDownRingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;; packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "com.android.systemui.headsup_released"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cn.nubia.deskclock.preset"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcn/nubia/deskclock/CountDownRingService$2;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v3, p0, Lcn/nubia/deskclock/CountDownRingService$2;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v3}, Lcn/nubia/deskclock/CountDownRingService;->access$000(Lcn/nubia/deskclock/CountDownRingService;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/CountDownRingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    iget-object v2, p0, Lcn/nubia/deskclock/CountDownRingService$2;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v3, p0, Lcn/nubia/deskclock/CountDownRingService$2;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v3}, Lcn/nubia/deskclock/CountDownRingService;->access$100(Lcn/nubia/deskclock/CountDownRingService;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/CountDownRingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    :cond_1
    const/16 v2, 0x457

    invoke-static {p1, v2}, Lcn/nubia/deskclock/model/Alarms;->cleanNotificationWhenGameMode(Landroid/content/Context;I)V

    .line 114
    return-void
.end method
