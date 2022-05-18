.class public Lcn/nubia/camera/b/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/b/g$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/nubia/camera/v/b;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/b/g$a;

.field private e:Z

.field private f:Z

.field private g:J

.field private h:Lcn/nubia/camera/v/b$c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/b/g$a;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcn/nubia/camera/b/g;->a:Z

    .line 18
    iput-boolean v0, p0, Lcn/nubia/camera/b/g;->e:Z

    .line 19
    iput-boolean v0, p0, Lcn/nubia/camera/b/g;->f:Z

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcn/nubia/camera/b/g;->g:J

    .line 98
    new-instance v0, Lcn/nubia/camera/b/g$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/g$1;-><init>(Lcn/nubia/camera/b/g;)V

    iput-object v0, p0, Lcn/nubia/camera/b/g;->h:Lcn/nubia/camera/v/b$c;

    .line 27
    iput-object p1, p0, Lcn/nubia/camera/b/g;->c:Lcn/nubia/camera/ad/a;

    .line 28
    iput-object p2, p0, Lcn/nubia/camera/b/g;->d:Lcn/nubia/camera/b/g$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/g;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcn/nubia/camera/b/g;->f:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 109
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/b/g;->e:Z

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 114
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/b/g;->a:Z

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 12

    const-string v0, "FaceDetectionThread"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/b/g;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcn/nubia/camera/v/b;

    sget-object v1, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v2, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/b;->a(Z)V

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/b/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 37
    new-instance v0, Lcn/nubia/algorithm/camera/FaceDetector;

    invoke-direct {v0}, Lcn/nubia/algorithm/camera/FaceDetector;-><init>()V

    .line 38
    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/FaceDetector;->a()V

    .line 40
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/camera/b/g;->a:Z

    if-nez v1, :cond_6

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/b/g;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 44
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 46
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 48
    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcn/nubia/camera/b/g;->e:Z

    .line 51
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 54
    iget-wide v4, p0, Lcn/nubia/camera/b/g;->g:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    iput-wide v2, p0, Lcn/nubia/camera/b/g;->g:J

    .line 59
    iget-object v2, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    iget-object v3, p0, Lcn/nubia/camera/b/g;->h:Lcn/nubia/camera/v/b$c;

    invoke-virtual {v2, v3}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 60
    monitor-enter p0

    .line 61
    :goto_2
    :try_start_3
    iget-boolean v2, p0, Lcn/nubia/camera/b/g;->f:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcn/nubia/camera/b/g;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    .line 63
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 65
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 68
    :cond_3
    iput-boolean v1, p0, Lcn/nubia/camera/b/g;->f:Z

    .line 69
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 71
    iget-object v2, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v3}, Lcn/nubia/camera/v/b;->g()I

    move-result v4

    .line 73
    iget-object v3, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v3}, Lcn/nubia/camera/v/b;->h()I

    move-result v5

    .line 74
    iget-object v3, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v3}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v2

    mul-int v6, v4, v5

    mul-int/lit8 v7, v6, 0x4

    if-eq v3, v7, :cond_4

    goto :goto_0

    .line 81
    :cond_4
    new-array v3, v6, [I

    move v7, v1

    :goto_3
    if-ge v1, v6, :cond_5

    .line 83
    aget-byte v8, v2, v7

    const/16 v9, 0xff

    and-int/2addr v8, v9

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v2, v10

    and-int/2addr v10, v9

    add-int/lit8 v11, v7, 0x2

    aget-byte v11, v2, v11

    and-int/2addr v11, v9

    invoke-static {v9, v8, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    aput v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, 0x4

    goto :goto_3

    .line 85
    :cond_5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 87
    div-int/lit8 v6, v4, 0xa

    div-int/lit8 v7, v5, 0xa

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/algorithm/camera/FaceDetector;->a(Landroid/graphics/Bitmap;IIII)[D

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/b/g;->d:Lcn/nubia/camera/b/g$a;

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Lcn/nubia/camera/b/g$a;->a()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 69
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 51
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 93
    :cond_6
    iget-object v1, p0, Lcn/nubia/camera/b/g;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->a()V

    .line 94
    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/FaceDetector;->b()V

    const-string v0, "FaceDetectionThread"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/b/g;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
