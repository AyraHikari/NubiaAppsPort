.class final Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$8;
.super Landroid/os/Handler;
.source "NubiaPCMirror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;
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
    .line 671
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 674
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 675
    const-string v1, "NubiaPCMirror"

    const-string v2, "handleMessage"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 678
    const/4 v1, 0x1

    invoke-static {v1}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->sendTouPingNumByMirrorStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
