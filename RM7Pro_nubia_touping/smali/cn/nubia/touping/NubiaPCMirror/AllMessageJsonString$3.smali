.class final Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$3;
.super Ljava/lang/Object;
.source "AllMessageJsonString.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentPrivateModeStatus(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v2

    .line 149
    .local v2, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    const/4 v3, 0x0

    .line 151
    .local v3, "switchStatus":Z
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v6, :cond_2

    .line 153
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$3;->val$context:Landroid/content/Context;

    const-string v7, "PRIVATE_MODE_USB"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 160
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 161
    if-eqz v3, :cond_3

    const-string v5, "1"

    .line 162
    .local v5, "value":Ljava/lang/String;
    :goto_1
    const-string v6, "private_mode_switch"

    invoke-static {v6, v5}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "text":Ljava/lang/String;
    const-string v6, "AllMessageJsonString"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "432321 text = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createAllMessageStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v1

    .line 165
    .local v1, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v2, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V

    .line 171
    .end local v1    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v2    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v3    # "switchStatus":Z
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 156
    .restart local v2    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .restart local v3    # "switchStatus":Z
    :cond_2
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$3;->val$context:Landroid/content/Context;

    const-string v7, "PRIVATE_MODE_WIRELESS"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 161
    :cond_3
    const-string v5, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v2    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v3    # "switchStatus":Z
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const-string v6, "AllMessageJsonString"

    const-string v7, "sendCurrentPrivateModeStatus exception"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
