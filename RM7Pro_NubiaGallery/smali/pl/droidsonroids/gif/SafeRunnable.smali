.class abstract Lpl/droidsonroids/gif/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-void
.end method


# virtual methods
.method abstract doWork()V
.end method

.method public final run()V
    .locals 3

    .line 17
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lpl/droidsonroids/gif/SafeRunnable;->doWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 25
    :cond_1
    throw v0
.end method
