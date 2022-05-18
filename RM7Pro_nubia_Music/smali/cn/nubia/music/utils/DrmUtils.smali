.class public Lcn/nubia/music/utils/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCanNotShare(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->isDrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->canTransfer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 13
    :cond_0
    return v0
.end method

.method public static isDRMFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->isDrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 21
    :cond_0
    return v0
.end method

.method public static isHasVerifyRights(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHasVerifyRights path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->bSetAsRingtone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHasVerifyRights  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 32
    return v0
.end method
