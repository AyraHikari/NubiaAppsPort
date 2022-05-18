.class public Lcom/hpplay/sdk/source/mirror/k;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "VideoEncoder"


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/hpplay/sdk/source/mirror/b/d;

.field private j:Lcom/hpplay/sdk/source/mirror/f;

.field private k:Z

.field private l:[Ljava/nio/ByteBuffer;

.field private m:[Ljava/nio/ByteBuffer;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/lang/Object;

.field private p:Lcom/hpplay/sdk/source/mirror/e;

.field private q:Z

.field private r:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

.field private s:I

.field private t:I

.field private u:J

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/b/d;Lcom/hpplay/sdk/source/mirror/e;Landroid/os/Handler;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/k;->e:Z

    .line 41
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mirror/k;->f:Z

    .line 43
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/k;->h:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->o:Ljava/lang/Object;

    .line 54
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/k;->q:Z

    .line 55
    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->r:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 56
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/k;->s:I

    .line 57
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/k;->t:I

    .line 60
    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->v:Ljava/lang/String;

    .line 63
    const-string v0, "VideoEncoder"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/k;->setName(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    .line 65
    iput-object p3, p0, Lcom/hpplay/sdk/source/mirror/k;->d:Landroid/os/Handler;

    .line 66
    iput-boolean p4, p0, Lcom/hpplay/sdk/source/mirror/k;->g:Z

    .line 67
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->l:[Ljava/nio/ByteBuffer;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->m:[Ljava/nio/ByteBuffer;

    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/e;->b(Z)V

    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-interface {p1}, Lcom/hpplay/sdk/source/mirror/b/d;->p()I

    move-result v1

    invoke-interface {p1}, Lcom/hpplay/sdk/source/mirror/b/d;->q()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/e;->a(II)V

    .line 72
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->q:Z

    .line 73
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestampBean()Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->r:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 74
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/k;->s:I

    .line 75
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/k;->t:I

    .line 76
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugVideoFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->v:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mirror/k;->e:Z

    .line 80
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->q:Z

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/k;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/k;->t:I

    .line 130
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->r:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getVideoTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/k;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/k;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    .line 133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSerial()I

    move-result v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/k;->t:I

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setSendTime(J)V

    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->r:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->videoWriteSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->q:Z

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/k;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/k;->s:I

    .line 115
    new-instance v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;-><init>()V

    .line 116
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/k;->s:I

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setSerial(I)V

    .line 117
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    iget-wide v2, v1, Lcom/hpplay/sdk/source/mirror/e;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setCaptureTS(J)V

    .line 119
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->r:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getVideoTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/k;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->k:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/mirror/f;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/k;->j:Lcom/hpplay/sdk/source/mirror/f;

    .line 108
    return-void
.end method

.method public a(Z)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x2710

    const/4 v4, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->e:Z

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 152
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".h264"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 155
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 156
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 157
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 166
    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/k;->o:Ljava/lang/Object;

    monitor-enter v6

    move v0, v4

    .line 167
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/k;->f:Z

    if-eqz v1, :cond_2

    .line 168
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/k;->h:Z

    if-eqz v1, :cond_5

    .line 169
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 170
    if-eq v1, v5, :cond_5

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->f:Z

    .line 225
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->j:Lcom/hpplay/sdk/source/mirror/f;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->h:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->k:Z

    if-eqz v0, :cond_4

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->j:Lcom/hpplay/sdk/source/mirror/f;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/f;->onWriteComplate()V

    .line 229
    :cond_4
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/k;->k()V

    .line 230
    const-string v0, "VideoEncoder"

    const-string v1, " record over ---> "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "VideoEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mirror/e;->d()I

    move-result v1

    .line 176
    const/4 v7, -0x2

    if-ne v1, v7, :cond_8

    .line 177
    const-string v1, "VideoEncoder"

    const-string v7, "------------> INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v1, v7}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    instance-of v1, v1, Lcom/hpplay/sdk/source/mirror/b/a;

    if-eqz v1, :cond_6

    .line 179
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->l:[Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v8}, Lcom/hpplay/sdk/source/mirror/b/d;->w()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->l:[Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 182
    :cond_6
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v1, v1, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 183
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v8, p0, Lcom/hpplay/sdk/source/mirror/k;->l:[Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8, v1}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Landroid/media/MediaFormat;)V

    .line 184
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->l:[Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    move v1, v0

    .line 217
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_3
    move v0, v1

    .line 224
    goto/16 :goto_1

    .line 185
    :cond_8
    const/4 v7, -0x3

    if-ne v1, v7, :cond_9

    .line 186
    :try_start_4
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mirror/e;->e()V

    move v1, v0

    goto :goto_2

    .line 187
    :cond_9
    if-ltz v1, :cond_c

    .line 188
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v7, v1}, Lcom/hpplay/sdk/source/mirror/e;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 189
    iget-object v8, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v9, p0, Lcom/hpplay/sdk/source/mirror/k;->m:[Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v10, v10, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v8, v9, v7, v1, v10}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)I

    move-result v7

    .line 190
    const/16 v8, -0x2711

    if-eq v7, v8, :cond_c

    const/16 v8, -0x2710

    if-eq v7, v8, :cond_c

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 192
    if-ltz v1, :cond_c

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-lez v7, :cond_a

    .line 194
    const-string v2, "VideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fps ==> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v0, v4

    .line 198
    :cond_a
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/k;->j()V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/hpplay/sdk/source/mirror/k;->a(J)V

    .line 201
    iget-boolean v7, p0, Lcom/hpplay/sdk/source/mirror/k;->k:Z

    if-eqz v7, :cond_d

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/hpplay/sdk/source/mirror/k;->u:J

    sub-long/2addr v8, v10

    cmp-long v7, v8, v12

    if-lez v7, :cond_b

    .line 203
    const-string v7, "VideoEncoder"

    const-string v8, " send  hard beat "

    invoke-static {v7, v8}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v10}, Lcom/hpplay/sdk/source/mirror/e;->g()Ljava/nio/ByteBuffer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/hpplay/sdk/source/mirror/k;->u:J

    .line 213
    :cond_b
    :goto_4
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v7, v1}, Lcom/hpplay/sdk/source/mirror/e;->d(I)V

    :cond_c
    move v1, v0

    goto/16 :goto_2

    .line 208
    :cond_d
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v8, p0, Lcom/hpplay/sdk/source/mirror/k;->m:[Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 210
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->d:Landroid/os/Handler;

    const/16 v8, 0x69

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/k;->d:Landroid/os/Handler;

    const/16 v8, 0x69

    const-wide/16 v10, 0x2710

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 220
    :catch_1
    move-exception v0

    .line 221
    :try_start_5
    const-string v7, "VideoEncoder"

    invoke-static {v7, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method

.method public b()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/k;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 91
    monitor-exit v1

    .line 93
    :cond_0
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->h:Z

    .line 252
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/k;->b()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->h:Z

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->f:Z

    .line 258
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->k:Z

    .line 262
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->k:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->f:Z

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->f:Z

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/k;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v1, "VideoEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 235
    :try_start_0
    const-string v0, "VideoEncoder"

    const-string v1, "sendHeartBit"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->i:Lcom/hpplay/sdk/source/mirror/b/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/k;->p:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mirror/e;->g()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a([Ljava/nio/ByteBuffer;)V

    .line 238
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/k;->d:Landroid/os/Handler;

    const/16 v1, 0x69

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    const-string v0, "VideoEncoder"

    const-string v1, "start run"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/k;->g:Z

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/k;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/k;->k()V

    .line 101
    const-string v1, "VideoEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
