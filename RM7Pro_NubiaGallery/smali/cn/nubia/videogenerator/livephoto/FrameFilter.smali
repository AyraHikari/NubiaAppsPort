.class public Lcn/nubia/videogenerator/livephoto/FrameFilter;
.super Lcn/nubia/videogenerator/codec/DataOutput;
.source "FrameFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;,
        Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "FrameFilter"


# instance fields
.field private filterTask2:Ljava/lang/Runnable;

.field private mFrameFilterType:I

.field private mHeight:I

.field private mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFliterFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsStoped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMimeType:Ljava/lang/String;

.field private mOnFilterFinishListener:Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;

.field private mOnQueueBeginOutputListener:Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;

.field private mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

.field private mPassBeginUs:J

.field private mPassEndUs:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/DataOutput;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 27
    iput-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassBeginUs:J

    const-wide v0, 0x7fffffffffffffffL

    .line 28
    iput-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassEndUs:J

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mFrameFilterType:I

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsFliterFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsStoped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput v1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mWidth:I

    .line 38
    iput v1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mHeight:I

    .line 115
    new-instance v0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;

    invoke-direct {v0, p0}, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;-><init>(Lcn/nubia/videogenerator/livephoto/FrameFilter;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->filterTask2:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/DataOutput;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 27
    iput-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassBeginUs:J

    const-wide v0, 0x7fffffffffffffffL

    .line 28
    iput-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassEndUs:J

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mFrameFilterType:I

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsFliterFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsStoped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput v1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mWidth:I

    .line 38
    iput v1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mHeight:I

    .line 115
    new-instance v0, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;

    invoke-direct {v0, p0}, Lcn/nubia/videogenerator/livephoto/FrameFilter$1;-><init>(Lcn/nubia/videogenerator/livephoto/FrameFilter;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->filterTask2:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mMimeType:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mWidth:I

    .line 56
    iput p3, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mHeight:I

    return-void
.end method

.method private static NV21ToNV12([BII)V
    .locals 4

    mul-int/2addr p1, p2

    const/4 p2, 0x0

    .line 107
    :goto_0
    div-int/lit8 v0, p1, 0x2

    if-ge p2, v0, :cond_0

    add-int v0, p1, p2

    .line 108
    aget-byte v1, p0, v0

    add-int/lit8 v2, v0, 0x1

    .line 109
    aget-byte v3, p0, v2

    aput-byte v3, p0, v0

    .line 110
    aput-byte v1, p0, v2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsStoped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsFliterFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mOnFilterFinishListener:Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/videogenerator/livephoto/FrameFilter;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassBeginUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcn/nubia/videogenerator/livephoto/FrameFilter;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassEndUs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcn/nubia/videogenerator/livephoto/FrameFilter;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mFrameFilterType:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/common/OutputListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/videogenerator/livephoto/FrameFilter;)Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mOnQueueBeginOutputListener:Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;

    return-object p0
.end method


# virtual methods
.method public isFilterFinished()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsFliterFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setFilteByFrameType(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mFrameFilterType:I

    return-void
.end method

.method public setFilteByTimeStamp(JJ)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassBeginUs:J

    .line 77
    iput-wide p3, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassEndUs:J

    return-void
.end method

.method public setInputQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public setOnFilterFinishListener(Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mOnFilterFinishListener:Lcn/nubia/videogenerator/livephoto/FrameFilter$OnFilterFinish;

    return-void
.end method

.method public setOnQueueBeginOutputListener(Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mOnQueueBeginOutputListener:Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;

    return-void
.end method

.method public setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    return-void
.end method

.method public start()V
    .locals 4

    .line 85
    iget-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassBeginUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mPassEndUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsFliterFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->filterTask2:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

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

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 86
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->TAG:Ljava/lang/String;

    const-string v1, "pass time windows is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/FrameFilter;->mIsStoped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
