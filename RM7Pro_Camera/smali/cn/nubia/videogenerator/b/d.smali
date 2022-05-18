.class public Lcn/nubia/videogenerator/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/c$a;


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcn/nubia/videogenerator/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/b/d;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 72
    iget v0, p0, Lcn/nubia/videogenerator/b/d;->d:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/videogenerator/b/d;->c:I

    .line 73
    iget-object v0, p0, Lcn/nubia/videogenerator/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    iget-object v0, p0, Lcn/nubia/videogenerator/b/d;->h:Lcn/nubia/videogenerator/b/c;

    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/b/c;->a(Lcn/nubia/videogenerator/b/c$a;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/videogenerator/b/d;->d:I

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/h;Lcn/nubia/videogenerator/b/c;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/h;->f()I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/b/d;->f:I

    .line 37
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/h;->g()I

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/b/d;->g:I

    .line 38
    iput-object p2, p0, Lcn/nubia/videogenerator/b/d;->h:Lcn/nubia/videogenerator/b/c;

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "YUVImageGenerator w/h"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/videogenerator/b/d;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/videogenerator/b/d;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YUVImageGenerator"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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
    iput-object p1, p0, Lcn/nubia/videogenerator/b/d;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public a([B)V
    .locals 5

    .line 52
    iget-object v0, p0, Lcn/nubia/videogenerator/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcn/nubia/videogenerator/a/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/a;-><init>()V

    .line 54
    iput-object p1, v0, Lcn/nubia/videogenerator/a/a;->b:[B

    const/4 v1, 0x1

    .line 55
    iput v1, v0, Lcn/nubia/videogenerator/a/a;->c:I

    .line 56
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 57
    iget-object v2, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 58
    iget-object v1, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 59
    iget-object v1, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    array-length p1, p1

    iput p1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 60
    iget-object p1, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 61
    iget-object p1, p0, Lcn/nubia/videogenerator/b/d;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    iget v1, p0, Lcn/nubia/videogenerator/b/d;->c:I

    if-le p1, v1, :cond_0

    .line 62
    iget-object p1, p0, Lcn/nubia/videogenerator/b/d;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object p1, p0, Lcn/nubia/videogenerator/b/d;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/videogenerator/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    iget-object v0, p0, Lcn/nubia/videogenerator/b/d;->h:Lcn/nubia/videogenerator/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/c;->a(Lcn/nubia/videogenerator/b/c$a;)V

    return-void
.end method
