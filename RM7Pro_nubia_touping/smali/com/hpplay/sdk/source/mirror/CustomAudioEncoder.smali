.class public Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;


# static fields
.field public static final a:I = 0xac44

.field private static final b:Ljava/lang/String; = "CustomAudioEncoder"

.field private static final v:I = 0x1

.field private static final w:I = 0x2


# instance fields
.field private A:[B

.field private B:Lcom/hpplay/spxresample/SpxResample;

.field private C:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Ljava/io/FileOutputStream;

.field private c:Landroid/content/Context;

.field private d:Lcom/hpplay/audioread/audioencode;

.field private e:Ljava/net/DatagramSocket;

.field private f:Ljava/net/InetAddress;

.field private g:Ljava/io/RandomAccessFile;

.field private h:Ljava/io/RandomAccessFile;

.field private i:I

.field private j:I

.field private k:[B

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:S

.field private p:I

.field private q:I

.field private r:[B

.field private s:Lcom/hpplay/sdk/source/api/AudioStateListener;

.field private t:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private u:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    iput-object v3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->g:Ljava/io/RandomAccessFile;

    .line 40
    iput-object v3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->h:Ljava/io/RandomAccessFile;

    .line 42
    const/16 v0, 0x4000

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->i:I

    .line 43
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->j:I

    .line 44
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->i:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    .line 46
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->m:Z

    .line 47
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->n:I

    .line 48
    iput-short v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->o:S

    .line 51
    const/high16 v0, 0xf0000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->r:[B

    .line 53
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 54
    const/16 v0, 0xa00

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    .line 58
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->x:I

    .line 59
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->y:I

    .line 61
    iput-object v3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->C:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->D:I

    .line 69
    const-string v0, "CustomAudioEncoder"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->setName(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->c:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private a([BLjava/net/DatagramSocket;Ljava/net/InetAddress;I)V
    .locals 3

    .prologue
    .line 371
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x0

    const/16 v1, -0x80

    :try_start_0
    aput-byte v1, p1, v0

    .line 376
    const/4 v0, 0x1

    const/16 v1, 0x60

    aput-byte v1, p1, v0

    .line 378
    iget-short v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->o:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->o:S

    .line 379
    const/4 v0, 0x2

    iget-short v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->o:S

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 380
    const/4 v0, 0x3

    iget-short v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->o:S

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 383
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->n:I

    add-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->n:I

    .line 384
    const/4 v0, 0x4

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->n:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 385
    const/4 v0, 0x5

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->n:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 386
    const/4 v0, 0x6

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->n:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 387
    const/4 v0, 0x7

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->n:I

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 388
    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 389
    const/16 v0, 0x9

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 390
    const/16 v0, 0xa

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 391
    const/16 v0, 0xb

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 395
    new-instance v0, Ljava/net/DatagramPacket;

    add-int/lit8 v1, p4, 0xc

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->j:I

    invoke-direct {v0, p1, v1, p3, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 396
    invoke-virtual {p2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    :try_start_1
    const-string v1, "CustomAudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static a([BI)[B
    .locals 4

    .prologue
    .line 333
    mul-int/lit8 v0, p1, 0x2

    new-array v1, v0, [B

    .line 334
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 335
    mul-int/lit8 v2, v0, 0x2

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    .line 336
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return-object v1
.end method

.method static a([S)[B
    .locals 3

    .prologue
    .line 327
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 328
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 329
    return-object v0
.end method

.method static a([B)[S
    .locals 3

    .prologue
    .line 321
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 322
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 323
    return-object v0
.end method

.method public static b([BI)[B
    .locals 4

    .prologue
    .line 342
    mul-int/lit8 v0, p1, 0x2

    new-array v1, v0, [B

    .line 343
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 344
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 345
    mul-int/lit8 v2, v0, 0x2

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    .line 346
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 343
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 349
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    goto :goto_1

    .line 352
    :cond_1
    return-object v1
.end method

.method private c([BI)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->E:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->E:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->E:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "CustomAudioEncoder"

    const-string v1, " set audio thread stop status"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->B:Lcom/hpplay/spxresample/SpxResample;

    invoke-virtual {v0}, Lcom/hpplay/spxresample/SpxResample;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->m:Z

    .line 365
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    .line 367
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->interrupt()V

    .line 368
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const-string v1, "CustomAudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(III)V
    .locals 4

    .prologue
    const v2, 0xac44

    const/16 v1, 0xa00

    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    .line 125
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->x:I

    .line 126
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->y:I

    .line 127
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->z:I

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->B:Lcom/hpplay/spxresample/SpxResample;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/hpplay/spxresample/SpxResample;

    invoke-direct {v0}, Lcom/hpplay/spxresample/SpxResample;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->B:Lcom/hpplay/spxresample/SpxResample;

    .line 131
    :cond_0
    const v0, 0xbb80

    if-ne p1, v0, :cond_3

    .line 132
    iput v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    .line 138
    :cond_1
    :goto_0
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    if-eqz v0, :cond_2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->B:Lcom/hpplay/spxresample/SpxResample;

    const v1, 0xac44

    const/4 v2, 0x1

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/hpplay/spxresample/SpxResample;->init(IIII)I

    move-result v0

    .line 141
    const-string v1, "CustomAudioEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------init code --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_2
    :goto_1
    return-void

    .line 133
    :cond_3
    const/16 v0, 0x3e80

    if-ne p1, v0, :cond_4

    .line 134
    iput v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    goto :goto_0

    .line 135
    :cond_4
    if-ne p1, v2, :cond_1

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "CustomAudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public audioMute(Z)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public audioPause()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public audioResume()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->s:Lcom/hpplay/sdk/source/api/AudioStateListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->s:Lcom/hpplay/sdk/source/api/AudioStateListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/AudioStateListener;->onAudioEncoderExit()V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->e:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->e:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->e:Ljava/net/DatagramSocket;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->d:Lcom/hpplay/audioread/audioencode;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->d:Lcom/hpplay/audioread/audioencode;

    invoke-virtual {v0}, Lcom/hpplay/audioread/audioencode;->CloseFdkEncoder()I

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->d:Lcom/hpplay/audioread/audioencode;

    .line 425
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->r:[B

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    .line 427
    const-string v0, "CustomAudioEncoder"

    const-string v1, "audio thread exit..."

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 168
    const-string v0, "CustomAudioEncoder"

    const-string v1, " AudioRecorder run"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/16 v0, -0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 177
    :goto_0
    invoke-static {}, Lcom/hpplay/audioread/audioencode;->a()Lcom/hpplay/audioread/audioencode;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->d:Lcom/hpplay/audioread/audioencode;

    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->d:Lcom/hpplay/audioread/audioencode;

    const v1, 0x2ee00

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/audioread/audioencode;->InitFdkEncoder(II)I

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->f:Ljava/net/InetAddress;

    .line 182
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->e:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 186
    :goto_1
    const/4 v0, 0x0

    .line 187
    const/16 v1, 0x800

    new-array v7, v1, [B

    .line 188
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->i:I

    new-array v8, v1, [B

    .line 189
    const/16 v9, 0x780

    .line 190
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 191
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->i:I

    new-array v11, v1, [B

    .line 193
    const-string v1, "CustomAudioEncoder"

    const-string v2, " start record"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->s:Lcom/hpplay/sdk/source/api/AudioStateListener;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->s:Lcom/hpplay/sdk/source/api/AudioStateListener;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/api/AudioStateListener;->onStartEncoder()V

    .line 197
    :cond_0
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 198
    const/16 v1, 0x2800

    new-array v4, v1, [S

    move v6, v0

    .line 199
    :goto_2
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->m:Z

    if-nez v0, :cond_e

    .line 202
    :try_start_2
    const-string v0, "CustomAudioEncoder"

    const-string v1, "update"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    array-length v0, v0

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    if-ge v0, v1, :cond_3

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    .line 208
    :goto_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->y:I

    const v2, 0xac44

    if-ne v0, v2, :cond_4

    .line 209
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    const/4 v3, 0x0

    array-length v5, v1

    invoke-static {v1, v0, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v0, v1

    .line 243
    :goto_4
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->x:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 244
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->z:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 245
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->b([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    .line 249
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v1, v0

    .line 251
    :goto_6
    if-gtz v1, :cond_8

    .line 253
    const-wide/16 v0, 0xa

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :try_start_4
    const-string v1, "CustomAudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 311
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 312
    :goto_7
    const-string v2, "CustomAudioEncoder"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v0

    .line 313
    goto :goto_2

    .line 171
    :catch_2
    move-exception v0

    .line 172
    const-string v1, "CustomAudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 183
    :catch_3
    move-exception v0

    .line 184
    const-string v1, "CustomAudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 206
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    new-array v1, v0, [B

    goto :goto_3

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    if-eqz v0, :cond_10

    .line 214
    array-length v0, v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 215
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v13, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    array-length v13, v13

    invoke-static {v2, v3, v0, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    array-length v3, v3

    array-length v5, v1

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    .line 220
    :goto_8
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    if-le v1, v2, :cond_5

    .line 221
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {v12, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 223
    :cond_5
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 224
    array-length v1, v0

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    .line 225
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->A:[B

    array-length v5, v5

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 230
    :goto_9
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 231
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    new-array v0, v0, [B

    .line 232
    const/4 v1, 0x0

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->u:I

    invoke-virtual {v12, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 233
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->a([B)[S

    move-result-object v2

    .line 234
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->B:Lcom/hpplay/spxresample/SpxResample;

    const/4 v1, 0x1

    array-length v3, v2

    array-length v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/spxresample/SpxResample;->resample(I[SI[SI)I

    move-result v0

    .line 235
    new-array v1, v0, [S

    .line 236
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v4, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->a([S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    .line 238
    const-string v0, "CustomAudioEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------  >>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    array-length v0, v0

    goto/16 :goto_4

    .line 228
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_9

    .line 246
    :cond_7
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->z:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 247
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    goto/16 :goto_5

    .line 259
    :cond_8
    const/high16 v0, 0xf0000

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->q:I

    const/high16 v3, 0xf0000

    rem-int/2addr v2, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    sub-int v2, v0, v2

    .line 260
    if-le v1, v2, :cond_b

    .line 262
    const/4 v0, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->r:[B

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->q:I

    const/high16 v13, 0xf0000

    rem-int/2addr v5, v13

    invoke-static {v11, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 267
    :goto_a
    :try_start_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->r:[B

    const/4 v3, 0x0

    sub-int v5, v1, v2

    invoke-static {v11, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 278
    :goto_b
    :try_start_8
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->p:I

    const/high16 v2, 0x5dc0000

    if-le v0, v2, :cond_9

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->p:I

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->q:I

    .line 282
    :cond_9
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->q:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move v0, v6

    .line 283
    :cond_a
    :goto_c
    :try_start_9
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->m:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->q:I

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->p:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    sub-int/2addr v1, v2

    if-le v1, v9, :cond_d

    .line 285
    :try_start_a
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->r:[B

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->p:I

    const/high16 v3, 0xf0000

    rem-int/2addr v2, v3

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 290
    :goto_d
    :try_start_b
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->p:I

    add-int/2addr v1, v9

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->p:I

    .line 291
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v10, v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 293
    :try_start_c
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->d:Lcom/hpplay/audioread/audioencode;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    invoke-virtual {v1, v7, v10, v2, v9}, Lcom/hpplay/audioread/audioencode;->FdkEncodeAudio([B[I[BI)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    move-result v0

    .line 297
    :goto_e
    if-nez v0, :cond_c

    .line 299
    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    :try_start_d
    aget v3, v10, v3

    invoke-static {v7, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 303
    :goto_f
    const/4 v1, 0x0

    :try_start_e
    aget v1, v10, v1

    if-lez v1, :cond_a

    .line 304
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->e:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->f:Ljava/net/InetAddress;

    const/4 v3, 0x0

    aget v3, v10, v3

    invoke-direct {p0, v8, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->a([BLjava/net/DatagramSocket;Ljava/net/InetAddress;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_c

    .line 311
    :catch_4
    move-exception v1

    goto/16 :goto_7

    .line 263
    :catch_5
    move-exception v0

    .line 264
    :try_start_f
    const-string v3, "CustomAudioEncoder"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 268
    :catch_6
    move-exception v0

    .line 269
    const-string v2, "CustomAudioEncoder"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_b

    .line 273
    :cond_b
    :try_start_10
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->k:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->r:[B

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->q:I

    const/high16 v13, 0xf0000

    rem-int/2addr v5, v13

    invoke-static {v0, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_b

    .line 274
    :catch_7
    move-exception v0

    .line 275
    :try_start_11
    const-string v2, "CustomAudioEncoder"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_b

    .line 286
    :catch_8
    move-exception v1

    .line 287
    :try_start_12
    const-string v2, "CustomAudioEncoder"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 294
    :catch_9
    move-exception v1

    .line 295
    const-string v2, "CustomAudioEncoder"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 300
    :catch_a
    move-exception v1

    .line 301
    const-string v2, "CustomAudioEncoder"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 307
    :cond_c
    const-string v1, "CustomAudioEncoder"

    const-string v2, "Audio Frame Encode Failed"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    :cond_d
    move v6, v0

    .line 313
    goto/16 :goto_2

    .line 315
    :cond_e
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->b()V

    .line 316
    const-string v0, "CustomAudioEncoder"

    const-string v1, "audio thread exit..."

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    :cond_f
    move v1, v0

    goto/16 :goto_6

    :cond_10
    move-object v0, v1

    goto/16 :goto_8
.end method

.method public setChannel(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public setServerInfo(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 151
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->j:I

    .line 152
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->l:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setStateListener(Lcom/hpplay/sdk/source/api/AudioStateListener;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->s:Lcom/hpplay/sdk/source/api/AudioStateListener;

    .line 438
    return-void
.end method

.method public startTask()V
    .locals 0

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->start()V

    .line 443
    return-void
.end method

.method public stopTask()V
    .locals 0

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->a()V

    .line 448
    return-void
.end method

.method public updatePCMData(III[BII)V
    .locals 3

    .prologue
    .line 99
    if-eqz p4, :cond_0

    if-gtz p6, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->x:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->y:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->z:I

    if-eq p3, v0, :cond_3

    .line 103
    :cond_2
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->x:I

    .line 104
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->y:I

    .line 105
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->z:I

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->a(III)V

    .line 109
    :cond_3
    const-string v0, "CustomAudioEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePCMData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    new-array v0, p6, [B

    .line 112
    const/4 v1, 0x0

    invoke-static {p4, p5, v0, v1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/CustomAudioEncoder;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "CustomAudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
