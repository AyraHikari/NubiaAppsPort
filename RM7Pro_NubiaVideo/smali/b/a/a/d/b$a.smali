.class public Lb/a/a/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/d/b;


# direct methods
.method public constructor <init>(Lb/a/a/d/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p1, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    .line 4
    iget-object p1, p1, Lb/a/a/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lb/a/a/d/b$a;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v0, v0, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v2, v2, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 3
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v0, v0, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 5
    iget-object v0, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iput-object v2, v0, Lb/a/a/d/c;->a:Landroid/media/MediaFormat;

    .line 6
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/a/a/d/c;->e:Ljava/lang/String;

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
    .locals 12

    const/high16 v0, 0x200000

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-wide v2, v1, Lb/a/a/d/c;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-lez v6, :cond_0

    .line 3
    iget-object v1, v1, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    const-string v1, "VideoEditorSource"

    const-string v2, "start read video"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    :goto_0
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-boolean v3, v2, Lb/a/a/d/c;->d:Z

    if-eqz v3, :cond_f

    .line 6
    invoke-static {v2}, Lb/a/a/d/b;->f(Lb/a/a/d/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    invoke-static {v2}, Lb/a/a/d/b;->h(Lb/a/a/d/b;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-ltz v2, :cond_5

    .line 8
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v2, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lb/a/a/d/b;->h(Lb/a/a/d/b;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 9
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v2, v2, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-gtz v2, :cond_3

    .line 10
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v2, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lb/a/a/d/b;->h(Lb/a/a/d/b;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-wide v10, v2, Lb/a/a/d/c;->g:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_4

    .line 12
    invoke-static {v2, v7}, Lb/a/a/d/b;->k(Lb/a/a/d/b;Z)Z

    .line 13
    :cond_4
    :goto_1
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    const-wide/16 v8, -0x1

    invoke-static {v2, v8, v9}, Lb/a/a/d/b;->i(Lb/a/a/d/b;J)J

    .line 14
    :cond_5
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v2, v2, Lb/a/a/d/c;->i:Lb/a/a/c/c;

    if-eqz v2, :cond_6

    const/16 v6, 0x14

    .line 15
    invoke-interface {v2, v6}, Lb/a/a/c/c;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v2, 0x32

    .line 17
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 18
    :cond_6
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 19
    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v6, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 20
    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v6, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 21
    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 22
    :try_start_0
    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v6, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 23
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 24
    :goto_2
    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_7

    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v6, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-wide v10, v6, Lb/a/a/d/c;->g:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_c

    :cond_7
    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    .line 25
    invoke-static {v6}, Lb/a/a/d/b;->j(Lb/a/a/d/b;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "read EOS break"

    .line 26
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v6, 0x4

    .line 28
    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 29
    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v6, Lb/a/a/d/c;->i:Lb/a/a/c/c;

    if-eqz v6, :cond_8

    .line 30
    invoke-interface {v6, v0, v2}, Lb/a/a/c/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 31
    :cond_8
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v2, v2, Lb/a/a/d/c;->j:Lb/a/a/c/b;

    if-eqz v2, :cond_9

    .line 32
    :goto_3
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-boolean v6, v2, Lb/a/a/d/c;->d:Z

    if-eqz v6, :cond_9

    iget-object v2, v2, Lb/a/a/d/c;->j:Lb/a/a/c/b;

    .line 33
    invoke-interface {v2}, Lb/a/a/c/b;->a()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    .line 34
    :cond_9
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v6, v2, Lb/a/a/d/c;->b:Lb/a/a/c/k;

    if-eqz v6, :cond_a

    .line 35
    iget-object v2, v2, Lb/a/a/d/c;->e:Ljava/lang/String;

    invoke-interface {v6, v2}, Lb/a/a/c/k;->f(Ljava/lang/String;)V

    .line 36
    :cond_a
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    invoke-static {v2}, Lb/a/a/d/b;->l(Lb/a/a/d/b;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 37
    iget-object v0, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iput-boolean v3, v0, Lb/a/a/d/c;->d:Z

    goto :goto_4

    .line 38
    :cond_b
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    invoke-static {v2, v7}, Lb/a/a/d/b;->g(Lb/a/a/d/b;Z)Z

    .line 39
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v2, v2, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v4, v5, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 40
    :cond_c
    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    invoke-static {v6}, Lb/a/a/d/b;->j(Lb/a/a/d/b;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 41
    iget-object v6, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    invoke-static {v6, v3}, Lb/a/a/d/b;->k(Lb/a/a/d/b;Z)Z

    .line 42
    iget-object v3, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    invoke-static {v3, v7}, Lb/a/a/d/b;->g(Lb/a/a/d/b;Z)Z

    .line 43
    :cond_d
    iget-object v3, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    invoke-static {v3}, Lb/a/a/d/b;->h(Lb/a/a/d/b;)J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gez v3, :cond_e

    .line 44
    iget-object v3, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v3, v3, Lb/a/a/d/c;->i:Lb/a/a/c/c;

    invoke-interface {v3, v0, v2}, Lb/a/a/c/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 45
    :cond_e
    iget-object v2, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iget-object v2, v2, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_0

    :cond_f
    :goto_4
    const-string v0, "**** release Extractor ****"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/a/a/d/c;->i:Lb/a/a/c/c;

    .line 49
    iput-object v1, v0, Lb/a/a/d/c;->b:Lb/a/a/c/k;

    .line 50
    iput-object v1, v0, Lb/a/a/d/c;->j:Lb/a/a/c/b;

    .line 51
    iget-object v0, v0, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_10

    .line 52
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 53
    iget-object v0, p0, Lb/a/a/d/b$a;->a:Lb/a/a/d/b;

    iput-object v1, v0, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    :cond_10
    return-void
.end method
