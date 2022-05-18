.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;
.super Landroid/os/Handler;
.source "NubiaWirelessTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 600
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .line 601
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 602
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 605
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 606
    .local v1, "bundle":Landroid/os/Bundle;
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 677
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 612
    :sswitch_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    .line 613
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 615
    .local v0, "activityname":Ljava/lang/String;
    const-wide/16 v8, 0x96

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getSmallMirrorStatus()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v7, v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$400(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v7, v8, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$500(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 620
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->sendCurrentPackageNameAndActivityName(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7, v0, v8}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->setCurrentMirrorPackageName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 635
    :cond_1
    :goto_2
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v7, v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$700(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    .line 636
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$802(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;J)J

    goto :goto_0

    .line 616
    :catch_0
    move-exception v3

    .line 617
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 626
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isSmall_Mittot_Status()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 627
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$600(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    .line 629
    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    const-string v8, ""

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7, v8, v9}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->setCurrentMirrorPackageName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 631
    :catch_1
    move-exception v3

    .line 632
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 639
    .end local v0    # "activityname":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :sswitch_2
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    .line 640
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v7, v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$700(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    .line 641
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isSmall_Mittot_Status()Z

    move-result v7

    if-nez v7, :cond_0

    .line 642
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 646
    :sswitch_3
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 647
    .local v4, "startPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 649
    .end local v4    # "startPkg":Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 650
    .local v5, "stopPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 652
    .end local v5    # "stopPkg":Ljava/lang/String;
    :sswitch_5
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    goto/16 :goto_0

    .line 655
    :sswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 656
    .local v6, "value":Z
    goto/16 :goto_0

    .line 660
    .end local v6    # "value":Z
    :sswitch_7
    const-string v7, "deviceIdle"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 661
    .local v2, "dozeState":Z
    goto/16 :goto_0

    .line 665
    .end local v2    # "dozeState":Z
    :sswitch_8
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isSmall_Mittot_Status()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 666
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$600(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    .line 667
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    const-string v8, ""

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7, v8, v9}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->setCurrentMirrorPackageName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 670
    const-string v7, "NubiaWirelessTouPingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adddot_come in small_status collectAPP:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x63 -> :sswitch_8
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x834 -> :sswitch_3
        0x835 -> :sswitch_4
        0x837 -> :sswitch_7
    .end sparse-switch
.end method
