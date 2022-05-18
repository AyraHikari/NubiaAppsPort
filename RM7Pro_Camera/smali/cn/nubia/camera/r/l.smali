.class public Lcn/nubia/camera/r/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/l$d;,
        Lcn/nubia/camera/r/l$a;,
        Lcn/nubia/camera/r/l$b;,
        Lcn/nubia/camera/r/l$c;
    }
.end annotation


# instance fields
.field private a:Ljava/io/FileDescriptor;

.field private b:Landroid/media/CamcorderProfile;

.field private c:Landroid/media/MediaCodec;

.field private d:Landroid/view/Surface;

.field private e:I

.field private f:Z

.field private g:Landroid/media/MediaCodec;

.field private h:Landroid/media/AudioRecord;

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/media/MediaMuxer;

.field private r:Ljava/lang/Exception;

.field private s:Lcn/nubia/camera/r/l$a;

.field private t:Lcn/nubia/camera/r/l$d;

.field private u:I

.field private v:Z

.field private w:Landroid/os/Handler;

.field private x:Lcn/nubia/camera/r/l$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcn/nubia/camera/r/l;->e:I

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcn/nubia/camera/r/l;->f:Z

    .line 44
    iput v0, p0, Lcn/nubia/camera/r/l;->i:I

    .line 46
    iput-boolean v1, p0, Lcn/nubia/camera/r/l;->k:Z

    const v0, 0xac44

    .line 47
    iput v0, p0, Lcn/nubia/camera/r/l;->l:I

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcn/nubia/camera/r/l;->m:I

    const v0, 0x26160

    .line 49
    iput v0, p0, Lcn/nubia/camera/r/l;->n:I

    const-string v0, "audio/mp4a-latm"

    .line 50
    iput-object v0, p0, Lcn/nubia/camera/r/l;->o:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcn/nubia/camera/r/l;->u:I

    .line 60
    iput-boolean v1, p0, Lcn/nubia/camera/r/l;->v:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/r/l;->w:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/l;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/r/l;->j:I

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/r/l;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/camera/r/l;->i:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/r/l;Ljava/lang/Exception;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/l;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcn/nubia/camera/r/l;->w:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/camera/r/l$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/r/l$1;-><init>(Lcn/nubia/camera/r/l;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/l;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/r/l;->v:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/r/l;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/r/l;->i:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/r/l;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/camera/r/l;->u:I

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/r/l;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/r/l;->k:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/r/l;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/r/l;->l:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/r/l;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/camera/r/l;->e:I

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/r/l;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/r/l;->p:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/r/l;)Landroid/media/AudioRecord;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/r/l;->h:Landroid/media/AudioRecord;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/r/l;->o:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/camera/r/l;->l:I

    iget v2, p0, Lcn/nubia/camera/r/l;->m:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 78
    iget v1, p0, Lcn/nubia/camera/r/l;->n:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 79
    iget v1, p0, Lcn/nubia/camera/r/l;->j:I

    const-string v2, "max-input-size"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/l;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/l;->g:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/r/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/r/l;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/r/l;->f:Z

    return p1
.end method

