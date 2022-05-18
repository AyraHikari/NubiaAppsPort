.class public Lzte/com/cn/drm/JBDrmImpl;
.super Ljava/lang/Object;
.source "JBDrmImpl.java"


# static fields
.field public static final DRM_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final RIGHTS_DISPLAY:I = 0x7

.field public static final RIGHTS_EXECUTE:I = 0x6

.field public static final RIGHTS_PLAY:I = 0x1

.field public static final RIGHTS_PRINT:I

.field private static mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionDisplay()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public static getDrmInputStream(Lcn/nubia/gallery3d/data/MediaItem;)Ljava/io/InputStream;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getDrmInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 117
    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getDrmLicenseInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 40
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const-string p0, "application/vnd.oma.drm.message"

    .line 44
    invoke-virtual {v1, p1, p0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "Drm !!!!"

    const/16 p1, 0xc8

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc9

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xca

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xcb

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :try_start_0
    const-class p0, Landroid/drm/DrmManagerClient;

    const-string p1, "release"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSDRightsUri(Lcn/nubia/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDrmCanShareFile(Lcn/nubia/gallery3d/data/MediaItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 162
    :cond_0
    sget-object v1, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_1

    const-string v2, "application/vnd.oma.drm.message"

    invoke-virtual {v1, p0, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isFLFile(Lcn/nubia/gallery3d/data/MediaItem;)Z
    .locals 2

    .line 171
    sget-object v0, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isProtected(Ljava/lang/String;)Z
    .locals 0

    .line 155
    invoke-static {p0}, Lzte/com/cn/drm/JBDrmImpl;->isDrmFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static resume(Landroid/content/Context;)V
    .locals 1

    .line 197
    sget-object v0, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    :cond_0
    return-void
.end method

.method public static startDrmService(Landroid/content/Context;)V
    .locals 1

    .line 181
    sget-object v0, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public static startDrmUsage(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    return-void
.end method

.method public static stopDrmService()V
    .locals 1

    .line 189
    sget-object v0, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    const/4 v0, 0x0

    .line 191
    sput-object v0, Lzte/com/cn/drm/JBDrmImpl;->mDrmClient:Landroid/drm/DrmManagerClient;

    :cond_0
    return-void
.end method

.method public static stopDrmUsage(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    return-void
.end method

.method public static verifyRights(Ljava/lang/String;I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
