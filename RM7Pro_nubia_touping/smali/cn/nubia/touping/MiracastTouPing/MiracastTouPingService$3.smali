.class Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;
.super Landroid/content/BroadcastReceiver;
.source "MiracastTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;


# direct methods
.method constructor <init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 604
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 607
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "action":Ljava/lang/String;
    const-string v2, "MiracastTouPingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed mReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 611
    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v1

    .line 612
    .local v1, "hasConnected":Z
    const-string v2, "MiracastTouPingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-eqz v1, :cond_1

    .line 614
    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->startMiracastTouPing(Landroid/content/Context;)V

    .line 615
    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1500(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    .line 624
    .end local v1    # "hasConnected":Z
    :cond_0
    :goto_0
    return-void

    .line 617
    .restart local v1    # "hasConnected":Z
    :cond_1
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->getMiracastTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    goto :goto_0

    .line 621
    .end local v1    # "hasConnected":Z
    :cond_2
    const-string v2, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    goto :goto_0
.end method
