.class final Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$2;
.super Ljava/lang/Object;
.source "AllMessageJsonString.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendSmallMirrorStatus(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v3

    .line 126
    .local v3, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    if-eqz v3, :cond_0

    .line 127
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getSmallMirrorStatus()Z

    move-result v2

    .line 128
    .local v2, "isSmallMirror":Z
    if-eqz v2, :cond_1

    const-string v5, "1"

    .line 129
    .local v5, "value":Ljava/lang/String;
    :goto_0
    const-string v6, "smallMirrorStatus"

    invoke-static {v6, v5}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createAllMessageStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v1

    .line 131
    .local v1, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v3, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V

    .line 137
    .end local v1    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v2    # "isSmallMirror":Z
    .end local v3    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v2    # "isSmallMirror":Z
    .restart local v3    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :cond_1
    const-string v5, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v2    # "isSmallMirror":Z
    .end local v3    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    const-string v6, "AllMessageJsonString"

    const-string v7, "sendSmallMirrorStatus exception"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
