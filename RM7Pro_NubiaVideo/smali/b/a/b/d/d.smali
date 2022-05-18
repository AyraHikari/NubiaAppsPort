.class public Lb/a/b/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/drm/DrmManagerClient;


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lb/a/b/d/d;->a:Landroid/drm/DrmManagerClient;

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

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lb/a/b/d/d;->a:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lb/a/b/d/d;->a:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lb/a/b/d/d;->a:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lb/a/b/d/d;->a:Landroid/drm/DrmManagerClient;

    :cond_0
    return-void
.end method
