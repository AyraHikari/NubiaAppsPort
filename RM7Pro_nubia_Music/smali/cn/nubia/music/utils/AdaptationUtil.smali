.class public Lcn/nubia/music/utils/AdaptationUtil;
.super Ljava/lang/Object;
.source "AdaptationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 22
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 23
    :cond_0
    const-string v0, "context or intent == null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 27
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 10
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 11
    :cond_0
    const-string v0, "context or intent == null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 19
    :goto_0
    return-void

    .line 14
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
