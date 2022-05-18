.class public Lcn/nubia/camera/r/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/r$a;,
        Lcn/nubia/camera/r/r$b;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaCodec;

.field private b:Landroid/media/MediaExtractor;

.field private c:Z

.field private d:Lcn/nubia/camera/r/r$b;

.field private e:Ljava/io/FileDescriptor;

.field private f:Landroid/view/Surface;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;Landroid/view/Surface;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/camera/r/r;->c:Z

    .line 32
    iput v0, p0, Lcn/nubia/camera/r/r;->g:I

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/r/r;->e:Ljava/io/FileDescriptor;

    .line 41
    iput-object p2, p0, Lcn/nubia/camera/r/r;->f:Landroid/view/Surface;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/r;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcn/nubia/camera/r/r;->g:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/r/r;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/camera/r/r;->a:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/r/r;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/camera/r/r;->b:Landroid/media/MediaExtractor;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/r/r;)Ljava/io/FileDescriptor;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/r/r;->e:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method private a(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)Z
    .locals 9

    const-wide/16 v0, 0x2710

    .line 172
    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    const-string v0, "VideoDecoder"

    const/4 v8, 0x0

    if-ltz v2, :cond_1

    .line 177
    invoke-virtual {p2, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 179
    invoke-virtual {p1, v1, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-gez v4, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    move-object v1, p2

    .line 181
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 p1, 0x1

    const-string p2, "media eos"

    .line 183
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, p1

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 188
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 190
    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 193
    :goto_2
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3

    .line 197
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error inputBufferIndex : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v8
.end method

.method static synthetic a(Lcn/nubia/camera/r/r;Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/r/r;->a(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/r/r;)Landroid/media/MediaExtractor;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/r/r;->b:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/r/r;)Landroid/view/Surface;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/r/r;->f:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/r/r;->a:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/r/r;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcn/nubia/camera/r/r;->c:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/r/r;)I
    .locals 2

    .line 16
    iget v0, p0, Lcn/nubia/camera/r/r;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/r/r;->g:I

    return v0
.end method

.method static synthetic g(Lcn/nubia/camera/r/r;)Lcn/nubia/camera/r/r$b;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/r/r;->d:Lcn/nubia/camera/r/r$b;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/r/r;)I
    .locals 0

    .line 16
    iget p0, p0, Lcn/nubia/camera/r/r;->g:I

    return p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 49
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/r/r;->c:Z

    .line 50
    new-instance v0, Lcn/nubia/camera/r/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/r/r$a;-><init>(Lcn/nubia/camera/r/r;Lcn/nubia/camera/r/r$1;)V

    .line 51
    invoke-virtual {v0}, Lcn/nubia/camera/r/r$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcn/nubia/camera/r/r$b;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/r/r;->d:Lcn/nubia/camera/r/r$b;

    return-void
.end method
