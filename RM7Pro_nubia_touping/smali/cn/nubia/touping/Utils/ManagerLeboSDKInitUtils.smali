.class public Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;
.super Landroid/os/Handler;
.source "ManagerLeboSDKInitUtils.java"


# static fields
.field private static final delayTime:I = 0xc8

.field private static final sitchStatusKey:Ljava/lang/String; = "sitchStatusKey"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private hasInitMessage:Z

.field private initBindTimeLeboSDK:J

.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private unInitBindTimeLeboSDK:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "reference"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    const-string v0, "ManagerLeboSDKInitUtils"

    iput-object v0, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->TAG:Ljava/lang/String;

    .line 25
    iput-wide v2, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->initBindTimeLeboSDK:J

    .line 26
    iput-wide v2, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->unInitBindTimeLeboSDK:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->hasInitMessage:Z

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->mReference:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v2, "ManagerLeboSDKInitUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 38
    iget-object v2, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 39
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 40
    invoke-static {v0}, Lcn/nubia/touping/Utils/LeBoOprate;->reInitLeboSDK(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const-string v2, "ManagerLeboSDKInitUtils"

    const-string v3, "exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->unInitBindTimeLeboSDK:J

    iget-wide v4, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->initBindTimeLeboSDK:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getStatusBrowse()I

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->unbindLeBoSDK()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public openSwitch(Z)V
    .locals 4
    .param p1, "switchFlag"    # Z

    .prologue
    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "what":I
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->initBindTimeLeboSDK:J

    .line 62
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    return-void

    .line 60
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;->unInitBindTimeLeboSDK:J

    goto :goto_0
.end method
