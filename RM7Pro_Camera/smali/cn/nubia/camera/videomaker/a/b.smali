.class public Lcn/nubia/camera/videomaker/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/videomaker/a/b$a;,
        Lcn/nubia/camera/videomaker/a/b$c;,
        Lcn/nubia/camera/videomaker/a/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcn/nubia/videogenerator/d/c;

.field private h:Lcn/nubia/videogenerator/codec/g;

.field private i:Lcn/nubia/videogenerator/codec/c;

.field private j:I

.field private k:I

.field private l:J

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcn/nubia/camera/videomaker/a/b$b;

.field private o:Lcn/nubia/camera/videomaker/a/b$c;

.field private p:Landroid/media/MediaCodec$BufferInfo;

.field private q:Landroid/media/MediaExtractor;

.field private r:Landroid/media/MediaFormat;

.field private s:Ljava/lang/String;

.field private t:Lcn/nubia/camera/videomaker/a/b$a;

.field private u:Z

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lcn/nubia/camera/videomaker/a/b;->d:J

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->e:Ljava/lang/String;

    const/4 v3, 0x0

    .line 64
    iput v3, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    .line 70
    iput v3, p0, Lcn/nubia/camera/videomaker/a/b;->j:I

    const v4, 0xac44

    .line 71
    iput v4, p0, Lcn/nubia/camera/videomaker/a/b;->k:I

    .line 72
    iput-wide v1, p0, Lcn/nubia/camera/videomaker/a/b;->l:J

    .line 73
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->n:Lcn/nubia/camera/videomaker/a/b$b;

    .line 75
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->o:Lcn/nubia/camera/videomaker/a/b$c;

    .line 77
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->r:Landroid/media/MediaFormat;

    .line 79
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->s:Ljava/lang/String;

    .line 81
    iput-boolean v3, p0, Lcn/nubia/camera/videomaker/a/b;->u:Z

    .line 83
    new-instance v0, Lcn/nubia/camera/videomaker/a/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/videomaker/a/b$1;-><init>(Lcn/nubia/camera/videomaker/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->v:Landroid/os/Handler;

    const-string v0, "VideoGenerator CONSTRUCTOR "

    .line 98
    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/media/MediaFormat;)I
    .locals 3

    const-string v0, "bitrate"

    .line 164
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x3200

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    return v2
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/a/b;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/a/b;)Lcn/nubia/videogenerator/codec/g;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/videomaker/a/b;->h:Lcn/nubia/videogenerator/codec/g;

    return-object p0
.end method

