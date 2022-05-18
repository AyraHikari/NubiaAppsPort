.class Lpl/droidsonroids/gif/RenderTask;
.super Lpl/droidsonroids/gif/SafeRunnable;
.source "RenderTask.java"


# instance fields
.field private final mNotifyListenersTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/SafeRunnable;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 13
    new-instance p1, Lpl/droidsonroids/gif/RenderTask$1;

    invoke-direct {p1, p0}, Lpl/droidsonroids/gif/RenderTask$1;-><init>(Lpl/droidsonroids/gif/RenderTask;)V

    iput-object p1, p0, Lpl/droidsonroids/gif/RenderTask;->mNotifyListenersTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .line 23
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v1, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v1, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    .line 25
    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v0

    iput-wide v6, v4, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 26
    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifDrawable;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v4, v4, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v4, v4, Lpl/droidsonroids/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v4, :cond_0

    .line 28
    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v4, v4, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 29
    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v6, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v6, v6, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, v0, v1, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v4, Lpl/droidsonroids/gif/GifDrawable;->mSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 32
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v0

    iget-object v1, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v1, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget v1, v1, Lpl/droidsonroids/gif/GifInfoHandle;->frameCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 33
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/RenderTask;->mNotifyListenersTask:Ljava/lang/Runnable;

    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-wide v6, v4, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-virtual {v0, v1, v6, v7}, Lpl/droidsonroids/gif/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, v0, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 37
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iput-boolean v5, v0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    .line 39
    :cond_2
    :goto_0
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    invoke-virtual {v0, v5}, Lpl/droidsonroids/gif/InvalidationHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    invoke-virtual {v0, v5, v2, v3}, Lpl/droidsonroids/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_3
    return-void
.end method
