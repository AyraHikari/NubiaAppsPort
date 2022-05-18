.class public Lcn/nubia/gallery3d/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Gallery"

    const/4 v1, 0x3

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 43
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 31
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 73
    sget-boolean v0, Lcn/nubia/gallery3d/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
