.class final Lcn/nubia/touping/HDMIReceiver$1;
.super Landroid/os/Handler;
.source "HDMIReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/HDMIReceiver;
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
    .line 57
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    const-string v2, "[HDMIReceiver]"

    const-string v3, "handleMessage"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 65
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 66
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_0

    .line 67
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPrramWiredForGameCollectedData(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
