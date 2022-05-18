.class Lcn/nubia/videogenerator/livephoto/FrameFilter$1;
.super Ljava/lang/Object;
.source "FrameFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/livephoto/FrameFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private filterdTimestampSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCnt:I

.field final synthetic this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/livephoto/FrameFilter;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->filterdTimestampSet:Ljava/util/TreeSet;

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->mCnt:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 122
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$000(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v1

    .line 123
    :goto_0
    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$000(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$100(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_b

    .line 124
    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$200(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    if-nez v2, :cond_0

    .line 125
    invoke-static {}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputQueue lost"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_0
    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$200(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$200(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->filterdTimestampSet:Ljava/util/TreeSet;

    array-length v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v2, v4

    check-cast v4, Lcn/nubia/videogenerator/common/AVFrame;

    check-cast v4, Lcn/nubia/videogenerator/common/AVFrame;

    iget-object v4, v4, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v2, 0x14

    .line 134
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_5

    .line 136
    :cond_2
    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_a

    aget-object v6, v2, v4

    .line 137
    check-cast v6, Lcn/nubia/videogenerator/common/AVFrame;

    .line 138
    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->filterdTimestampSet:Ljava/util/TreeSet;

    iget-object v8, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 139
    iget-object v7, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v9, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v9}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$400(Lcn/nubia/videogenerator/livephoto/FrameFilter;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    const-string v8, "big error, no listener for filter first out"

    if-ltz v7, :cond_5

    iget-object v7, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 140
    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$500(Lcn/nubia/videogenerator/livephoto/FrameFilter;)J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-gtz v7, :cond_5

    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 141
    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$600(Lcn/nubia/videogenerator/livephoto/FrameFilter;)I

    move-result v7

    iget v9, v6, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_5

    .line 145
    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$800(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v7

    iget-object v9, v6, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    .line 146
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v10, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object v11, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v11}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$700(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 147
    iget v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->mCnt:I

    add-int/2addr v7, v5

    iput v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->mCnt:I

    if-nez v0, :cond_4

    .line 150
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$900(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$900(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;->onQueueBeginOutput()V

    goto :goto_2

    .line 153
    :cond_3
    invoke-static {}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v0, v5

    .line 156
    :cond_4
    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->filterdTimestampSet:Ljava/util/TreeSet;

    iget-object v6, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 162
    :cond_5
    iget-object v7, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$500(Lcn/nubia/videogenerator/livephoto/FrameFilter;)J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_9

    .line 163
    iget v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->mCnt:I

    if-nez v7, :cond_7

    .line 164
    invoke-static {}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v9, "serious!!!! no frame filterd out during the time window"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$800(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v7

    iget-object v9, v6, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v6, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object v10, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 166
    invoke-static {v10}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$700(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/lang/String;

    move-result-object v10

    .line 165
    invoke-interface {v7, v9, v6, v10}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 167
    iget v6, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->mCnt:I

    add-int/2addr v6, v5

    iput v6, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->mCnt:I

    if-nez v0, :cond_7

    .line 170
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$900(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 171
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$900(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;->onQueueBeginOutput()V

    goto :goto_3

    .line 173
    :cond_6
    invoke-static {}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v5

    .line 179
    :cond_7
    new-instance v6, Lcn/nubia/videogenerator/common/AVFrame;

    invoke-direct {v6}, Lcn/nubia/videogenerator/common/AVFrame;-><init>()V

    .line 180
    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$600(Lcn/nubia/videogenerator/livephoto/FrameFilter;)I

    move-result v7

    iput v7, v6, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    const/4 v7, 0x2

    new-array v7, v7, [B

    .line 181
    iput-object v7, v6, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    .line 182
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v7, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 184
    iget-object v8, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$500(Lcn/nubia/videogenerator/livephoto/FrameFilter;)J

    move-result-wide v11

    const/4 v13, 0x4

    invoke-virtual/range {v8 .. v13}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 185
    iget-object v7, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v7}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$800(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v7

    iget-object v8, v6, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-object v6, v6, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object v9, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 186
    invoke-static {v9}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$700(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/lang/String;

    move-result-object v9

    .line 185
    invoke-interface {v7, v8, v6, v9}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enough data has got,end of stream added:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v8}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$600(Lcn/nubia/videogenerator/livephoto/FrameFilter;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v6, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v6}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$1000(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 189
    iget-object v6, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v6}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$1000(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;

    move-result-object v6

    invoke-interface {v6}, Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;->onFilterFinish()V

    .line 191
    :cond_8
    iget-object v6, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v6}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$100(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 197
    :cond_a
    :goto_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v2, 0xa

    .line 198
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 200
    :cond_b
    invoke-static {}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter finish output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->mCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;->this$0:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-static {v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->access$600(Lcn/nubia/videogenerator/livephoto/FrameFilter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
