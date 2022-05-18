.class Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;
.super Ljava/lang/Object;
.source "PCMGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/videogenerator/livephoto/PCMGenerator;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 63
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$000(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$100(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Lcn/nubia/videogenerator/codec/AudioParams;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/videogenerator/codec/AudioParams;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$200(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    int-to-double v4, v2

    div-double/2addr v0, v4

    double-to-int v0, v0

    div-int/2addr v0, v3

    const/4 v1, 0x0

    move v2, v1

    .line 65
    :goto_0
    iget-object v4, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v4}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$300(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    iget-object v4, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v4}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$200(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)I

    move-result v4

    mul-int/2addr v4, v3

    new-array v4, v4, [B

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v5, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v5}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$400(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Landroid/media/AudioRecord;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$400(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v5}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$200(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)I

    move-result v5

    mul-int/2addr v5, v3

    invoke-virtual {v2, v4, v1, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 71
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x3

    if-ne v2, v5, :cond_1

    .line 73
    invoke-static {}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "read pcm error"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 76
    new-instance v6, Lcn/nubia/videogenerator/common/AVFrame;

    invoke-direct {v6}, Lcn/nubia/videogenerator/common/AVFrame;-><init>()V

    .line 77
    iput-object v4, v6, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    .line 78
    iput v3, v6, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    iput-wide v7, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 80
    iput v2, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 81
    iput v1, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    const/4 v4, 0x1

    .line 82
    iput v4, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 83
    iput-object v5, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 84
    iget-object v4, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v4}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$600(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    if-ge v4, v0, :cond_2

    .line 85
    iget-object v4, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v4}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$600(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_2
    iget-object v4, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v4}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$600(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 88
    iget-object v4, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;->this$0:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-static {v4}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->access$600(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 71
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-void
.end method
