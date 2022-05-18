.class public Lcom/hpplay/sdk/source/mirror/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final A:I = 0x3567e0

.field public static final B:I = 0x2dc6c0

.field public static final C:I = 0x2625a0

.field public static final D:I = 0x1e8480

.field public static final E:I = 0x16e360

.field public static final F:I = 0xf4240

.field static final synthetic G:Z

.field private static final H:Ljava/lang/String; = "H264Encoder"

.field public static final a:I = -0x2710

.field public static final b:I = -0x2711

.field public static final u:I = 0x989680

.field public static final v:I = 0x6acfc0

.field public static final w:I = 0x5b8d80

.field public static final x:I = 0x4c4b40

.field public static final y:I = 0x44aa20

.field public static final z:I = 0x3d0900


# instance fields
.field private I:I

.field private J:Z

.field private K:I

.field public c:J

.field public d:Landroid/media/MediaCodec$BufferInfo;

.field public e:Landroid/media/MediaCodec;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/nio/ByteBuffer;

.field public i:[Ljava/nio/ByteBuffer;

.field public j:[Ljava/nio/ByteBuffer;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ByteBuffer;

.field public m:[B

.field public n:J

.field public o:Ljava/io/FileOutputStream;

.field public p:Landroid/view/Surface;

.field public q:I

.field public r:I

.field public s:I

.field public t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/hpplay/sdk/source/mirror/e;->G:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->I:I

    .line 46
    const-wide/32 v0, 0x8235

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/e;->c:J

    .line 48
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/e;->t:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/e;->J:Z

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 865
    new-instance v0, Lcom/dd/plist/NSDictionary;

    invoke-direct {v0}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 866
    const-string v1, "deviceId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 867
    const-string v1, "latencyMs"

    const-wide/16 v2, 0x5a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 868
    const-string v1, "sessionID"

    const-wide/32 v2, 0xbc614e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 869
    const-string v1, "version"

    const-string v2, "150.33"

    invoke-virtual {v0, v1, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 870
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/dd/plist/NSObject;

    .line 871
    const-string v2, "SubS"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v4

    .line 872
    const-string v2, "B4En"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v5

    .line 873
    const-string v2, "EnDp"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v6

    .line 874
    const-string v2, "IdEn"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v7

    .line 875
    const-string v2, "IdDp"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v8

    .line 876
    const/4 v2, 0x5

    const-string v3, "EQDp"

    invoke-direct {p0, v3}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v3

    aput-object v3, v1, v2

    .line 877
    const/4 v2, 0x6

    const-string v3, "QueF"

    invoke-direct {p0, v3}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v3

    aput-object v3, v1, v2

    .line 878
    const/4 v2, 0x7

    const-string v3, "Sent"

    invoke-direct {p0, v3}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v3

    aput-object v3, v1, v2

    .line 879
    const-string v2, "fpsInfo"

    new-instance v3, Lcom/dd/plist/NSArray;

    invoke-direct {v3, v1}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    invoke-virtual {v0, v2, v3}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 880
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/dd/plist/NSObject;

    .line 881
    const-string v2, "SubSu"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v4

    .line 882
    const-string v2, "BePxT"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v5

    .line 883
    const-string v2, "AfPxT"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v6

    .line 884
    const-string v2, "BefEn"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v7

    .line 885
    const-string v2, "EmEnc"

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v2

    aput-object v2, v1, v8

    .line 886
    const/4 v2, 0x5

    const-string v3, "QueFr"

    invoke-direct {p0, v3}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v3

    aput-object v3, v1, v2

    .line 887
    const/4 v2, 0x6

    const-string v3, "SndFr"

    invoke-direct {p0, v3}, Lcom/hpplay/sdk/source/mirror/e;->b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v3

    aput-object v3, v1, v2

    .line 888
    const-string v2, "timestampInfo"

    new-instance v3, Lcom/dd/plist/NSArray;

    invoke-direct {v3, v1}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    invoke-virtual {v0, v2, v3}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 889
    return-object v0
.end method

.method private a(IIS)V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 899
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 900
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 901
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 902
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 903
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 904
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    .line 905
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/nio/ByteBuffer;J)V

    .line 906
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 908
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 909
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 910
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 911
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 912
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    .prologue
    .line 460
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugAVListener()Lcom/hpplay/sdk/source/api/IDebugAVListener;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 463
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v6, v2, v3

    .line 464
    new-array v7, v6, [B

    .line 465
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v7, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 468
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    invoke-interface/range {v1 .. v7}, Lcom/hpplay/sdk/source/api/IDebugAVListener;->onVideoCallback(JIII[B)V

    .line 469
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;
    .locals 2

    .prologue
    .line 893
    new-instance v0, Lcom/dd/plist/NSDictionary;

    invoke-direct {v0}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 894
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 895
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)I
    .locals 10

    .prologue
    const/4 v7, 0x5

    const/4 v9, 0x1

    .line 502
    monitor-enter p0

    if-ltz p3, :cond_1

    .line 503
    :try_start_0
    invoke-direct {p0, p2, p4}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 504
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    .line 505
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 506
    and-int/lit8 v0, v0, 0xf

    int-to-byte v8, v0

    .line 507
    const/4 v0, 0x7

    if-ne v8, v0, :cond_4

    .line 508
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 509
    const-string v1, "csd-0"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 511
    const-string v2, "csd-1"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 513
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 514
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v2, v1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    .line 516
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sps.length ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ---> pps.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-- BufferInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    const-string v3, "packetFrame"

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 519
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 520
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 522
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    const/16 p3, -0x2711

    .line 598
    :cond_1
    :goto_0
    monitor-exit p0

    return p3

    .line 527
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 528
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 529
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 530
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    .line 531
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 532
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 533
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-wide v4, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    .line 540
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    .line 541
    iget v0, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 542
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    :try_start_3
    const-string v1, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start writ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 546
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 547
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 553
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 554
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 555
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 556
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    .line 557
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/nio/ByteBuffer;J)V

    .line 558
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 559
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 560
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 561
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 562
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 564
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-eq v1, v9, :cond_5

    .line 565
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 566
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 568
    const/16 p3, -0x2710

    goto/16 :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v6, v8

    goto/16 :goto_1

    .line 548
    :catch_1
    move-exception v0

    .line 549
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 571
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    iget v2, p4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 572
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 573
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 574
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    iget v1, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 575
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 576
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0

    .line 577
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0

    .line 579
    if-ne v6, v7, :cond_6

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/e;->J:Z

    if-nez v0, :cond_7

    .line 580
    :cond_6
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0

    goto/16 :goto_0

    .line 582
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_8

    .line 583
    const/high16 v0, 0x300000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    .line 584
    const/high16 v0, 0x300000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    .line 586
    :cond_8
    iget v7, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 587
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    const/4 v2, 0x0

    add-int/lit8 v3, v7, -0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 589
    add-int/lit8 v0, v7, -0x5

    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v3, v0, 0x10

    .line 590
    invoke-static {}, Lcom/hpplay/sdk/source/mirror/h;->a()Lcom/hpplay/sdk/source/mirror/h;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/mirror/h;->a([BII[BI)V

    .line 591
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 592
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    const/4 v2, 0x0

    add-int/lit8 v3, v7, -0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 593
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 594
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move p3, v6

    .line 595
    goto/16 :goto_0
.end method

.method public declared-synchronized a([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/e;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 482
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 484
    invoke-virtual {p0, p2, v1}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Landroid/media/MediaFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 487
    :cond_1
    if-ltz v0, :cond_0

    .line 488
    :try_start_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->j:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/hpplay/sdk/source/mirror/e;->a([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 253
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const v4, 0x2dc6c0

    const v3, 0x16e360

    const v2, 0xf4240

    const v1, 0x1e8480

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    const-string v0, "H264Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitrateLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :pswitch_0
    return-void

    .line 264
    :pswitch_1
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    const v1, 0x3567e0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    const v1, 0x2625a0

    if-eq v0, v1, :cond_0

    .line 268
    const v0, 0x4c4b40

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    goto :goto_0

    .line 271
    :pswitch_2
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    if-eq v0, v2, :cond_0

    .line 275
    iput v4, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    goto :goto_0

    .line 278
    :pswitch_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    if-eq v0, v3, :cond_0

    .line 281
    iput v1, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    goto :goto_0

    .line 284
    :pswitch_4
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    .line 244
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    .line 245
    return-void
.end method

.method public declared-synchronized a(Landroid/media/MediaCodec;I)V
    .locals 1

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    :cond_0
    monitor-exit p0

    return-void

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/io/FileOutputStream;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    .line 428
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;J)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    .line 951
    sget-boolean v0, Lcom/hpplay/sdk/source/mirror/e;->G:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 952
    :cond_0
    div-long v0, p2, v2

    div-long/2addr v0, v2

    .line 953
    const-wide/16 v2, -0x1

    const-wide v4, 0x40b0c6f7a0b5ed8dL    # 4294.967296

    const-wide/32 v6, 0xf4240

    rem-long v6, p2, v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    and-long/2addr v2, v4

    .line 954
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v2, v4

    .line 955
    long-to-int v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 956
    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 957
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 236
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    .line 237
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    .line 238
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->j:[Ljava/nio/ByteBuffer;

    .line 240
    return-void
.end method

.method public a([BIJ)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 432
    if-ltz v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->i:[Ljava/nio/ByteBuffer;

    aget-object v7, v0, v1

    .line 434
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 435
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 436
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    move v3, v2

    move-wide v4, p3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 438
    :cond_0
    invoke-virtual {v7, p1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 439
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    move v3, p2

    move-wide v4, p3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 441
    :cond_1
    return-void
.end method

.method public declared-synchronized a([Ljava/nio/ByteBuffer;Landroid/media/MediaFormat;)V
    .locals 9

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/e;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 652
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 653
    const-string v0, "csd-0"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 655
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v4, v3, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 656
    const-string v4, "csd-1"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 657
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    new-array v5, v5, [B

    .line 658
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v6, v5, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 660
    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_0

    .line 661
    const-string v6, "H264Encoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start set sps  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    new-array v6, v6, [B

    .line 663
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v0, v6, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 664
    const-string v0, "H264Encoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start set pps  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 666
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :try_start_2
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 669
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 676
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 677
    const/4 v0, 0x5

    aget-byte v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 678
    const/4 v0, 0x6

    aget-byte v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 679
    const/4 v0, 0x7

    aget-byte v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 680
    const/16 v0, 0xff

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 681
    const/16 v0, 0xe1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 682
    array-length v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 683
    const/4 v0, 0x4

    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 684
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 685
    array-length v0, v5

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 686
    const/4 v0, 0x4

    array-length v3, v5

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v5, v0, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 687
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 688
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 690
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 691
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 692
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/16 v2, 0x106

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 695
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    .line 696
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/nio/ByteBuffer;J)V

    .line 697
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 698
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 699
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 700
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 701
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    aput-object v2, p1, v1

    .line 702
    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, p1, v1

    .line 703
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 704
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    :goto_1
    monitor-exit p0

    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    :try_start_4
    const-string v4, "H264Encoder"

    invoke-static {v4, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 705
    :catch_1
    move-exception v0

    .line 706
    :try_start_5
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 624
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/lang/String;)Lcom/dd/plist/NSDictionary;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeToArray(Lcom/dd/plist/NSObject;)[B

    move-result-object v0

    .line 625
    new-instance v1, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 626
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/g;->B()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const-string v2, "application/octet-stream"

    .line 627
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->m(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 628
    invoke-virtual {v1, p2}, Lcom/hpplay/sdk/source/protocol/g;->O(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const-string v2, "AirPlay/150.33"

    .line 629
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v1

    .line 632
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, p1, v2

    .line 633
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 634
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 635
    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, p1, v1

    .line 636
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 637
    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 638
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 639
    const-string v0, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sarrayOfByte1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(IIII)Z
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/4 v0, 0x1

    .line 89
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    .line 90
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    .line 91
    const-string v1, "video/avc"

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 92
    const-string v2, "color-format"

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/e;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 93
    const-string v2, "bitrate"

    invoke-virtual {v1, v2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 94
    const-string v2, "frame-rate"

    invoke-virtual {v1, v2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 95
    const-string v2, "i-frame-interval"

    const v3, 0x186a0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 101
    :try_start_0
    const-string v2, "video/avc"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    .line 102
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 103
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    .line 109
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    .line 110
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    .line 111
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->i:[Ljava/nio/ByteBuffer;

    .line 112
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->j:[Ljava/nio/ByteBuffer;

    .line 113
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(IIIIILjava/util/HashMap;Landroid/media/MediaCodec$Callback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/media/MediaCodec$Callback;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 138
    monitor-enter p0

    :try_start_0
    const-string v0, "H264Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScreenRecordCodec  width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " height "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bitrate  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    .line 140
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    .line 141
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    .line 142
    const v0, 0x2dc6c0

    if-ne p3, v0, :cond_0

    .line 143
    const v0, 0x3567e0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    .line 145
    :cond_0
    const v0, 0xf4240

    div-int/2addr v0, p4

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/e;->c:J

    .line 146
    const-string v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 147
    const-string v0, "color-format"

    const v1, 0x7f000789

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 148
    const-string v0, "bitrate"

    invoke-virtual {v3, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 149
    const-string v0, "frame-rate"

    invoke-virtual {v3, v0, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 150
    const-string v0, "i-frame-interval"

    invoke-virtual {v3, v0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 151
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "profile"

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 153
    const-string v0, "level"

    const/16 v1, 0x20

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 154
    const-string v0, "bitrate-mode"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 156
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    if-nez p6, :cond_6

    .line 158
    const-string v0, "H264Encoder"

    const-string v1, "smartis sample configure"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "repeat-previous-frame-after"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 160
    const-string v0, "profile"

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    const-string v0, "level"

    const/16 v1, 0x20

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 162
    const-string v0, "bitrate-mode"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 163
    const-string v0, "ro.product.name"

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "H264Encoder"

    const-string v1, "smartis sample darwim configure"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "vendor.qti-ext-enc-low-latency.enable"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 170
    const-string v0, "vendor.qti-ext-enc-initial-qp.qp-i-enable"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 171
    const-string v0, "vendor.qti-ext-enc-initial-qp.qp-p-enable"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 172
    const-string v0, "vendor.qti-ext-enc-initial-qp.qp-i"

    const/16 v1, 0x12

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 173
    const-string v0, "vendor.qti-ext-enc-initial-qp.qp-p"

    const/16 v1, 0x12

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 175
    const-string v0, "vendor.qti-ext-enc-qp-range.qp-i-min"

    const/16 v1, 0x12

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 176
    const-string v0, "vendor.qti-ext-enc-qp-range.qp-i-max"

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 177
    const-string v0, "vendor.qti-ext-enc-qp-range.qp-p-min"

    const/16 v1, 0x12

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 178
    const-string v0, "vendor.qti-ext-enc-qp-range.qp-p-max"

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/e;->t:J

    .line 211
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    .line 212
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->p:Landroid/view/Surface;

    .line 217
    :cond_3
    if-eqz p7, :cond_4

    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0, p7}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 220
    :cond_4
    const-string v0, "H264Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created input surface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/e;->p:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    const/16 v0, 0x80

    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    .line 227
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    .line 228
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    .line 229
    if-nez p7, :cond_5

    .line 230
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->j:[Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move v0, v2

    .line 232
    :goto_0
    monitor-exit p0

    return v0

    .line 186
    :cond_6
    :try_start_3
    const-string v0, "H264Encoder"

    const-string v1, "smartis custom configure"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 188
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 194
    const-string v5, "H264Encoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediacodec configure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 197
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 198
    :cond_8
    :try_start_4
    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_9

    .line 199
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 200
    :cond_9
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_a

    .line 201
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 202
    :cond_a
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 203
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(IIIILjava/util/HashMap;Landroid/media/MediaCodec$Callback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/media/MediaCodec$Callback;",
            ")Z"
        }
    .end annotation

    .prologue
    const/16 v5, 0x3c

    .line 118
    monitor-enter p0

    const/4 v0, 0x5

    .line 119
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v5

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p5

    move-object v7, p6

    .line 123
    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/mirror/e;->a(IIIIILjava/util/HashMap;Landroid/media/MediaCodec$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v5, v0

    move v4, p4

    goto :goto_0
.end method

.method public declared-synchronized a(Z)Z
    .locals 7

    .prologue
    const v5, 0x2625a0

    const v4, 0x1e8480

    const v3, 0x16e360

    const v2, 0xf4240

    const/4 v0, 0x1

    .line 304
    monitor-enter p0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x17

    if-ge v1, v6, :cond_0

    .line 351
    :goto_0
    monitor-exit p0

    return v0

    .line 307
    :cond_0
    const/4 v1, 0x0

    .line 308
    :try_start_1
    iget v6, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    sparse-switch v6, :sswitch_data_0

    move v0, v1

    .line 347
    :goto_1
    const-string v1, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bitrateAdjust "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDecline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 349
    const-string v2, "video-bitrate"

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :sswitch_0
    if-eqz p1, :cond_1

    const v0, 0x6acfc0

    :goto_2
    :try_start_2
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 311
    goto :goto_1

    .line 310
    :cond_1
    const v0, 0x989680

    goto :goto_2

    .line 313
    :sswitch_1
    if-eqz p1, :cond_2

    const v0, 0x5b8d80

    :goto_3
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 314
    goto :goto_1

    .line 313
    :cond_2
    const v0, 0x989680

    goto :goto_3

    .line 316
    :sswitch_2
    if-eqz p1, :cond_3

    const v0, 0x4c4b40

    :goto_4
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 317
    goto :goto_1

    .line 316
    :cond_3
    const v0, 0x6acfc0

    goto :goto_4

    .line 319
    :sswitch_3
    if-eqz p1, :cond_4

    const v0, 0x44aa20

    :goto_5
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 320
    goto :goto_1

    .line 319
    :cond_4
    const v0, 0x5b8d80

    goto :goto_5

    .line 322
    :sswitch_4
    if-eqz p1, :cond_5

    const v0, 0x3d0900

    :goto_6
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 323
    goto :goto_1

    .line 322
    :cond_5
    const v0, 0x4c4b40

    goto :goto_6

    .line 325
    :sswitch_5
    if-eqz p1, :cond_6

    const v0, 0x3567e0

    :goto_7
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 326
    goto/16 :goto_1

    .line 325
    :cond_6
    const v0, 0x44aa20

    goto :goto_7

    .line 328
    :sswitch_6
    if-eqz p1, :cond_7

    const v0, 0x2dc6c0

    :goto_8
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 329
    goto/16 :goto_1

    .line 328
    :cond_7
    const v0, 0x3d0900

    goto :goto_8

    .line 331
    :sswitch_7
    if-eqz p1, :cond_8

    :goto_9
    iput v5, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 332
    goto/16 :goto_1

    .line 331
    :cond_8
    const v5, 0x3567e0

    goto :goto_9

    .line 334
    :sswitch_8
    if-eqz p1, :cond_9

    :goto_a
    iput v4, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 335
    goto/16 :goto_1

    .line 334
    :cond_9
    const v4, 0x2dc6c0

    goto :goto_a

    .line 337
    :sswitch_9
    if-eqz p1, :cond_a

    :goto_b
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 338
    goto/16 :goto_1

    :cond_a
    move v3, v5

    .line 337
    goto :goto_b

    .line 340
    :sswitch_a
    if-eqz p1, :cond_b

    :goto_c
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    move v0, v1

    .line 341
    goto/16 :goto_1

    :cond_b
    move v2, v4

    .line 340
    goto :goto_c

    .line 343
    :sswitch_b
    if-eqz p1, :cond_c

    move v1, v2

    :goto_d
    iput v1, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_d

    .line 308
    :sswitch_data_0
    .sparse-switch
        0xf4240 -> :sswitch_b
        0x16e360 -> :sswitch_a
        0x1e8480 -> :sswitch_9
        0x2625a0 -> :sswitch_8
        0x2dc6c0 -> :sswitch_7
        0x3567e0 -> :sswitch_6
        0x3d0900 -> :sswitch_5
        0x44aa20 -> :sswitch_4
        0x4c4b40 -> :sswitch_3
        0x5b8d80 -> :sswitch_2
        0x6acfc0 -> :sswitch_1
        0x989680 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()I
    .locals 7

    .prologue
    const/16 v2, 0x15

    const/4 v0, 0x0

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/e;->c()[I

    move-result-object v3

    .line 362
    if-nez v3, :cond_0

    .line 390
    :goto_0
    return v2

    :cond_0
    move v1, v0

    .line 365
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 366
    const-string v4, "H264Encoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the support color space is ==>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    aget v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 365
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :sswitch_0
    aget v1, v3, v0

    goto :goto_2

    .line 372
    :sswitch_1
    aget v1, v3, v0

    goto :goto_2

    .line 375
    :sswitch_2
    aget v1, v3, v0

    goto :goto_2

    .line 378
    :sswitch_3
    aget v1, v3, v0

    goto :goto_2

    .line 381
    :sswitch_4
    aget v1, v3, v0

    goto :goto_2

    .line 386
    :cond_1
    if-gtz v1, :cond_2

    move v1, v2

    .line 389
    :cond_2
    const-string v0, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current color space is ==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 390
    goto :goto_0

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x27 -> :sswitch_2
        0x7fa30c00 -> :sswitch_4
    .end sparse-switch
.end method

.method public declared-synchronized b([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 745
    monitor-enter p0

    if-ltz p3, :cond_0

    .line 746
    :try_start_0
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    .line 747
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 748
    and-int/lit8 v0, v0, 0xf

    int-to-byte v1, v0

    .line 749
    const/4 v0, 0x7

    if-ne v1, v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 751
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const/16 p3, -0x2711

    .line 809
    :cond_0
    :goto_0
    monitor-exit p0

    return p3

    .line 754
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 756
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    :try_start_2
    const-string v2, "H264Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 760
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 761
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    :cond_2
    :goto_1
    :try_start_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    const/16 v2, 0x800

    if-le v0, v2, :cond_3

    .line 768
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    .line 771
    :cond_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    iget v2, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v2

    .line 773
    iget v2, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-short v3, v1

    invoke-direct {p0, v2, v0, v3}, Lcom/hpplay/sdk/source/mirror/e;->a(IIS)V

    .line 775
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 776
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 777
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 778
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 779
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 780
    const/16 p3, -0x2710

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    const-string v2, "H264Encoder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 782
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    iget v3, p4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 783
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 785
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    aput-object v2, p1, v0

    .line 786
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 787
    const/4 v0, 0x5

    if-ne v1, v0, :cond_5

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/e;->J:Z

    if-nez v0, :cond_6

    .line 788
    :cond_5
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0

    .line 806
    :goto_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0

    .line 807
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    goto/16 :goto_0

    .line 791
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_7

    .line 792
    const/high16 v0, 0x300000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    .line 793
    const/high16 v0, 0x300000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    .line 795
    :cond_7
    iget v0, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 796
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 797
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 798
    add-int/lit8 v1, v0, -0x5

    div-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x10

    .line 800
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 801
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 802
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 803
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 294
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    .line 295
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/e;->J:Z

    .line 424
    return-void
.end method

.method public declared-synchronized b([Ljava/nio/ByteBuffer;Landroid/media/MediaFormat;)V
    .locals 6

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    const-string v0, "csd-0"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 822
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 824
    const-string v1, "csd-1"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 825
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v2, v2, [B

    .line 826
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 828
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 829
    const-string v3, "H264Encoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start set sps  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    new-array v3, v3, [B

    .line 831
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 832
    const-string v0, "H264Encoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start set pps  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 834
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 836
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 837
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 838
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 840
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 845
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 846
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    add-int/2addr v0, v1

    .line 853
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v3, 0x64

    invoke-direct {p0, v1, v0, v3}, Lcom/hpplay/sdk/source/mirror/e;->a(IIS)V

    .line 854
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0

    .line 855
    const/4 v0, 0x1

    aput-object v2, p1, v0

    .line 856
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    aput-object v1, p1, v0

    .line 857
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/e;->K:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 861
    :goto_1
    monitor-exit p0

    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 848
    :try_start_3
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 858
    :catch_1
    move-exception v0

    .line 859
    :try_start_4
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()[I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 395
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v6

    .line 396
    const/4 v0, 0x0

    move v5, v3

    .line 397
    :goto_0
    if-ge v5, v6, :cond_4

    if-nez v0, :cond_4

    .line 398
    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    move v2, v3

    move v4, v3

    .line 405
    :goto_2
    array-length v8, v7

    if-ge v2, v8, :cond_3

    if-nez v4, :cond_3

    .line 406
    aget-object v8, v7, v2

    const-string v9, "video/avc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 407
    const/4 v4, 0x1

    .line 405
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 410
    :cond_3
    if-eqz v4, :cond_0

    move-object v0, v1

    .line 413
    goto :goto_1

    .line 415
    :cond_4
    if-eqz v0, :cond_5

    .line 416
    const-string v1, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "supporting video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_5
    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 419
    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    return-object v0
.end method

.method public declared-synchronized d()I
    .locals 4

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/e;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(I)V
    .locals 2

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 924
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :cond_0
    monitor-exit p0

    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->j:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 457
    return-void
.end method

.method public g()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 603
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 604
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 605
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 606
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 607
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    .line 608
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/e;->n:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/mirror/e;->a(Ljava/nio/ByteBuffer;J)V

    .line 609
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 610
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 611
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 612
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->h:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public h()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 929
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 930
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 931
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 933
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 934
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 935
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 936
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 937
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 938
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 939
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 940
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 941
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 942
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 943
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 944
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 945
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/e;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 946
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 947
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 948
    return-void
.end method

.method public declared-synchronized i()V
    .locals 2

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    const-string v0, "H264Encoder"

    const-string v1, "releaseEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 963
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->p:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->p:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 980
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 986
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 991
    :cond_2
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->e:Landroid/media/MediaCodec;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 993
    monitor-exit p0

    return-void

    .line 964
    :catch_0
    move-exception v0

    .line 965
    :try_start_6
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 981
    :catch_1
    move-exception v0

    .line 982
    :try_start_7
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 987
    :catch_2
    move-exception v0

    .line 988
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized j()V
    .locals 2

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/e;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :try_start_1
    const-string v0, "H264Encoder"

    const-string v1, "h264endocer stopTask "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->m:[B

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->d:Landroid/media/MediaCodec$BufferInfo;

    .line 1001
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->l:Ljava/nio/ByteBuffer;

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->f:Ljava/nio/ByteBuffer;

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->g:Ljava/nio/ByteBuffer;

    .line 1015
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->i:[Ljava/nio/ByteBuffer;

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/e;->j:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    :goto_0
    monitor-exit p0

    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    :try_start_2
    const-string v1, "H264Encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
