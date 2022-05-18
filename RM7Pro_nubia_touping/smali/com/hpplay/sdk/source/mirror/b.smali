.class public Lcom/hpplay/sdk/source/mirror/b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;


# static fields
.field public static final a:Ljava/lang/String; = "mi"

.field public static final b:Ljava/lang/String; = "vivo"

.field private static final c:Ljava/lang/String; = "AudioEncoder"


# instance fields
.field private A:Z

.field private B:[B

.field private C:[B

.field private D:[B

.field private E:[B

.field private F:[B

.field private G:[B

.field private H:[I

.field private I:Ljava/io/OutputStream;

.field private J:Lcom/hpplay/sdk/source/api/AudioStateListener;

.field private K:Z

.field private L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

.field private M:I

.field private N:I

.field private O:I

.field private final d:I

.field private final e:I

.field private f:Landroid/content/Context;

.field private g:Landroid/media/AudioRecord;

.field private h:Lcom/hpplay/audioread/audioencode;

.field private i:Ljava/net/DatagramSocket;

.field private j:Ljava/net/InetAddress;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:J

.field private s:I

.field private t:S

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/16 v0, 0xc

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->d:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->e:I

    .line 55
    const v0, 0xac44

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    .line 56
    const/16 v0, 0x800

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    .line 57
    const/16 v0, 0x780

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    .line 58
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    .line 59
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->o:I

    .line 61
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->q:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b;->r:J

    .line 63
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->s:I

    .line 64
    iput-short v3, p0, Lcom/hpplay/sdk/source/mirror/b;->t:S

    .line 65
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->u:Z

    .line 68
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->x:Z

    .line 69
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->y:Z

    .line 70
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->z:Z

    .line 71
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b;->A:Z

    .line 73
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->B:[B

    .line 74
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->C:[B

    .line 75
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->D:[B

    .line 76
    const/16 v0, 0x1400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    .line 77
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->F:[B

    .line 78
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->G:[B

    .line 79
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->H:[I

    .line 85
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->K:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 87
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    .line 88
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    .line 89
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    .line 111
    const-string v0, "AudioEncoder"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/b;->setName(Ljava/lang/String;)V

    .line 112
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b;->w:Z

    .line 113
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const v0, 0xbb80

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    .line 115
    const-string v0, "AudioEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecordThread ,sr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    const-string v0, "AudioEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecordThread ,sp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   isSystemApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/b;->c()V

    .line 120
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->K:Z

    .line 121
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestampBean()Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 122
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    .line 123
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    .line 124
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/16 v0, 0xc

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->d:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->e:I

    .line 55
    const v0, 0xac44

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    .line 56
    const/16 v0, 0x800

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    .line 57
    const/16 v0, 0x780

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    .line 58
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    .line 59
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->o:I

    .line 61
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->q:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b;->r:J

    .line 63
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->s:I

    .line 64
    iput-short v3, p0, Lcom/hpplay/sdk/source/mirror/b;->t:S

    .line 65
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->u:Z

    .line 68
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->x:Z

    .line 69
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->y:Z

    .line 70
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->z:Z

    .line 71
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b;->A:Z

    .line 73
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->B:[B

    .line 74
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->C:[B

    .line 75
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->D:[B

    .line 76
    const/16 v0, 0x1400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    .line 77
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->F:[B

    .line 78
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->G:[B

    .line 79
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->H:[I

    .line 85
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->K:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 87
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    .line 88
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    .line 89
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    .line 92
    const-string v0, "AudioEncoder"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/b;->setName(Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b;->f:Landroid/content/Context;

    .line 94
    iput-boolean p2, p0, Lcom/hpplay/sdk/source/mirror/b;->v:Z

    .line 95
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "is_system_app"

    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->w:Z

    .line 96
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const v0, 0xbb80

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    .line 98
    const-string v0, "AudioEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecordThread ,sr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    const-string v0, "AudioEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecordThread ,sp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   isSystemApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/b;->c()V

    .line 103
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->K:Z

    .line 104
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugTimestampBean()Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 105
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    .line 106
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    .line 107
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    .line 108
    return-void
.end method

.method private a(I[B)V
    .locals 8

    .prologue
    .line 216
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getDebugAVListener()Lcom/hpplay/sdk/source/api/IDebugAVListener;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    .line 218
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/b;->r:J

    div-int/lit8 v0, p1, 0x4

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/b;->r:J

    .line 219
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/b;->r:J

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    const/4 v5, 0x2

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/hpplay/sdk/source/api/IDebugAVListener;->onAudioCallback(JIII[B)V

    .line 221
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->K:Z

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    .line 228
    new-instance v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;-><init>()V

    .line 229
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setSerial(I)V

    .line 230
    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setCaptureTS(J)V

    .line 232
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getAudioTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a([BLjava/net/DatagramSocket;Ljava/net/InetAddress;I)V
    .locals 6

    .prologue
    .line 437
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->v:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    const/4 v0, 0x0

    const/16 v1, -0x80

    :try_start_0
    aput-byte v1, p1, v0

    .line 442
    const/4 v0, 0x1

    const/16 v1, 0x60

    aput-byte v1, p1, v0

    .line 444
    iget-short v0, p0, Lcom/hpplay/sdk/source/mirror/b;->t:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hpplay/sdk/source/mirror/b;->t:S

    .line 445
    const/4 v0, 0x2

    iget-short v1, p0, Lcom/hpplay/sdk/source/mirror/b;->t:S

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 446
    const/4 v0, 0x3

    iget-short v1, p0, Lcom/hpplay/sdk/source/mirror/b;->t:S

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 449
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->s:I

    add-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->s:I

    .line 459
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 460
    const/4 v2, 0x4

    const/16 v3, 0x38

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 461
    const/4 v2, 0x5

    const/16 v3, 0x30

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 462
    const/4 v2, 0x6

    const/16 v3, 0x28

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 463
    const/4 v2, 0x7

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 464
    const/16 v2, 0x8

    const/16 v3, 0x18

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 465
    const/16 v2, 0x9

    const/16 v3, 0x10

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 466
    const/16 v2, 0xa

    const/16 v3, 0x8

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 467
    const/16 v2, 0xb

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 478
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 479
    add-int/lit8 v0, p4, 0x4

    add-int/lit8 v0, v0, 0xc

    new-array v0, v0, [B

    .line 480
    add-int/lit8 v1, p4, 0xc

    add-int/lit8 v1, v1, 0x4

    .line 481
    const/4 v2, 0x0

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 482
    const/4 v2, 0x1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 483
    const/4 v2, 0x2

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 484
    const/4 v2, 0x3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 485
    const/4 v1, 0x0

    const/4 v2, 0x4

    add-int/lit8 v3, p4, 0xc

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    :try_start_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 488
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    :try_start_2
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/b;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 494
    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->x:Z

    if-nez v0, :cond_1

    .line 495
    new-instance v0, Ljava/net/DatagramPacket;

    add-int/lit8 v1, p4, 0xc

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->o:I

    invoke-direct {v0, p1, v1, p3, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 496
    invoke-virtual {p2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->K:Z

    if-eqz v0, :cond_0

    .line 242
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    .line 243
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getAudioTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSerial()I

    move-result v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->N:I

    if-ne v1, v2, :cond_0

    .line 247
    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setEncodeTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    .line 153
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->w:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->u:Z

    .line 155
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->f:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 157
    const-string v1, "AudioEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.security.permission"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "grant_permission"

    const-string v3, "lecast"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->u:Z

    if-eqz v0, :cond_3

    .line 171
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    invoke-static {v0, v6, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    .line 172
    const-string v0, "AudioEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minBufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v1, 0x8

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    const/16 v3, 0xc

    const/4 v4, 0x2

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    mul-int/lit8 v5, v5, 0xa

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    .line 180
    const-string v1, "AudioEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sample: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-nez v0, :cond_2

    .line 184
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    :goto_3
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/b;->d()V

    .line 199
    :cond_2
    :goto_4
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "AudioEncoder"

    const-string v2, "call error"

    invoke-static {v1, v2, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 185
    :catch_2
    move-exception v0

    .line 186
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 190
    :catch_3
    move-exception v0

    .line 191
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 196
    :cond_3
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/b;->d()V

    goto :goto_4
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->K:Z

    if-eqz v0, :cond_0

    .line 259
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    .line 260
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getAudioTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    .line 263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSerial()I

    move-result v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->O:I

    if-ne v1, v2, :cond_0

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->setSendTime(J)V

    .line 265
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->L:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->audioWriteSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x2

    .line 202
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->u:Z

    if-nez v0, :cond_0

    .line 203
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    invoke-static {v0, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    .line 206
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    const/16 v3, 0xc

    const/4 v4, 0x2

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b;->n:I

    mul-int/lit8 v5, v5, 0xa

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    .line 208
    const-string v0, "AudioEncoder"

    const-string v1, "init setAudioSourceMic-----"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "AudioEncoder"

    const-string v1, " set audio thread stop status"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->q:Z

    .line 433
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/b;->interrupt()V

    .line 434
    return-void
.end method

.method public audioMute(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/b;->y:Z

    .line 285
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->A:Z

    .line 286
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->z:Z

    .line 287
    return-void
.end method

.method public audioPause()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->x:Z

    .line 276
    return-void
.end method

.method public audioResume()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b;->x:Z

    .line 280
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->J:Lcom/hpplay/sdk/source/api/AudioStateListener;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->J:Lcom/hpplay/sdk/source/api/AudioStateListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/AudioStateListener;->onAudioEncoderExit()V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 568
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->i:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->i:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->i:Ljava/net/DatagramSocket;

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->h:Lcom/hpplay/audioread/audioencode;

    if-eqz v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->h:Lcom/hpplay/audioread/audioencode;

    invoke-virtual {v0}, Lcom/hpplay/audioread/audioencode;->CloseFdkEncoder()I

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->h:Lcom/hpplay/audioread/audioencode;

    .line 592
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b;->r:J

    .line 593
    const-string v0, "AudioEncoder"

    const-string v1, "audio thread exit..."

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    :try_start_5
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 576
    :catch_1
    move-exception v0

    .line 577
    :try_start_6
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 581
    :catch_2
    move-exception v0

    .line 582
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 15

    .prologue
    .line 296
    const-string v0, "AudioEncoder"

    const-string v1, " AudioRecorder run"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 301
    :cond_0
    const/16 v0, -0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    invoke-static {}, Lcom/hpplay/audioread/audioencode;->a()Lcom/hpplay/audioread/audioencode;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->h:Lcom/hpplay/audioread/audioencode;

    .line 307
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->h:Lcom/hpplay/audioread/audioencode;

    const v1, 0x2ee00

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/audioread/audioencode;->InitFdkEncoder(II)I

    .line 308
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 309
    const-string v0, "AudioEncoder"

    const-string v1, "use mic Audio Record Failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/b;->b()V

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 314
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 315
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->j:Ljava/net/InetAddress;

    .line 317
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->i:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 322
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 324
    const-string v0, "AudioEncoder"

    const-string v1, " start record"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->J:Lcom/hpplay/sdk/source/api/AudioStateListener;

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b;->J:Lcom/hpplay/sdk/source/api/AudioStateListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/AudioStateListener;->onStartEncoder()V

    .line 328
    :cond_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 330
    const/4 v1, 0x0

    .line 331
    const/4 v0, 0x0

    .line 333
    :cond_4
    :goto_3
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->q:Z

    if-nez v3, :cond_10

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 335
    const-wide/16 v8, 0x0

    .line 337
    iget v3, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    if-ge v1, v3, :cond_8

    .line 338
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->y:Z

    if-eqz v3, :cond_6

    .line 339
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->z:Z

    if-nez v3, :cond_5

    .line 340
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->z:Z

    .line 342
    :try_start_2
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 343
    const-string v3, "AudioEncoder"

    const-string v4, "stop AudioRecord"

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 348
    :cond_5
    :goto_4
    const/4 v3, 0x0

    .line 361
    :goto_5
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b;->D:[B

    invoke-direct {p0, v3, v4}, Lcom/hpplay/sdk/source/mirror/b;->a(I[B)V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 363
    if-gtz v3, :cond_9

    .line 365
    const-wide/16 v4, 0xa

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 366
    :catch_1
    move-exception v3

    .line 367
    const-string v4, "AudioEncoder"

    invoke-static {v4, v3}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 319
    :catch_2
    move-exception v0

    .line 320
    const-string v1, "AudioEncoder"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 344
    :catch_3
    move-exception v3

    .line 345
    const-string v4, "AudioEncoder"

    invoke-static {v4, v3}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 350
    :cond_6
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->A:Z

    if-nez v3, :cond_7

    .line 351
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b;->A:Z

    .line 353
    :try_start_4
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 354
    const-string v3, "AudioEncoder"

    const-string v4, "start AudioRecord"

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 359
    :cond_7
    :goto_6
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->g:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b;->D:[B

    const/4 v5, 0x0

    iget v7, p0, Lcom/hpplay/sdk/source/mirror/b;->l:I

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    goto :goto_5

    .line 355
    :catch_4
    move-exception v3

    .line 356
    const-string v4, "AudioEncoder"

    invoke-static {v4, v3}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 372
    :cond_8
    const/4 v3, 0x0

    .line 376
    :cond_9
    if-gtz v1, :cond_a

    if-lez v3, :cond_c

    .line 377
    :cond_a
    add-int v0, v3, v1

    .line 378
    if-lez v3, :cond_b

    .line 379
    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/b;->D:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    invoke-static {v7, v10, v11, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    :cond_b
    const/4 v1, 0x0

    .line 384
    :cond_c
    iget v3, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    if-le v3, v0, :cond_d

    .line 385
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 387
    :cond_d
    iget v3, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    if-ge v3, v0, :cond_e

    .line 388
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int v1, v0, v1

    .line 389
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    const/4 v7, 0x0

    iget v10, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    invoke-virtual {v6, v3, v7, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 390
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    iget v7, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    iget-object v10, p0, Lcom/hpplay/sdk/source/mirror/b;->G:[B

    const/4 v11, 0x0

    invoke-static {v3, v7, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->G:[B

    const/4 v7, 0x0

    iget-object v10, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    const/4 v11, 0x0

    invoke-static {v3, v7, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :goto_7
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 397
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->F:[B

    const/4 v7, 0x0

    iget v10, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    invoke-virtual {v6, v3, v7, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 398
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 401
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->H:[I

    const/4 v7, 0x0

    const/4 v10, 0x0

    aput v10, v3, v7

    .line 403
    :try_start_5
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->h:Lcom/hpplay/audioread/audioencode;

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/b;->B:[B

    iget-object v10, p0, Lcom/hpplay/sdk/source/mirror/b;->H:[I

    iget-object v11, p0, Lcom/hpplay/sdk/source/mirror/b;->F:[B

    iget-object v12, p0, Lcom/hpplay/sdk/source/mirror/b;->F:[B

    array-length v12, v12

    invoke-virtual {v3, v7, v10, v11, v12}, Lcom/hpplay/audioread/audioencode;->FdkEncodeAudio([B[I[BI)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    .line 407
    :goto_8
    if-nez v2, :cond_f

    .line 409
    :try_start_6
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->B:[B

    const/4 v7, 0x0

    iget-object v10, p0, Lcom/hpplay/sdk/source/mirror/b;->C:[B

    const/16 v11, 0xc

    iget-object v12, p0, Lcom/hpplay/sdk/source/mirror/b;->H:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-static {v3, v7, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 413
    :goto_9
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->H:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    if-lez v3, :cond_4

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 415
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->C:[B

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/b;->i:Ljava/net/DatagramSocket;

    iget-object v12, p0, Lcom/hpplay/sdk/source/mirror/b;->j:Ljava/net/InetAddress;

    iget-object v13, p0, Lcom/hpplay/sdk/source/mirror/b;->H:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-direct {p0, v3, v7, v12, v13}, Lcom/hpplay/sdk/source/mirror/b;->a([BLjava/net/DatagramSocket;Ljava/net/InetAddress;I)V

    .line 417
    invoke-direct {p0, v4, v5}, Lcom/hpplay/sdk/source/mirror/b;->a(J)V

    .line 418
    invoke-direct {p0, v8, v9}, Lcom/hpplay/sdk/source/mirror/b;->b(J)V

    .line 419
    invoke-direct {p0, v10, v11}, Lcom/hpplay/sdk/source/mirror/b;->c(J)V

    goto/16 :goto_3

    .line 393
    :cond_e
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b;->E:[B

    const/4 v7, 0x0

    iget v10, p0, Lcom/hpplay/sdk/source/mirror/b;->m:I

    invoke-virtual {v6, v3, v7, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 404
    :catch_5
    move-exception v3

    .line 405
    const-string v7, "AudioEncoder"

    invoke-static {v7, v3}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 410
    :catch_6
    move-exception v3

    .line 411
    const-string v7, "AudioEncoder"

    invoke-static {v7, v3}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 422
    :cond_f
    const-string v0, "AudioEncoder"

    const-string v1, "Audio Frame Encode Failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_10
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/b;->b()V

    .line 427
    const-string v0, "AudioEncoder"

    const-string v1, "audio thread exit..."

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setChannel(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b;->I:Ljava/io/OutputStream;

    .line 599
    return-void
.end method

.method public setServerInfo(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b;->p:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/b;->o:I

    .line 131
    return-void
.end method

.method public setStateListener(Lcom/hpplay/sdk/source/api/AudioStateListener;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b;->J:Lcom/hpplay/sdk/source/api/AudioStateListener;

    .line 604
    return-void
.end method

.method public startTask()V
    .locals 0

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/b;->start()V

    .line 609
    return-void
.end method

.method public stopTask()V
    .locals 0

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/b;->a()V

    .line 614
    return-void
.end method

.method public updatePCMData(III[BII)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method
