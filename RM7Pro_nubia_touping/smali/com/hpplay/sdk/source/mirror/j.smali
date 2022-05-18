.class public Lcom/hpplay/sdk/source/mirror/j;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "VideoCallbackEncoder"


# instance fields
.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:J

.field private l:J

.field private m:Landroid/os/Handler;

.field private n:Lcom/hpplay/sdk/source/mirror/b/d;

.field private o:Lcom/hpplay/sdk/source/mirror/f;

.field private p:[Ljava/nio/ByteBuffer;

.field private q:[Ljava/nio/ByteBuffer;

.field private r:Lcom/hpplay/sdk/source/mirror/e;

.field private s:Ljava/lang/Object;

.field private t:I

.field private u:Z

.field private v:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/b/d;Lcom/hpplay/sdk/source/mirror/e;Landroid/os/Handler;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->d:Z

    .line 38
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/j;->f:Z

    .line 39
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/j;->g:Z

    .line 42
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/j;->j:I

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->s:Ljava/lang/Object;

    .line 55
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/j;->u:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->v:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 57
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/j;->w:I

    .line 58
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/j;->x:I

    .line 61
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    .line 62
    iput-object p3, p0, Lcom/hpplay/sdk/source/mirror/j;->m:Landroid/os/Handler;

    .line 63
    iput-boolean p4, p0, Lcom/hpplay/sdk/source/mirror/j;->e:Z

    .line 64
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->p:[Ljava/nio/ByteBuffer;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->q:[Ljava/nio/ByteBuffer;

    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/e;->b(Z)V

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    invoke-interface {p1}, Lcom/hpplay/sdk/source/mirror/b/d;->p()I

    move-result v1

    invoke-interface {p1}, Lcom/hpplay/sdk/source/mirror/b/d;->q()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/e;->a(II)V

    .line 69
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/j;->t:I

    .line 70
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->u:Z

    .line 71
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestampBean()Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->v:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 72
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/j;->w:I

    .line 73
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/j;->x:I

    .line 74
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugVideoFile()Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".h264"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 84
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 85
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 86
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "VideoCallbackEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 261
    const-string v0, "VideoCallbackEncoder"

    const-string v1, " stopCallback "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->g:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->u:Z

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/j;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/j;->x:I

    .line 201
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->v:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getVideoTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/j;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/j;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSerial()I

    move-result v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/j;->x:I

    if-ne v1, v2, :cond_0

    .line 205
    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setSendTime(J)V

    .line 206
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->v:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->videoWriteSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->u:Z

    if-eqz v0, :cond_0

    .line 218
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/j;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/j;->w:I

    .line 219
    new-instance v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;-><init>()V

    .line 220
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/j;->w:I

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setSerial(I)V

    .line 221
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    iget-wide v2, v1, Lcom/hpplay/sdk/source/mirror/e;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setCaptureTS(J)V

    .line 222
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->v:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getVideoTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/j;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 231
    const-string v0, "VideoCallbackEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lockCodec ----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/j;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->i:Z

    .line 233
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/mirror/f;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/j;->o:Lcom/hpplay/sdk/source/mirror/f;

    .line 195
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 237
    const-string v0, "VideoCallbackEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockCodec kkk ----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/j;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->f:Z

    .line 250
    const-string v0, "VideoCallbackEncoder"

    const-string v1, " resizeQuit "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "VideoCallbackEncoder"

    const-string v1, " encoderQuit "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/j;->b()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->g:Z

    .line 258
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->h:Z

    .line 283
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->d:Z

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/j;->b()V

    .line 303
    const-string v0, "VideoCallbackEncoder"

    const-string v1, " video encoder release "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->d:Z

    .line 305
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    const-string v0, "VideoCallbackEncoder"

    const-string v1, "sendHeartBit"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mirror/e;->g()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 273
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->m:Landroid/os/Handler;

    const/16 v1, 0x69

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .prologue
    .line 165
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mirror/j;->a(I)V

    .line 166
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/j;->q:[Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    .line 114
    const/16 v1, -0x2711

    if-eq v0, v1, :cond_2

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    .line 115
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/j;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/j;->j:I

    .line 116
    if-ltz p2, :cond_2

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/j;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 118
    const-string v0, "VideoCallbackEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fps ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/j;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/j;->k:J

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/j;->j:I

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/j;->j()V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/j;->a(J)V

    .line 124
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->d:Z

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->h:Z

    if-eqz v0, :cond_5

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/j;->l:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 127
    const-string v0, "VideoCallbackEncoder"

    const-string v1, " send  hard beat "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mirror/e;->g()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/j;->l:J

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/mirror/e;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->f:Z

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 152
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/j;->t:I

    if-eq v0, v1, :cond_3

    .line 153
    iput-boolean v5, p0, Lcom/hpplay/sdk/source/mirror/j;->g:Z

    .line 156
    :cond_3
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->o:Lcom/hpplay/sdk/source/mirror/f;

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->o:Lcom/hpplay/sdk/source/mirror/f;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/f;->onWriteComplate()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->o:Lcom/hpplay/sdk/source/mirror/f;

    .line 161
    :cond_4
    return-void

    .line 132
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->q:[Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->m:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->m:Landroid/os/Handler;

    const/16 v1, 0x69

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "VideoCallbackEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connection abort"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mirror/j;->a(I)V

    .line 148
    :goto_2
    const-string v1, "VideoCallbackEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 146
    :cond_6
    invoke-direct {p0, v4}, Lcom/hpplay/sdk/source/mirror/j;->a(I)V

    goto :goto_2
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    const-string v0, "VideoCallbackEncoder"

    const-string v1, "---------------  onOutputFormatChanged"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/j;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    instance-of v0, v0, Lcom/hpplay/sdk/source/mirror/b/a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->p:[Ljava/nio/ByteBuffer;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->p:[Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 179
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "VideoCallbackEncoder"

    const-string v1, "---------------  video sleep"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->r:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->p:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p2}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Landroid/media/MediaFormat;)V

    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/j;->n:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/j;->p:[Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string v1, "VideoCallbackEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "VideoCallbackEncoder"

    const-string v1, " coder start ... "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method
