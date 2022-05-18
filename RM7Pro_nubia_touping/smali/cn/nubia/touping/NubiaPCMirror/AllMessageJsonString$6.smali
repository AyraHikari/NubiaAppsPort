.class final Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$6;
.super Ljava/lang/Object;
.source "AllMessageJsonString.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCheckInfoWithPC(Landroid/content/Context;)V
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
    .line 217
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 221
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v2

    .line 222
    .local v2, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    if-eqz v2, :cond_0

    .line 223
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$6;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createAllMessageStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v1

    .line 225
    .local v1, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v2, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v1    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    sput-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->hasConnectedSuccessStatus:Z

    .line 233
    .end local v2    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const-string v4, "AllMessageJsonString"

    const-string v5, "sendCurrentPhoneRateNum exception"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    sput-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->hasConnectedSuccessStatus:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    sput-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->hasConnectedSuccessStatus:Z

    throw v4
.end method
