.class public Lcom/zte/camera/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/a/a/e$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "e"


# instance fields
.field public a:Landroid/media/MediaFormat;

.field private c:Landroid/media/MediaExtractor;

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/zte/camera/a/a/e$a;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    .line 18
    iput-object v0, p0, Lcom/zte/camera/a/a/e;->d:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/zte/camera/a/a/e;->e:I

    .line 20
    iput v1, p0, Lcom/zte/camera/a/a/e;->f:I

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/zte/camera/a/a/e;->g:I

    .line 22
    iput-object v0, p0, Lcom/zte/camera/a/a/e;->h:Lcom/zte/camera/a/a/e$a;

    .line 23
    iput-object v0, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;

    .line 24
    iput v1, p0, Lcom/zte/camera/a/a/e;->i:I

    .line 25
    iput-object v0, p0, Lcom/zte/camera/a/a/e;->j:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/zte/camera/a/a/e;->k:I

    .line 27
    iput v1, p0, Lcom/zte/camera/a/a/e;->l:I

    .line 28
    iput v1, p0, Lcom/zte/camera/a/a/e;->m:I

    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Lcom/zte/camera/a/a/e;->n:J

    .line 30
    iput-object v0, p0, Lcom/zte/camera/a/a/e;->o:Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "create VlogMediaExtrator"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/zte/camera/a/a/e;->o:Landroid/content/Context;

    .line 35
    invoke-virtual {p0, p2}, Lcom/zte/camera/a/a/e;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/e;)Landroid/media/MediaExtractor;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/e;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/e;->a(Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    .line 77
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 79
    iput v0, p0, Lcom/zte/camera/a/a/e;->f:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioTrack: audioTrackIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/zte/camera/a/a/e;->f:I

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 6

    .line 40
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    .line 42
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->c(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/a/a/e;->d:Landroid/content/res/AssetFileDescriptor;

    .line 43
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object p1, p0, Lcom/zte/camera/a/a/e;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object p1, p0, Lcom/zte/camera/a/a/e;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 44
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    iput p1, p0, Lcom/zte/camera/a/a/e;->g:I

    .line 45
    sget-object p1, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/camera/a/a/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz p1, :cond_0

    .line 52
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 47
    :try_start_2
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVlogMediaExtrator fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz p1, :cond_0

    .line 52
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 50
    :goto_1
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 52
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    :cond_1
    :goto_2
    throw p1
.end method

.method public b()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v0, "bitrate"

    .line 106
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zte/camera/a/a/e;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "bitRate fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/zte/camera/a/a/e;->i:I

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/a/a/e;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 115
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "background music mime fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :goto_1
    :try_start_3
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zte/camera/a/a/e;->k:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 121
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "background music channelCount fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :goto_2
    :try_start_4
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;

    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zte/camera/a/a/e;->l:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 127
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "background music sampleRate fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_3
    :try_start_5
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;

    const-string v0, "aac-profile"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zte/camera/a/a/e;->m:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 133
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "background music aacProfile fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :goto_4
    :try_start_6
    iget-object p1, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;

    const-string v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/camera/a/a/e;->n:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 139
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "background music duration fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    :catch_6
    move-exception p1

    .line 101
    sget-object v0, Lcom/zte/camera/a/a/e;->b:Ljava/lang/String;

    const-string v1, "background music format fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->a:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/zte/camera/a/a/e;->n:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/zte/camera/a/a/e;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/zte/camera/a/a/e;->k:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/zte/camera/a/a/e;->l:I

    return v0
.end method

.method public h()J
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/zte/camera/a/a/e;->c:Landroid/media/MediaExtractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method
