.class public Lcn/nubia/music/utils/NewDrmProxy;
.super Ljava/lang/Object;
.source "NewDrmProxy.java"


# static fields
.field private static mInstance:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    .line 14
    return-void
.end method

.method public static bSetAsRingtone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 45
    invoke-static {p0}, Lcn/nubia/music/utils/NewDrmProxy;->getInstance(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canTransfer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 39
    invoke-static {p0}, Lcn/nubia/music/utils/NewDrmProxy;->getInstance(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstance(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    const-class v1, Lcn/nubia/music/utils/NewDrmProxy;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    .line 21
    :cond_0
    monitor-exit v1

    .line 22
    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isDrmFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {p0}, Lcn/nubia/music/utils/NewDrmProxy;->getInstance(Landroid/content/Context;)V

    .line 27
    if-nez p1, :cond_0

    .line 35
    :goto_0
    return v0

    .line 31
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    sget-object v1, Lcn/nubia/music/utils/NewDrmProxy;->mInstance:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method
