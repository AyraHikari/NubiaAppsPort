.class public Lcn/nubia/touping/Utils/DTSUtils;
.super Ljava/lang/Object;
.source "DTSUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DTSUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentDtsSwitch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 15
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "DTS_BYPASS"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    .local v1, "currentDts":Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const/4 v2, 0x1

    .line 19
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static turnOffDts(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 38
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "DTS_BYPASS=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 39
    const-string v1, "DTSUtils"

    const-string v2, "turnOffDts"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static turnOnDts(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 29
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "DTS_BYPASS=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 30
    const-string v1, "DTSUtils"

    const-string v2, "turnOnDts"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
