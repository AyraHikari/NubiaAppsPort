.class final Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$9;
.super Ljava/lang/Object;
.source "NubiaPCMirror.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->sendGameSpaceStatus2PC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 777
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v3

    .line 778
    .local v3, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    if-eqz v3, :cond_0

    .line 779
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->access$000()Z

    move-result v2

    .line 780
    .local v2, "isGameSpaceStatus":Z
    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createGameSpacesStatus(Z)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v1

    .line 781
    .local v1, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v3, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v1    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v2    # "isGameSpaceStatus":Z
    .end local v3    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :cond_0
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
