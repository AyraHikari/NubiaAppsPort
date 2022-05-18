.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;
.super Ljava/lang/Object;
.source "NubiaWirelessTouPingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->sendCurrentPackageNameAndActivityName(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 723
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 727
    :try_start_0
    const-string v9, "NubiaWirelessTouPingService765"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "111 send current packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  activityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$activityName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 729
    :cond_0
    const-string v9, "NubiaWirelessTouPingService765"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_1
    :goto_0
    return-void

    .line 733
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 734
    .local v0, "currentTime":J
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1100()J

    move-result-wide v10

    sub-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x7530

    cmp-long v9, v10, v12

    if-ltz v9, :cond_4

    .line 735
    :cond_3
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1200(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    .line 736
    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1102(J)J

    .line 739
    :cond_4
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-nez v9, :cond_1

    .line 743
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v6

    .line 744
    .local v6, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    const-string v9, "NubiaWirelessTouPingService765"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "222 mPcConnection = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    if-eqz v6, :cond_1

    .line 746
    const/4 v4, 0x0

    .line 747
    .local v4, "isGamePackageName":Z
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 748
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 749
    const/4 v4, 0x1

    .line 752
    :cond_5
    sget-object v9, Lcn/nubia/touping/TouPingApplication;->sContext:Landroid/content/Context;

    invoke-static {v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 753
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v8, 0x2

    .line 754
    .local v8, "voiceBy":I
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v9, :cond_9

    .line 755
    const-string v9, "SOUND_SOURCE_USB"

    const/4 v10, 0x2

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 760
    :goto_1
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    if-nez v9, :cond_a

    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    iget-object v10, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 761
    const/4 v9, 0x1

    sput-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    .line 762
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v9, :cond_6

    if-eq v8, v14, :cond_7

    :cond_6
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v9, :cond_8

    if-ne v8, v14, :cond_8

    .line 763
    :cond_7
    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->changedSoundForNubiaMirror(I)V

    .line 772
    :cond_8
    :goto_2
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    iget-object v10, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1302(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;

    .line 773
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    iget-object v10, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$activityName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1402(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;

    .line 774
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1500(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Z

    move-result v5

    .line 775
    .local v5, "isLockedScreen":Z
    const-string v9, "NubiaWirelessTouPingService765"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "111 send 2current packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  activityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$activityName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isGamePackageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isLockedScreen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    iget-object v10, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$activityName:Ljava/lang/String;

    invoke-static {v9, v10, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createPackageNameAndActivityName(Ljava/lang/String;Ljava/lang/String;ZZ)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v3

    .line 777
    .local v3, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v6, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 780
    .end local v0    # "currentTime":J
    .end local v3    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v4    # "isGamePackageName":Z
    .end local v5    # "isLockedScreen":Z
    .end local v6    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v8    # "voiceBy":I
    :catch_0
    move-exception v2

    .line 781
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 757
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentTime":J
    .restart local v4    # "isGamePackageName":Z
    .restart local v6    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .restart local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v8    # "voiceBy":I
    :cond_9
    :try_start_1
    const-string v9, "SOUND_SOURCE"

    const/4 v10, 0x2

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    goto/16 :goto_1

    .line 765
    :cond_a
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    iget-object v10, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 766
    const/4 v9, 0x0

    sput-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    .line 767
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v9, :cond_b

    if-eq v8, v14, :cond_c

    :cond_b
    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v9, :cond_8

    if-ne v8, v14, :cond_8

    .line 768
    :cond_c
    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->changedSoundForNubiaMirror(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