.method private e()V
    .locals 8

    .line 93
    iget v0, p0, Lcn/nubia/camera/r/l;->l:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/r/l;->j:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min audio buffer size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/r/l;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyMediaRecorder"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Landroid/media/AudioRecord;

    iget v4, p0, Lcn/nubia/camera/r/l;->l:I

    iget v7, p0, Lcn/nubia/camera/r/l;->j:I

    const/4 v3, 0x5

    const/16 v5, 0x10

    const/4 v6, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcn/nubia/camera/r/l;->h:Landroid/media/AudioRecord;

    .line 101
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecord init fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/r/l;->h:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/r/l;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/camera/r/l;->v:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/r/l;->g:Landroid/media/MediaCodec;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 139
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcn/nubia/camera/r/l;->a:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcn/nubia/camera/r/l;->q:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    .line 144
    iput v0, p0, Lcn/nubia/camera/r/l;->e:I

    .line 145
    iput v0, p0, Lcn/nubia/camera/r/l;->i:I

    .line 146
    iput-boolean v2, p0, Lcn/nubia/camera/r/l;->p:Z

    return-void

    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MediaMuxer creation failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic g(Lcn/nubia/camera/r/l;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/r/l;->u:I

    return p0
.end method

.method private g()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/r/l;->b:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v1, p0, Lcn/nubia/camera/r/l;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v3, 0x7f000789

    .line 154
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 156
    iget-object v1, p0, Lcn/nubia/camera/r/l;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 157
    iget-object v1, p0, Lcn/nubia/camera/r/l;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const-string v3, "frame-rate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v3, 0x1

    .line 158
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video encoder format: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MyMediaRecorder"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/r/l;->d:Landroid/view/Surface;

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method private h()V
    .locals 2

    const-string v0, "MyMediaRecorder"

    const-string v1, "releasing encoder objects"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/r/l;->h:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/r/l;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 211
    iput-object v1, p0, Lcn/nubia/camera/r/l;->h:Landroid/media/AudioRecord;

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/l;->g:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/r/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 216
    iput-object v1, p0, Lcn/nubia/camera/r/l;->g:Landroid/media/MediaCodec;

    .line 218
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 221
    iput-object v1, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;

    .line 223
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/r/l;->q:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_3

    .line 225
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/r/l;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    iput-object v0, p0, Lcn/nubia/camera/r/l;->r:Ljava/lang/Exception;

    .line 230
    :goto_0
    iput-object v1, p0, Lcn/nubia/camera/r/l;->q:Landroid/media/MediaMuxer;

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcn/nubia/camera/r/l;->p:Z

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_3
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/r/l;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/camera/r/l;->k:Z

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/r/l;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/camera/r/l;->f:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/r/l;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/r/l;->h()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/r/l;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/camera/r/l;->p:Z

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/r/l;->q:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/r/l;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/r/l;->e:I

    return p0
.end method

.method static synthetic n(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/r/l;->c:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/r/l;)I
    .locals 2

    .line 25
    iget v0, p0, Lcn/nubia/camera/r/l;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/r/l;->u:I

    return v0
.end method

.method static synthetic p(Lcn/nubia/camera/r/l;)Lcn/nubia/camera/r/l$c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/r/l;->x:Lcn/nubia/camera/r/l$c;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/r/l;->d:Landroid/view/Surface;

    return-object v0
.end method

.method public a(FF)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/r/l;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/r/l;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method public a(Landroid/media/CamcorderProfile;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/nubia/camera/r/l;->b:Landroid/media/CamcorderProfile;

    .line 111
    iput-object p2, p0, Lcn/nubia/camera/r/l;->a:Ljava/io/FileDescriptor;

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "output file is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/r/l;->a:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyMediaRecorder"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcn/nubia/camera/r/l;->e()V

    .line 119
    invoke-direct {p0}, Lcn/nubia/camera/r/l;->d()V

    .line 121
    invoke-direct {p0}, Lcn/nubia/camera/r/l;->g()V

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/r/l;->f()V

    return-void
.end method

.method public a(Lcn/nubia/camera/r/l$c;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/r/l;->x:Lcn/nubia/camera/r/l$c;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcn/nubia/camera/r/l;->v:Z

    .line 185
    new-instance v0, Lcn/nubia/camera/r/l$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/l$a;-><init>(Lcn/nubia/camera/r/l;)V

    iput-object v0, p0, Lcn/nubia/camera/r/l;->s:Lcn/nubia/camera/r/l$a;

    .line 186
    invoke-virtual {v0}, Lcn/nubia/camera/r/l$a;->start()V

    .line 187
    new-instance v0, Lcn/nubia/camera/r/l$d;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/l$d;-><init>(Lcn/nubia/camera/r/l;)V

    iput-object v0, p0, Lcn/nubia/camera/r/l;->t:Lcn/nubia/camera/r/l$d;

    .line 188
    invoke-virtual {v0}, Lcn/nubia/camera/r/l$d;->start()V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcn/nubia/camera/r/l;->v:Z

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/r/l;->s:Lcn/nubia/camera/r/l$a;

    invoke-virtual {v0}, Lcn/nubia/camera/r/l$a;->join()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcn/nubia/camera/r/l;->s:Lcn/nubia/camera/r/l$a;

    .line 195
    iget-object v1, p0, Lcn/nubia/camera/r/l;->t:Lcn/nubia/camera/r/l$d;

    invoke-virtual {v1}, Lcn/nubia/camera/r/l$d;->join()V

    .line 196
    iput-object v0, p0, Lcn/nubia/camera/r/l;->t:Lcn/nubia/camera/r/l$d;

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/r/l;->r:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    throw v0
.end method
