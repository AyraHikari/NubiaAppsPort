.class public Lcn/nubia/videogenerator/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/media/MediaMuxer;

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/lang/String;

.field private g:Landroid/os/ParcelFileDescriptor;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcn/nubia/videogenerator/a/d$a;

.field private j:Lcn/nubia/videogenerator/a/d$c;

.field private k:I

.field private l:J

.field private m:J

.field private n:Ljava/lang/Object;

.field private o:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/e/a;->b:I

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->c:J

    .line 29
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->d:J

    .line 30
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 31
    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->f:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 33
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->h:Ljava/util/HashMap;

    .line 36
    iput v0, p0, Lcn/nubia/videogenerator/e/a;->k:I

    .line 37
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->l:J

    .line 38
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->m:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/e/a;->n:Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rw"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/videogenerator/e/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 50
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/videogenerator/e/a;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 51
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object p2, p0, Lcn/nubia/videogenerator/e/a;->g:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/e/a;->b:I

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->c:J

    .line 29
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->d:J

    .line 30
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 31
    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->f:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 33
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/videogenerator/e/a;->h:Ljava/util/HashMap;

    .line 36
    iput v0, p0, Lcn/nubia/videogenerator/e/a;->k:I

    .line 37
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->l:J

    .line 38
    iput-wide v1, p0, Lcn/nubia/videogenerator/e/a;->m:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/e/a;->n:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcn/nubia/videogenerator/e/a;->f:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/e/a;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 45
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 4

    .line 130
    iget-wide v0, p0, Lcn/nubia/videogenerator/e/a;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "video/"

    .line 131
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iput-wide p1, p0, Lcn/nubia/videogenerator/e/a;->d:J

    goto :goto_0

    :cond_0
    const-string v0, "audio/"

    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 134
    iput-wide p1, p0, Lcn/nubia/videogenerator/e/a;->c:J

    .line 136
    :cond_1
    :goto_0
    iget-wide p1, p0, Lcn/nubia/videogenerator/e/a;->d:J

    iget-wide v0, p0, Lcn/nubia/videogenerator/e/a;->c:J

    add-long/2addr p1, v0

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/videogenerator/e/a;->l:J

    iget p3, p0, Lcn/nubia/videogenerator/e/a;->b:I

    int-to-long v2, p3

    mul-long/2addr v0, v2

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcn/nubia/videogenerator/e/a;->m:J

    .line 137
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/e/a;->b(J)V

    :cond_2
    return-void
.end method

.method private b(J)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->j:Lcn/nubia/videogenerator/a/d$c;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1, p2}, Lcn/nubia/videogenerator/a/d$c;->a(J)V

    :cond_0
    return-void
.end method

.method private declared-synchronized b(Landroid/media/MediaFormat;)V
    .locals 5

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 83
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->n:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    .line 86
    iget-object v2, p0, Lcn/nubia/videogenerator/e/a;->h:Ljava/util/HashMap;

    const-string v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 86
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcn/nubia/videogenerator/e/a;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget v1, p0, Lcn/nubia/videogenerator/e/a;->b:I

    if-lt p1, v1, :cond_0

    const-string p1, "MuxerWriter"

    const-string v1, "all tracks have added, start Muxer"

    .line 90
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 92
    iget-object p1, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    :cond_0
    :goto_0
    iget-object p1, p0, Lcn/nubia/videogenerator/e/a;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lcn/nubia/videogenerator/e/a;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/videogenerator/a/a;

    const-string v1, "MuxerWriter"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chenpeng1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p1, Lcn/nubia/videogenerator/a/a;->b:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 100
    iget-object v2, p1, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-object p1, p1, Lcn/nubia/videogenerator/a/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Lcn/nubia/videogenerator/e/a;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string p1, "MuxerWriter"

    const-string v0, "Muxer has started , MediaFormat should not change"

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "MediaFormat changed after MediaMuxer started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MuxerWriter"

    const-string v1, "Muxer hasn\'t started!"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcn/nubia/videogenerator/a/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/a;-><init>()V

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/videogenerator/a/a;->b:[B

    .line 113
    iput-object p2, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 114
    iput-object p3, v0, Lcn/nubia/videogenerator/a/a;->d:Ljava/lang/String;

    const-string p1, "MuxerWriter"

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chenpeng0 = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcn/nubia/videogenerator/e/a;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1, p3}, Lcn/nubia/videogenerator/e/a;->a(JLjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    .line 122
    iget-object v2, p0, Lcn/nubia/videogenerator/e/a;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p3, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 125
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(J)V
    .locals 0

    .line 224
    iput-wide p1, p0, Lcn/nubia/videogenerator/e/a;->l:J

    return-void
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/e/a;->b(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$a;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcn/nubia/videogenerator/e/a;->i:Lcn/nubia/videogenerator/a/d$a;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$c;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcn/nubia/videogenerator/e/a;->j:Lcn/nubia/videogenerator/a/d$c;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 148
    :try_start_0
    iget p1, p0, Lcn/nubia/videogenerator/e/a;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/e/a;->k:I

    iget v0, p0, Lcn/nubia/videogenerator/e/a;->b:I

    if-lt p1, v0, :cond_1

    const-string p1, "MuxerWriter"

    const-string v0, "onOutputComplete"

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-wide v0, p0, Lcn/nubia/videogenerator/e/a;->l:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-wide/16 v0, 0x64

    .line 151
    invoke-direct {p0, v0, v1}, Lcn/nubia/videogenerator/e/a;->b(J)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcn/nubia/videogenerator/e/a;->i:Lcn/nubia/videogenerator/a/d$a;

    if-eqz p1, :cond_1

    .line 154
    invoke-interface {p1}, Lcn/nubia/videogenerator/a/d$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/videogenerator/e/a;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "MuxerWriter"

    const-string v1, "stop"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->n:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 166
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 170
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/e/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/videogenerator/e/a;->c()V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcn/nubia/videogenerator/e/a;->b:I

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/e/a;->n:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    iget-object v2, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 182
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    iput-object v0, p0, Lcn/nubia/videogenerator/e/a;->a:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 182
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 187
    :goto_0
    iget-object v1, p0, Lcn/nubia/videogenerator/e/a;->g:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 189
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 190
    iput-object v0, p0, Lcn/nubia/videogenerator/e/a;->g:Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
