.class public Lb/a/a/d/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/media/MediaExtractor;

.field private b:[B

.field c:I

.field final synthetic d:Lb/a/a/d/a;


# direct methods
.method public constructor <init>(Lb/a/a/d/a;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lb/a/a/d/a$b;->b:[B

    .line 4
    iput v0, p0, Lb/a/a/d/a$b;->c:I

    .line 5
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    .line 6
    invoke-static {p1}, Lb/a/a/d/a;->a(Lb/a/a/d/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-static {p1}, Lb/a/a/d/a;->b(Lb/a/a/d/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p1}, Lb/a/a/d/a;->q(Lb/a/a/d/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Lb/a/a/d/a;->q(Lb/a/a/d/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lb/a/a/d/a;->b(Lb/a/a/d/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :cond_1
    :goto_0
    invoke-direct {p0}, Lb/a/a/d/a$b;->b()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/d/a$b;->b:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x7

    .line 2
    aput-byte v2, v0, v1

    const/16 v1, 0x50

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 3
    aput-byte v1, v0, v2

    .line 4
    iget v1, p0, Lb/a/a/d/a$b;->c:I

    shr-int/lit8 v2, v1, 0xb

    const/16 v3, 0x80

    add-int/2addr v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    and-int/lit16 v2, v1, 0x7ff

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x4

    .line 5
    aput-byte v2, v0, v3

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x5

    shl-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    .line 6
    aput-byte v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, -0x4

    .line 7
    aput-byte v2, v0, v1

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 3
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 5
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v2}, Lb/a/a/d/a;->r(Lb/a/a/d/a;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/16 v0, 0x4000

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->s(Lb/a/a/d/a;)I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->t(Lb/a/a/d/a;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5
    :goto_0
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 6
    invoke-static {v4}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v4

    invoke-interface {v4}, Lb/a/a/c/k;->d()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lb/a/a/d/a$b;->a()V

    .line 8
    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 9
    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 10
    iput v7, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 11
    iput-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 12
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v4

    iget-object v8, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 14
    invoke-static {v8}, Lb/a/a/d/a;->w(Lb/a/a/d/a;)Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-interface {v4, v0, v2, v8}, Lb/a/a/c/k;->h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    .line 17
    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v4, 0x7

    .line 18
    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 20
    iget-object v2, p0, Lb/a/a/d/a$b;->b:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string v0, "AudioLocalSource"

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headPresentationTimeUs ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-wide v8, v5

    .line 22
    :goto_1
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->s(Lb/a/a/d/a;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 23
    invoke-static {v0}, Lb/a/a/d/a;->x(Lb/a/a/d/a;)J

    move-result-wide v10

    cmp-long v0, v10, v5

    if-lez v0, :cond_3

    .line 24
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->x(Lb/a/a/d/a;)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 25
    :cond_3
    :goto_2
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->y(Lb/a/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->t(Lb/a/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->c(Lb/a/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 28
    :cond_4
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->e(Lb/a/a/d/a;)J

    move-result-wide v10

    cmp-long v0, v10, v5

    if-ltz v0, :cond_6

    .line 29
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->e(Lb/a/a/d/a;)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 30
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    cmp-long v0, v10, v5

    if-gtz v0, :cond_5

    .line 31
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->e(Lb/a/a/d/a;)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 32
    :cond_5
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    const-wide/16 v10, -0x1

    invoke-static {v0, v10, v11}, Lb/a/a/d/a;->f(Lb/a/a/d/a;J)J

    .line 33
    :cond_6
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 34
    invoke-static {v0}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v0

    const/16 v4, 0x14

    invoke-interface {v0, v4}, Lb/a/a/c/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v10, 0xa

    .line 36
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 37
    :cond_7
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 38
    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v1, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 39
    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    .line 40
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 41
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->i(Lb/a/a/d/a;)J

    move-result-wide v10

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v10, v12

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->k(Lb/a/a/d/a;)J

    move-result-wide v12

    cmp-long v4, v10, v12

    const/4 v10, 0x4

    if-gtz v4, :cond_c

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 42
    invoke-static {v4}, Lb/a/a/d/a;->l(Lb/a/a/d/a;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_3

    .line 43
    :cond_8
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v4, :cond_b

    .line 44
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->s(Lb/a/a/d/a;)I

    move-result v4

    const/4 v11, 0x2

    if-ne v4, v11, :cond_9

    .line 45
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->i(Lb/a/a/d/a;)J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-static {v0, v10, v11}, Lb/a/a/d/a;->j(Lb/a/a/d/a;J)J

    .line 46
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_2

    .line 47
    :cond_9
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->n(Lb/a/a/d/a;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 48
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4, v5, v6}, Lb/a/a/d/a;->j(Lb/a/a/d/a;J)J

    .line 49
    iput v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 50
    iput v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 51
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4, v2}, Lb/a/a/d/a;->d(Lb/a/a/d/a;Z)Z

    .line 52
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 53
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lb/a/a/c/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_2

    .line 54
    :cond_a
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v5, v6}, Lb/a/a/d/a;->j(Lb/a/a/d/a;J)J

    .line 55
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_2

    .line 56
    :cond_b
    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 57
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->y(Lb/a/a/d/a;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->e(Lb/a/a/d/a;)J

    move-result-wide v10

    cmp-long v4, v10, v5

    if-gez v4, :cond_14

    .line 58
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lb/a/a/c/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_4

    :cond_c
    :goto_3
    const-string v4, "AudioLocalSource"

    const-string v11, "need decode read EOS break"

    .line 59
    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4, v7}, Lb/a/a/d/a;->m(Lb/a/a/d/a;Z)Z

    .line 61
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4, v5, v6}, Lb/a/a/d/a;->j(Lb/a/a/d/a;J)J

    .line 62
    iput v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 63
    iput v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 64
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 65
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->g(Lb/a/a/d/a;)Lb/a/a/c/c;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lb/a/a/c/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 66
    :cond_d
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->n(Lb/a/a/d/a;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 67
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v7}, Lb/a/a/d/a;->z(Lb/a/a/d/a;Z)Z

    goto/16 :goto_5

    .line 68
    :cond_e
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v2}, Lb/a/a/d/a;->d(Lb/a/a/d/a;Z)Z

    .line 69
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_2

    .line 70
    :cond_f
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 71
    invoke-static {v0}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/c/k;->d()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_2

    .line 72
    :cond_10
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 73
    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v1, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 74
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->i(Lb/a/a/d/a;)J

    move-result-wide v10

    iget-object v4, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    .line 75
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 76
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->o(Lb/a/a/d/a;)J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-lez v4, :cond_12

    .line 77
    iput v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 78
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v1}, Lb/a/a/d/a;->w(Lb/a/a/d/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/c/k;->f(Ljava/lang/String;)V

    .line 80
    :cond_11
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v7}, Lb/a/a/d/a;->z(Lb/a/a/d/a;Z)Z

    goto :goto_5

    .line 81
    :cond_12
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v4, :cond_13

    .line 82
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v8, v9}, Lb/a/a/d/a;->j(Lb/a/a/d/a;J)J

    .line 83
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_2

    .line 84
    :cond_13
    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 85
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 86
    iget-object v4, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v4}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v4

    iget-object v10, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    .line 87
    invoke-static {v10}, Lb/a/a/d/a;->w(Lb/a/a/d/a;)Ljava/lang/String;

    move-result-object v10

    .line 88
    invoke-interface {v4, v1, v0, v10}, Lb/a/a/c/k;->h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 89
    :cond_14
    :goto_4
    iget-object v0, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_2

    .line 91
    :cond_15
    :goto_5
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v3}, Lb/a/a/d/a;->h(Lb/a/a/d/a;Lb/a/a/c/c;)Lb/a/a/c/c;

    .line 92
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v3}, Lb/a/a/d/a;->v(Lb/a/a/d/a;Lb/a/a/c/k;)Lb/a/a/c/k;

    .line 93
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->p(Lb/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_1
    iget-object v1, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_16

    const-string v1, "AudioLocalSource"

    const-string v2, "AudioLocalSource release"

    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 97
    iput-object v3, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    .line 98
    :cond_16
    monitor-exit v0

    goto :goto_6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    iget-object v1, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v1}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 100
    iget-object v1, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v1}, Lb/a/a/d/a;->u(Lb/a/a/d/a;)Lb/a/a/c/k;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/c/k;->a()V

    .line 101
    :cond_17
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v3}, Lb/a/a/d/a;->h(Lb/a/a/d/a;Lb/a/a/c/c;)Lb/a/a/c/c;

    .line 103
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0, v3}, Lb/a/a/d/a;->v(Lb/a/a/d/a;Lb/a/a/c/k;)Lb/a/a/c/k;

    .line 104
    iget-object v0, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v0}, Lb/a/a/d/a;->p(Lb/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_18

    const-string v1, "AudioLocalSource"

    const-string v2, "AudioLocalSource release"

    .line 106
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 108
    iput-object v3, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    .line 109
    :cond_18
    monitor-exit v0

    :goto_6
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 110
    :goto_7
    iget-object v1, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v1, v3}, Lb/a/a/d/a;->h(Lb/a/a/d/a;Lb/a/a/c/c;)Lb/a/a/c/c;

    .line 111
    iget-object v1, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v1, v3}, Lb/a/a/d/a;->v(Lb/a/a/d/a;Lb/a/a/c/k;)Lb/a/a/c/k;

    .line 112
    iget-object v1, p0, Lb/a/a/d/a$b;->d:Lb/a/a/d/a;

    invoke-static {v1}, Lb/a/a/d/a;->p(Lb/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 113
    :try_start_4
    iget-object v2, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_19

    const-string v2, "AudioLocalSource"

    const-string v4, "AudioLocalSource release"

    .line 114
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 116
    iput-object v3, p0, Lb/a/a/d/a$b;->a:Landroid/media/MediaExtractor;

    .line 117
    :cond_19
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 118
    throw v0

    :catchall_3
    move-exception v0

    .line 119
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
