.class public Lcn/nubia/videogenerator/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "meeeAudioRecorder"


# instance fields
.field private b:I

.field private c:Lcn/nubia/videogenerator/codec/a;

.field private d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/media/AudioRecord;

.field private f:I

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/videogenerator/b/b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    iput-object v0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/b/b;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/b;->h:J

    return-wide v0
.end method

.method static synthetic b(Lcn/nubia/videogenerator/b/b;)Lcn/nubia/videogenerator/codec/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/videogenerator/b/b;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/videogenerator/b/b;->f:I

    return p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcn/nubia/videogenerator/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/nubia/videogenerator/b/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/b/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/videogenerator/b/b;)Landroid/media/AudioRecord;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/videogenerator/b/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/b/b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 49
    iget-object v0, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/a;->d()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/a;->e()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    .line 50
    invoke-virtual {v2}, Lcn/nubia/videogenerator/codec/a;->b()I

    move-result v2

    .line 49
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/b/b;->f:I

    .line 51
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcn/nubia/videogenerator/b/b;->b:I

    iget-object v1, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/a;->d()I

    move-result v3

    iget-object v1, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/a;->e()I

    move-result v4

    iget-object v1, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    .line 52
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/a;->b()I

    move-result v5

    iget v1, p0, Lcn/nubia/videogenerator/b/b;->f:I

    mul-int/lit8 v6, v1, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    .line 54
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 55
    sget-object v0, Lcn/nubia/videogenerator/b/b;->a:Ljava/lang/String;

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcn/nubia/videogenerator/b/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/videogenerator/b/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/b/b$1;-><init>(Lcn/nubia/videogenerator/b/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCM Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcn/nubia/videogenerator/b/b;->b:I

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/a;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/videogenerator/b/b;->c:Lcn/nubia/videogenerator/codec/a;

    return-void
.end method

.method public a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcn/nubia/videogenerator/b/b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public b()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/videogenerator/b/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 2

    int-to-long v0, p1

    .line 39
    iput-wide v0, p0, Lcn/nubia/videogenerator/b/b;->h:J

    return-void
.end method

.method public c()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcn/nubia/videogenerator/b/b;->e:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method
