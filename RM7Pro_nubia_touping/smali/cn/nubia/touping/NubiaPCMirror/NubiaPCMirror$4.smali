.class final Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$4;
.super Ljava/lang/Object;
.source "NubiaPCMirror.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->sendPhoneWidthAndHeight(Landroid/content/Context;)V
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
    .line 231
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v3

    .line 236
    .local v3, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    const-string v6, "NubiaPCMirror777888"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendPhoneWidthAndHeight:  mPcConnection = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-eqz v3, :cond_0

    .line 238
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$4;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/touping/Utils/PhoneInfo;->getWidth(Landroid/content/Context;)I

    move-result v5

    .line 239
    .local v5, "width":I
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$4;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/touping/Utils/PhoneInfo;->getHeight(Landroid/content/Context;)I

    move-result v2

    .line 240
    .local v2, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createPhoneWidthAndHeightStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v1

    .line 242
    .local v1, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v3, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v2    # "height":I
    .end local v3    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
