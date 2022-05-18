.class final Lcn/nubia/touping/Utils/TouPingProvider$1;
.super Landroid/os/Handler;
.source "TouPingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/TouPingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Looper;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    const-string v1, "TouPingProvider"

    const-string v2, "handleMessage"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 95
    const/4 v1, 0x1

    invoke-static {v1}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->sendTouPingNumByMirrorStatus(Z)V

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 98
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/touping/Utils/TouPingProvider;->access$000(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
