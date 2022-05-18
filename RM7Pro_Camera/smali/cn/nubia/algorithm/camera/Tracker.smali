.class public Lcn/nubia/algorithm/camera/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Tracker"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native init(Landroid/graphics/Bitmap;IIII)J
.end method

.method static native release(J)V
.end method

.method static native update(JLandroid/graphics/Bitmap;)Landroid/graphics/Rect;
.end method


# virtual methods
.method public declared-synchronized a(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 4

    monitor-enter p0

    .line 33
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/Tracker;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p1, "Tracker"

    const-string v0, "not init"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 35
    monitor-exit p0

    return-object p1

    .line 37
    :cond_0
    :try_start_1
    invoke-static {v0, v1, p1}, Lcn/nubia/algorithm/camera/Tracker;->update(JLandroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 4

    monitor-enter p0

    .line 25
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/Tracker;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string p1, "Tracker"

    const-string p2, "repeat init"

    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Lcn/nubia/algorithm/camera/Tracker;->init(Landroid/graphics/Bitmap;IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/algorithm/camera/Tracker;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 4

    monitor-enter p0

    .line 21
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/Tracker;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 41
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/Tracker;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "Tracker"

    const-string v1, "not init"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lcn/nubia/algorithm/camera/Tracker;->release(J)V

    .line 46
    iput-wide v2, p0, Lcn/nubia/algorithm/camera/Tracker;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
