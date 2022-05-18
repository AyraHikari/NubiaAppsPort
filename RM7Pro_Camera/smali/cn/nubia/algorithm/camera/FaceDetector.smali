.class public Lcn/nubia/algorithm/camera/FaceDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FaceDetector"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcn/nubia/algorithm/camera/FaceDetector;->a:J

    return-void
.end method

.method private static native detectFace2(JLandroid/graphics/Bitmap;IIII)[D
.end method

.method private static native estimateHeadPose2(JLandroid/graphics/Bitmap;IIII)[D
.end method

.method private static native init(Ljava/lang/String;)J
.end method

.method private static native unInit(J)V
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 23
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/FaceDetector;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "/system/etc/faceclassifier"

    .line 24
    invoke-static {v0}, Lcn/nubia/algorithm/camera/FaceDetector;->init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/algorithm/camera/FaceDetector;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;IIII)[D
    .locals 7

    monitor-enter p0

    .line 40
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/FaceDetector;->a:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcn/nubia/algorithm/camera/FaceDetector;->detectFace2(JLandroid/graphics/Bitmap;IIII)[D

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/FaceDetector;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 30
    invoke-static {v0, v1}, Lcn/nubia/algorithm/camera/FaceDetector;->unInit(J)V

    .line 31
    iput-wide v2, p0, Lcn/nubia/algorithm/camera/FaceDetector;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/graphics/Bitmap;IIII)[D
    .locals 7

    monitor-enter p0

    .line 48
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/FaceDetector;->a:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcn/nubia/algorithm/camera/FaceDetector;->estimateHeadPose2(JLandroid/graphics/Bitmap;IIII)[D

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
