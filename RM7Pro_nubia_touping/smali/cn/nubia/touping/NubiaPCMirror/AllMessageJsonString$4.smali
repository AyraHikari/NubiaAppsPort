.class final Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$4;
.super Ljava/lang/Object;
.source "AllMessageJsonString.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendScreenOffMirrorStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$status:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 177
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$4;->val$status:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v2

    .line 182
    .local v2, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    if-eqz v2, :cond_0

    .line 183
    iget-boolean v5, p0, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$4;->val$status:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 184
    .local v3, "statusValue":I
    :goto_0
    const-string v5, "screenoffMirrorStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createAllMessageStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v1

    .line 186
    .local v1, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v2, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v2    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v3    # "statusValue":I
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 183
    .restart local v2    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 188
    .end local v2    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string v5, "AllMessageJsonString"

    const-string v6, "sendScreenOffMirrorStatus exception"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
