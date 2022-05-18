.class public Lcn/nubia/algorithm/camera/FreezeVideoJni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FreezeVideo"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZIII)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->d:I

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->e:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init FreezeVideoAlgorithm. registration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFrameNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeVideoJni"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-boolean p1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->b:Z

    .line 32
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->init(ZIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    return-void
.end method

.method private static native buildBgModel(J[Ljava/nio/ByteBuffer;[III)Z
.end method

.method private static native extractFg(J[Ljava/nio/ByteBuffer;[III)[B
.end method

.method private static native init(ZIII)J
.end method

.method private static native preBuildModel(J[Ljava/nio/ByteBuffer;[III)Z
.end method

.method private static native registration(JLjava/nio/ByteBuffer;III[D[I)F
.end method

.method private static native release(J)Z
.end method


# virtual methods
.method public a(Lcn/nubia/algorithm/utils/a;III[D[I)F
    .locals 9

    .line 62
    iget-object v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-wide v1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-string p1, "FreezeVideoJni"

    const-string p2, "registration fail, algorithm has been released"

    .line 64
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 65
    monitor-exit v0

    return p1

    .line 67
    :cond_0
    iget v3, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->d:I

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    iget-object v3, p1, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->registration(JLjava/nio/ByteBuffer;III[D[I)F

    move-result p1

    .line 70
    iget-object p2, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->c:Ljava/lang/Object;

    monitor-enter p2

    .line 71
    :try_start_1
    iget p3, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->d:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->d:I

    .line 72
    iget-object p3, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 68
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->b:Z

    return v0
.end method

.method public a([Lcn/nubia/algorithm/utils/a;[III)Z
    .locals 9

    .line 78
    iget-object v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-wide v1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "FreezeVideoJni"

    const-string p2, "buildBackgroundModel fail, algorithm has been released"

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v0

    return v2

    .line 83
    :cond_0
    array-length v1, p1

    new-array v5, v1, [Ljava/nio/ByteBuffer;

    .line 84
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 85
    aget-object v1, p1, v2

    iget-object v1, v1, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    aput-object v1, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-wide v3, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->buildBgModel(J[Ljava/nio/ByteBuffer;[III)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 6

    .line 40
    iget-object v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :goto_0
    :try_start_0
    iget v1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v1, :cond_0

    .line 43
    :try_start_1
    iget-object v1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    :try_start_3
    iget-wide v2, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-string v2, "FreezeVideoJni"

    const-string v3, "release fail, algorithm has been released"

    .line 50
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 51
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v2

    :cond_1
    :try_start_5
    const-string v2, "FreezeVideoJni"

    const-string v3, "release FreezeVideoAlgorithm"

    .line 53
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-wide v2, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    invoke-static {v2, v3}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->release(J)Z

    move-result v2

    .line 55
    iput-wide v4, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    .line 56
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v2

    :catchall_0
    move-exception v2

    .line 57
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    :catchall_1
    move-exception v1

    .line 58
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public b([Lcn/nubia/algorithm/utils/a;[III)Z
    .locals 9

    .line 92
    iget-object v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-wide v1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "FreezeVideoJni"

    const-string p2, "preBuildModel fail, algorithm has been released"

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v0

    return v2

    .line 97
    :cond_0
    array-length v1, p1

    new-array v5, v1, [Ljava/nio/ByteBuffer;

    .line 98
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 99
    aget-object v1, p1, v2

    iget-object v1, v1, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    aput-object v1, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-wide v3, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->preBuildModel(J[Ljava/nio/ByteBuffer;[III)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c([Lcn/nubia/algorithm/utils/a;[III)[B
    .locals 8

    .line 106
    iget-object v0, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-wide v1, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string p1, "FreezeVideoJni"

    const-string p2, "extractForeground fail, algorithm has been released"

    .line 108
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 109
    monitor-exit v0

    return-object p1

    .line 111
    :cond_0
    array-length v1, p1

    new-array v4, v1, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 112
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 113
    aget-object v2, p1, v1

    iget-object v2, v2, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-wide v2, p0, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a:J

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->extractFg(J[Ljava/nio/ByteBuffer;[III)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
