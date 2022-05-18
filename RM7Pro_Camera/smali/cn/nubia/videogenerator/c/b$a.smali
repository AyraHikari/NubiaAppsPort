.class public Lcn/nubia/videogenerator/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/videogenerator/c/b;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/c/b;)V
    .locals 3

    .line 45
    iput-object p1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p1, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    .line 48
    iget-object v0, p1, Lcn/nubia/videogenerator/c/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    iget-object p1, p1, Lcn/nubia/videogenerator/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p1, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-static {p1}, Lcn/nubia/videogenerator/c/b;->a(Lcn/nubia/videogenerator/c/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcn/nubia/videogenerator/c/b;->b(Lcn/nubia/videogenerator/c/b;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 54
    :goto_0
    invoke-direct {p0}, Lcn/nubia/videogenerator/c/b$a;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    .line 58
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    iget-object v2, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v2, v2, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 62
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 64
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iput-object v2, v0, Lcn/nubia/videogenerator/c/b;->a:Landroid/media/MediaFormat;

    .line 65
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v0, Lcn/nubia/videogenerator/c/b;->a:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/videogenerator/c/b;->h:Ljava/lang/String;

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

    .line 73
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget v1, v1, Lcn/nubia/videogenerator/c/b;->n:I

    const-string v2, "read EOS break"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "VideoEditorSource"

    const/4 v6, 0x0

    if-nez v1, :cond_5

    .line 75
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v7, v1, Lcn/nubia/videogenerator/c/b;->i:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v7, v7, Lcn/nubia/videogenerator/c/b;->i:J

    invoke-virtual {v1, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    const-string v1, "start read video"

    .line 79
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/c/b;->d:Z

    if-eqz v1, :cond_d

    .line 81
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    const/16 v4, 0x14

    .line 82
    invoke-interface {v1, v4}, Lcn/nubia/videogenerator/a/c;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v7, 0x32

    .line 84
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 89
    iget-object v4, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v4, v4, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 90
    iget-object v4, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v4, v4, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 91
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 93
    :try_start_0
    iget-object v4, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v4, v4, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 95
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 97
    :goto_1
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v4, v4, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    .line 98
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iget-object v4, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v9, v4, Lcn/nubia/videogenerator/c/b;->j:J

    cmp-long v4, v7, v9

    if-ltz v4, :cond_2

    goto :goto_2

    .line 113
    :cond_2
    iget-object v4, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v4, v4, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    invoke-interface {v4, v0, v1}, Lcn/nubia/videogenerator/a/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 115
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 99
    :cond_3
    :goto_2
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 101
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 102
    iget-object v2, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v2, v2, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    invoke-interface {v2, v0, v1}, Lcn/nubia/videogenerator/a/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 104
    :goto_3
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-boolean v0, v0, Lcn/nubia/videogenerator/c/b;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->r:Lcn/nubia/videogenerator/a/b;

    .line 105
    invoke-interface {v0}, Lcn/nubia/videogenerator/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 107
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iput-boolean v6, v0, Lcn/nubia/videogenerator/c/b;->d:Z

    .line 108
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->b:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->b:Lcn/nubia/videogenerator/a/g;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/g;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 117
    :cond_5
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget v1, v1, Lcn/nubia/videogenerator/c/b;->n:I

    if-ne v1, v4, :cond_d

    move v1, v6

    .line 119
    :goto_4
    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-boolean v7, v7, Lcn/nubia/videogenerator/c/b;->d:Z

    if-eqz v7, :cond_d

    .line 120
    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v7, v7, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v7, v7, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    const/16 v8, 0x32

    .line 121
    invoke-interface {v7, v8}, Lcn/nubia/videogenerator/a/c;->b(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 122
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v7, 0x14

    .line 123
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    .line 126
    :cond_6
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 128
    iget-object v8, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v8, v8, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 129
    iget-object v8, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v8, v8, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 130
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 132
    :try_start_1
    iget-object v8, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v8, v8, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v8

    .line 134
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_5
    if-nez v1, :cond_9

    .line 136
    iget-object v8, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v8, v8, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    .line 137
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v10, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v10, v10, Lcn/nubia/videogenerator/c/b;->i:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_9

    .line 139
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v8, v1, Lcn/nubia/videogenerator/c/b;->j:J

    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v10, v1, Lcn/nubia/videogenerator/c/b;->k:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_7

    .line 140
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v7, v7, Lcn/nubia/videogenerator/c/b;->j:J

    invoke-virtual {v1, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEndMs = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v7, v7, Lcn/nubia/videogenerator/c/b;->j:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v7, v7, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    .line 143
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto/16 :goto_4

    .line 146
    :cond_7
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 147
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 148
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    invoke-interface {v1, v0, v7}, Lcn/nubia/videogenerator/a/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 150
    :goto_6
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-boolean v0, v0, Lcn/nubia/videogenerator/c/b;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->r:Lcn/nubia/videogenerator/a/b;

    .line 151
    invoke-interface {v0}, Lcn/nubia/videogenerator/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    .line 153
    :cond_8
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iput-boolean v6, v0, Lcn/nubia/videogenerator/c/b;->d:Z

    .line 154
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->b:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_d

    .line 155
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->b:Lcn/nubia/videogenerator/a/g;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/g;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 161
    :cond_9
    iget v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v8, :cond_b

    iget-object v8, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v8, v8, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    .line 162
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v10, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-wide v10, v10, Lcn/nubia/videogenerator/c/b;->k:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a

    goto :goto_7

    .line 177
    :cond_a
    iget-object v8, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v8, v8, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    invoke-interface {v8, v0, v7}, Lcn/nubia/videogenerator/a/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 179
    iget-object v7, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v7, v7, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_4

    .line 163
    :cond_b
    :goto_7
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 165
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 166
    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    invoke-interface {v1, v0, v7}, Lcn/nubia/videogenerator/a/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 168
    :goto_8
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-boolean v0, v0, Lcn/nubia/videogenerator/c/b;->d:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->r:Lcn/nubia/videogenerator/a/b;

    .line 169
    invoke-interface {v0}, Lcn/nubia/videogenerator/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    .line 171
    :cond_c
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iput-boolean v6, v0, Lcn/nubia/videogenerator/c/b;->d:Z

    .line 172
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->b:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_d

    .line 173
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->b:Lcn/nubia/videogenerator/a/g;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v1, v1, Lcn/nubia/videogenerator/c/b;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/g;->a(Ljava/lang/String;)V

    :cond_d
    :goto_9
    const-string v0, "**** release Extractor ****"

    .line 182
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/videogenerator/c/b;->q:Lcn/nubia/videogenerator/a/c;

    .line 184
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iput-object v1, v0, Lcn/nubia/videogenerator/c/b;->b:Lcn/nubia/videogenerator/a/g;

    .line 185
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iput-object v1, v0, Lcn/nubia/videogenerator/c/b;->r:Lcn/nubia/videogenerator/a/b;

    .line 186
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b$a;->a:Lcn/nubia/videogenerator/c/b;

    iget-object v0, v0, Lcn/nubia/videogenerator/c/b;->p:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method
