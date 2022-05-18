.class Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;
.super Ljava/lang/Object;
.source "NubiaPCMirror.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    .prologue
    .line 843
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 846
    const-string v9, "NubiaPCMirror987"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;->val$uri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-nez v9, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, "urlName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 850
    const-string v9, "NubiaPCMirror654456"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "urlName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v9, "NubiaPCMirror"

    const-string v10, "changlei123345 onChange"

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v9, "app_mirror_status"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 853
    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isLandForNubiaTouPingRoration(Landroid/content/Context;)Z

    move-result v3

    .line 854
    .local v3, "isLand":Z
    const-string v9, "NubiaPCMirror654456"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "urlName isLand = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setsmallMirrorRotationStatus(Z)V

    .line 856
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getSmallMirrorStatus()Z

    move-result v4

    .line 857
    .local v4, "isSmall":Z
    const-string v9, "NubiaPCMirror987"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set isSmall = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  begin"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setisSmallTouPingStatus(Z)V

    .line 859
    const-string v9, "NubiaPCMirror987"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set isSmall = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  end"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    if-nez v4, :cond_3

    .line 861
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getInstance()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 862
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getInstance()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->resetRotation2ScreenInfo()V

    .line 891
    :cond_2
    :goto_1
    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendSmallMirrorStatus(Landroid/content/Context;)V

    .line 893
    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v9}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->outExpandingSionModeForApplication(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 866
    :cond_3
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    move-result-object v9

    if-eqz v9, :cond_2

    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v9, :cond_2

    .line 867
    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "app_mirror_list"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, "packageAndActivityName":Ljava/lang/String;
    const-string v6, "smallMirror"

    .line 869
    .local v6, "packageName":Ljava/lang/String;
    const-string v0, "smallMirror"

    .line 870
    .local v0, "ActivityName":Ljava/lang/String;
    if-eqz v5, :cond_6

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 871
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 872
    .local v2, "index":I
    if-lez v2, :cond_4

    .line 873
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 875
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_5

    .line 876
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 877
    if-eqz v0, :cond_5

    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 878
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    :cond_5
    if-lez v2, :cond_6

    .line 883
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 887
    .end local v2    # "index":I
    :cond_6
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    move-result-object v9

    invoke-virtual {v9, v6, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->sendCurrentPackageNameAndActivityName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 894
    .end local v0    # "ActivityName":Ljava/lang/String;
    .end local v3    # "isLand":Z
    .end local v4    # "isSmall":Z
    .end local v5    # "packageAndActivityName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_7
    const-string v9, "nubia_sPipLand"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 895
    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isLandForNubiaTouPingRoration(Landroid/content/Context;)Z

    move-result v3

    .line 896
    .restart local v3    # "isLand":Z
    const-string v9, "NubiaPCMirror654456"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "urlName comein isLand = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setsmallMirrorRotationStatus(Z)V

    goto/16 :goto_0

    .line 898
    .end local v3    # "isLand":Z
    :cond_8
    const-string v9, "nubia_db_game_keys"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 899
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->sendGameSpaceStatus2PC()V

    goto/16 :goto_0

    .line 900
    :cond_9
    const-string v9, "nubia_screen_off_tp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 901
    sget-object v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "nubia_screen_off_tp"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 902
    .local v1, "currentMode":I
    if-nez v1, :cond_a

    .line 903
    invoke-static {}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->outExpandingSionMode()V

    .line 905
    :cond_a
    if-lez v1, :cond_b

    const/4 v7, 0x1

    .line 906
    .local v7, "screenOffMirrorStatus":Z
    :cond_b
    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendScreenOffMirrorStatus(Z)V

    goto/16 :goto_0

    .line 907
    .end local v1    # "currentMode":I
    .end local v7    # "screenOffMirrorStatus":Z
    :cond_c
    const-string v9, "app_mirror_entering"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 908
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setapp_mirror_entering()V

    .line 909
    const-string v9, "NubiaPCMirror"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app_mirror_entering ScreenRecorder.getInstance().getapp_mirror_entering() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getapp_mirror_entering()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
