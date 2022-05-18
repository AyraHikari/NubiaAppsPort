.class public Lcn/nubia/camera/au/a/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/au/a/a$a;
    }
.end annotation


# instance fields
.field a:[B

.field b:I

.field c:I

.field d:Ljava/lang/Integer;

.field e:Z

.field private f:Lcn/nubia/camera/au/a/a$a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/au/a/a$a;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/camera/au/a/a;->a:[B

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/au/a/a;->d:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/a;->e:Z

    .line 31
    iput-object p1, p0, Lcn/nubia/camera/au/a/a;->f:Lcn/nubia/camera/au/a/a$a;

    return-void
.end method

.method private e()V
    .locals 11

    .line 64
    monitor-enter p0

    .line 65
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/au/a/a;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/au/a/a;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/au/a/a;->d:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "CutoutThread"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a/a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit p0

    return-void

    .line 77
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "CutoutThread"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a/a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/au/a/a;->f:Lcn/nubia/camera/au/a/a$a;

    if-eqz v0, :cond_3

    .line 80
    invoke-interface {v0}, Lcn/nubia/camera/au/a/a$a;->a()V

    .line 83
    :cond_3
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    iget-object v1, p0, Lcn/nubia/camera/au/a/a;->a:[B

    invoke-direct {v0, v1}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcn/nubia/camera/au/a/a;->a:[B

    .line 85
    iget v1, p0, Lcn/nubia/camera/au/a/a;->b:I

    iget v2, p0, Lcn/nubia/camera/au/a/a;->c:I

    invoke-static {v0, v1, v2}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v1

    .line 86
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 87
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->c()[I

    move-result-object v0

    .line 88
    iget v2, p0, Lcn/nubia/camera/au/a/a;->b:I

    iget v3, p0, Lcn/nubia/camera/au/a/a;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcn/nubia/camera/au/a/a;->f:Lcn/nubia/camera/au/a/a$a;

    if-eqz v2, :cond_4

    .line 91
    invoke-interface {v2, v0}, Lcn/nubia/camera/au/a/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/au/a/a;->f()Landroid/util/Size;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    .line 96
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/4 v2, 0x1

    .line 97
    invoke-static {v0, v9, v10, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v2, v9, v10

    .line 100
    new-array v8, v2, [B

    .line 101
    iget-object v2, p0, Lcn/nubia/camera/au/a/a;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2, v8}, Lcom/nubia/cosmos/Cosmos;->getSky(Landroid/graphics/Bitmap;I[B)Z

    move-result v4

    const-string v0, "CutoutThread"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSky "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcn/nubia/camera/au/a/a;->f:Lcn/nubia/camera/au/a/a$a;

    if-eqz v3, :cond_7

    iget-boolean v0, p0, Lcn/nubia/camera/au/a/a;->e:Z

    if-nez v0, :cond_7

    if-eqz v4, :cond_6

    .line 107
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 109
    array-length v2, v0

    new-array v5, v2, [B

    const/4 v2, 0x0

    .line 110
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x2

    .line 111
    aget-byte v6, v0, v3

    aput-byte v6, v5, v2

    add-int/lit8 v6, v2, 0x1

    .line 112
    aget-byte v7, v0, v6

    aput-byte v7, v5, v6

    .line 113
    aget-byte v6, v0, v2

    aput-byte v6, v5, v3

    add-int/lit8 v3, v2, 0x3

    .line 114
    aget-byte v6, v0, v3

    aput-byte v6, v5, v3

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 117
    :cond_5
    iget-object v3, p0, Lcn/nubia/camera/au/a/a;->f:Lcn/nubia/camera/au/a/a$a;

    iget v6, p0, Lcn/nubia/camera/au/a/a;->b:I

    iget v7, p0, Lcn/nubia/camera/au/a/a;->c:I

    invoke-interface/range {v3 .. v10}, Lcn/nubia/camera/au/a/a$a;->a(Z[BII[BII)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 120
    iget v6, p0, Lcn/nubia/camera/au/a/a;->b:I

    iget v7, p0, Lcn/nubia/camera/au/a/a;->c:I

    invoke-interface/range {v3 .. v10}, Lcn/nubia/camera/au/a/a$a;->a(Z[BII[BII)V

    .line 123
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 77
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private f()Landroid/util/Size;
    .locals 5

    .line 128
    iget v0, p0, Lcn/nubia/camera/au/a/a;->b:I

    iget v1, p0, Lcn/nubia/camera/au/a/a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    iget v1, p0, Lcn/nubia/camera/au/a/a;->b:I

    mul-int/lit16 v1, v1, 0x438

    div-int/2addr v1, v0

    .line 130
    iget v2, p0, Lcn/nubia/camera/au/a/a;->c:I

    mul-int/lit16 v2, v2, 0x438

    div-int/2addr v2, v0

    int-to-double v0, v1

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v3

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x10

    .line 132
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 47
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/a;->e:Z

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/a/a;->d:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([BII)V
    .locals 0

    monitor-enter p0

    .line 35
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/au/a/a;->a:[B

    .line 36
    iput p2, p0, Lcn/nubia/camera/au/a/a;->b:I

    .line 37
    iput p3, p0, Lcn/nubia/camera/au/a/a;->c:I

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/au/a/a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 144
    iget v0, p0, Lcn/nubia/camera/au/a/a;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 148
    iget v0, p0, Lcn/nubia/camera/au/a/a;->c:I

    return v0
.end method

.method public run()V
    .locals 5

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/au/a/a;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CutoutThread"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/au/a/a;->e()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/au/a/a;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .line 57
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 58
    throw v0
.end method