.method private a(IIJ)V
    .locals 1

    const-string v0, "notifyMessage"

    .line 102
    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->e(Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 104
    iput p1, v0, Landroid/os/Message;->what:I

    .line 105
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->v:Landroid/os/Handler;

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/a/b;IIJ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/videomaker/a/b;->a(IIJ)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/a/b;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/a/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/a/b;)Lcn/nubia/videogenerator/d/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/a/b;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/a/b;->d(I)V

    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/a/b;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Ljava/lang/String;)Landroid/media/MediaFormat;
    .locals 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAudioInput filename:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->e(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 183
    :cond_1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    .line 184
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 189
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 190
    iget-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v1, "mime"

    .line 191
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->s:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAudioInput  audioFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/videomaker/a/b;->e(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/a/b;->a(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/videomaker/a/b;->j:I

    .line 194
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAudioInput  audioBitRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/videomaker/a/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->o:Lcn/nubia/camera/videomaker/a/b$c;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p0, p1}, Lcn/nubia/camera/videomaker/a/b$c;->a(Lcn/nubia/camera/videomaker/a/b;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VideoGenerator"

    const/4 v1, 0x3

    .line 482
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private g()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "woo"

    const-string v1, "clearAudioPathList"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/videomaker/a/b;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/camera/videomaker/a/b;->d:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "removeAllImageItems"

    .line 127
    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->e(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public a(I)V
    .locals 2

    const-string v0, "VideoGenerator"

    const-string v1, " generate Movie end"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 377
    iput v0, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    .line 378
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/a/b;->e()V

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->n:Lcn/nubia/camera/videomaker/a/b$b;

    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, p0, p1}, Lcn/nubia/camera/videomaker/a/b$b;->a(Lcn/nubia/camera/videomaker/a/b;I)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/videomaker/a/b$b;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->n:Lcn/nubia/camera/videomaker/a/b$b;

    return-void
.end method

.method public a(Lcn/nubia/camera/videomaker/a/b$c;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->o:Lcn/nubia/camera/videomaker/a/b$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;ILcn/nubia/camera/videomaker/a/b$c;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 282
    :cond_0
    iput p2, p0, Lcn/nubia/camera/videomaker/a/b;->c:I

    .line 283
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->e:Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/a/b;->i()V

    .line 286
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "fps = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/videomaker/a/b;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "videoduration:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcn/nubia/camera/videomaker/a/b;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoGenerator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0, p3}, Lcn/nubia/camera/videomaker/a/b;->a(Lcn/nubia/camera/videomaker/a/b$c;)V

    .line 290
    new-instance p1, Lcn/nubia/videogenerator/codec/h;

    invoke-direct {p1}, Lcn/nubia/videogenerator/codec/h;-><init>()V

    .line 291
    iget-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/16 v2, 0x1e0

    const/16 v3, 0x280

    if-eqz p3, :cond_1

    .line 292
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 293
    iget-object v4, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 295
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 296
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v2

    move v4, v3

    :goto_0
    if-le v4, p3, :cond_2

    .line 300
    invoke-virtual {p1, v3, v2}, Lcn/nubia/videogenerator/codec/h;->a(II)V

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {p1, v2, v3}, Lcn/nubia/videogenerator/codec/h;->a(II)V

    .line 304
    :goto_1
    iget p3, p0, Lcn/nubia/camera/videomaker/a/b;->c:I

    invoke-virtual {p1, p3}, Lcn/nubia/videogenerator/codec/h;->a(I)V

    .line 306
    new-instance p3, Lcn/nubia/videogenerator/codec/g;

    invoke-direct {p3}, Lcn/nubia/videogenerator/codec/g;-><init>()V

    iput-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->h:Lcn/nubia/videogenerator/codec/g;

    .line 307
    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Lcn/nubia/videogenerator/codec/g;->a(Ljava/util/ArrayList;)V

    .line 308
    new-instance p3, Lcn/nubia/videogenerator/d/c;

    iget-wide v2, p0, Lcn/nubia/camera/videomaker/a/b;->d:J

    invoke-direct {p3, v2, v3}, Lcn/nubia/videogenerator/d/c;-><init>(J)V

    iput-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    .line 310
    :try_start_0
    invoke-virtual {p3, p1}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/codec/h;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string p1, "video do not support"

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p1, 0x0

    .line 317
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/a/b;->g()Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "chenpeng"

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 320
    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    invoke-virtual {v2, p3}, Lcn/nubia/videogenerator/d/c;->c(Ljava/lang/String;)V

    .line 321
    new-instance p3, Lcn/nubia/videogenerator/codec/a;

    invoke-direct {p3}, Lcn/nubia/videogenerator/codec/a;-><init>()V

    .line 322
    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    invoke-virtual {v2, p3}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/codec/a;)V

    .line 323
    new-instance p3, Lcn/nubia/videogenerator/codec/c;

    invoke-direct {p3}, Lcn/nubia/videogenerator/codec/c;-><init>()V

    iput-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->i:Lcn/nubia/videogenerator/codec/c;

    .line 324
    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    invoke-virtual {v2, p3}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/codec/c;)V

    .line 325
    iget-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->i:Lcn/nubia/videogenerator/codec/c;

    invoke-virtual {p3, v2}, Lcn/nubia/videogenerator/d/c;->b(Lcn/nubia/videogenerator/codec/c;)V

    goto :goto_3

    .line 327
    :cond_3
    iget-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    invoke-virtual {p3, p1}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/codec/a;)V

    .line 331
    :cond_4
    :goto_3
    iget-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcn/nubia/videogenerator/d/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 335
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string p2, "audio do not support"

    .line 336
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception p2

    .line 333
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    :goto_4
    iget-object p2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    iget-object p3, p0, Lcn/nubia/camera/videomaker/a/b;->h:Lcn/nubia/videogenerator/codec/g;

    invoke-virtual {p2, p3}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/codec/g;)V

    .line 340
    iget-object p2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    new-instance p3, Lcn/nubia/camera/videomaker/a/b$2;

    invoke-direct {p3, p0}, Lcn/nubia/camera/videomaker/a/b$2;-><init>(Lcn/nubia/camera/videomaker/a/b;)V

    invoke-virtual {p2, p3}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/a/d$a;)V

    .line 355
    iget-object p2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    new-instance p3, Lcn/nubia/camera/videomaker/a/b$3;

    invoke-direct {p3, p0}, Lcn/nubia/camera/videomaker/a/b$3;-><init>(Lcn/nubia/camera/videomaker/a/b;)V

    invoke-virtual {p2, p3}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/a/d$c;)V

    .line 362
    iget-object p2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    iget-wide v2, p0, Lcn/nubia/camera/videomaker/a/b;->d:J

    invoke-virtual {p2, v2, v3}, Lcn/nubia/videogenerator/d/c;->a(J)V

    .line 363
    iget-object p2, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    invoke-virtual {p2}, Lcn/nubia/videogenerator/d/c;->c()V

    .line 364
    iget-object p2, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcn/nubia/camera/videomaker/a/b;->u:Z

    if-nez p2, :cond_5

    .line 365
    new-instance p2, Lcn/nubia/camera/videomaker/a/b$a;

    invoke-direct {p2, p0, p1}, Lcn/nubia/camera/videomaker/a/b$a;-><init>(Lcn/nubia/camera/videomaker/a/b;Lcn/nubia/camera/videomaker/a/b$1;)V

    iput-object p2, p0, Lcn/nubia/camera/videomaker/a/b;->t:Lcn/nubia/camera/videomaker/a/b$a;

    .line 366
    invoke-virtual {p2}, Lcn/nubia/camera/videomaker/a/b$a;->start()V

    .line 368
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/camera/videomaker/a/b;->u:Z

    if-eqz p1, :cond_6

    .line 369
    iput v1, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    goto :goto_5

    :cond_6
    const/4 p1, 0x2

    .line 371
    iput p1, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    :goto_5
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddAudioTraqck audioList: size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "woo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 429
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    .line 430
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 432
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/a/b;->d(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->r:Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 434
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->b(Ljava/util/ArrayList;)V

    .line 435
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public b()V
    .locals 9

    const/16 v0, 0x5000

    .line 204
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->r:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/d/c;->a(Landroid/media/MediaFormat;)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/videogenerator/d/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "VideoGenerator"

    const-string v2, "readAudioDirect  start: "

    .line 209
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 210
    :goto_1
    invoke-direct {p0, v2}, Lcn/nubia/camera/videomaker/a/b;->c(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcn/nubia/camera/videomaker/a/b;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    return-void

    .line 211
    :cond_2
    :goto_2
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_3

    if-gtz v2, :cond_3

    iget-wide v3, p0, Lcn/nubia/camera/videomaker/a/b;->l:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 212
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcn/nubia/camera/videomaker/a/b;->u:Z

    if-nez v3, :cond_4

    .line 214
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcn/nubia/camera/videomaker/a/b;->d(Ljava/lang/String;)Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 216
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcn/nubia/camera/videomaker/a/b;->u:Z

    if-nez v3, :cond_8

    .line 222
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    const/16 v4, 0x64

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 223
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-object v5, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 224
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-object v4, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 226
    iget-wide v3, p0, Lcn/nubia/camera/videomaker/a/b;->l:J

    iget-wide v5, p0, Lcn/nubia/camera/videomaker/a/b;->d:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    .line 228
    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 229
    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 230
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    if-eqz v3, :cond_8

    .line 231
    iget-object v4, p0, Lcn/nubia/camera/videomaker/a/b;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/videogenerator/d/c;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 236
    :cond_5
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v3, :cond_6

    .line 237
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 238
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v4, v3, :cond_8

    const/4 v2, -0x1

    goto :goto_4

    .line 247
    :cond_6
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, p0, Lcn/nubia/camera/videomaker/a/b;->l:J

    iput-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 248
    iget-wide v3, p0, Lcn/nubia/camera/videomaker/a/b;->l:J

    iget-object v5, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    iget v7, p0, Lcn/nubia/camera/videomaker/a/b;->j:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcn/nubia/camera/videomaker/a/b;->l:J

    .line 249
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    if-eqz v3, :cond_7

    .line 250
    iget-object v4, p0, Lcn/nubia/camera/videomaker/a/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-object v5, p0, Lcn/nubia/camera/videomaker/a/b;->s:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5}, Lcn/nubia/videogenerator/d/c;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 252
    :cond_7
    iget-object v3, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_4

    .line 253
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VideoGenerator"

    const-string v1, "cancelExport "

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v0, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/a/b;->u:Z

    const/4 v0, 0x3

    .line 387
    iput v0, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    const/4 v0, 0x0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->h:Lcn/nubia/videogenerator/codec/g;

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/g;->c()V

    .line 392
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->t:Lcn/nubia/camera/videomaker/a/b$a;

    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/a/b$a;->join()V

    .line 395
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {v1}, Lcn/nubia/videogenerator/d/c;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/a/b;->e()V

    .line 405
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->d(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->r:Landroid/media/MediaFormat;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 409
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 400
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/a/b;->e()V

    .line 405
    :try_start_3
    iget-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->d(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->r:Landroid/media/MediaFormat;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 409
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 403
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/a/b;->e()V

    .line 405
    :try_start_4
    iget-object v2, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/a/b;->d(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->r:Landroid/media/MediaFormat;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 409
    :goto_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 410
    throw v1

    :cond_3
    :goto_5
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 448
    iget-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 449
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/a/b;->h()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 458
    iget v0, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, "VideoGenerator"

    const-string v1, "************releaseGenerator*************"

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 465
    iput-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->q:Landroid/media/MediaExtractor;

    .line 467
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    if-eqz v0, :cond_1

    .line 468
    iput-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->g:Lcn/nubia/videogenerator/d/c;

    .line 470
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->h:Lcn/nubia/videogenerator/codec/g;

    if-eqz v0, :cond_2

    .line 471
    iput-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->h:Lcn/nubia/videogenerator/codec/g;

    .line 473
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b;->i:Lcn/nubia/videogenerator/codec/c;

    if-eqz v0, :cond_3

    .line 474
    iput-object v1, p0, Lcn/nubia/camera/videomaker/a/b;->i:Lcn/nubia/videogenerator/codec/c;

    :cond_3
    const-wide/16 v0, 0x0

    .line 476
    iput-wide v0, p0, Lcn/nubia/camera/videomaker/a/b;->l:J

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/a/b;->u:Z

    .line 478
    iput v0, p0, Lcn/nubia/camera/videomaker/a/b;->f:I

    return-void
.end method
