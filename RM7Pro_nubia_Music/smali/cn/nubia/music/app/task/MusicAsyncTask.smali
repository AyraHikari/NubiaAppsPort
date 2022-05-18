.class public abstract Lcn/nubia/music/app/task/MusicAsyncTask;
.super Ljava/lang/Object;
.source "MusicAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/task/MusicAsyncTask$d;,
        Lcn/nubia/music/app/task/MusicAsyncTask$Status;,
        Lcn/nubia/music/app/task/MusicAsyncTask$c;,
        Lcn/nubia/music/app/task/MusicAsyncTask$b;,
        Lcn/nubia/music/app/task/MusicAsyncTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcn/nubia/music/app/task/MusicAsyncTask$b;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcn/nubia/music/app/task/MusicAsyncTask$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/music/app/task/MusicAsyncTask$d",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 32
    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$1;

    invoke-direct {v0}, Lcn/nubia/music/app/task/MusicAsyncTask$1;-><init>()V

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 43
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcn/nubia/music/app/task/MusicAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcn/nubia/music/app/task/MusicAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcn/nubia/music/app/task/MusicAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 47
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$c;

    invoke-direct {v0, v10}, Lcn/nubia/music/app/task/MusicAsyncTask$c;-><init>(Lcn/nubia/music/app/task/MusicAsyncTask$1;)V

    .line 48
    :goto_0
    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 50
    const/4 v0, 0x2

    sget-object v1, Lcn/nubia/music/app/task/MusicAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 54
    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$b;

    invoke-direct {v0, v10}, Lcn/nubia/music/app/task/MusicAsyncTask$b;-><init>(Lcn/nubia/music/app/task/MusicAsyncTask$1;)V

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sHandler:Lcn/nubia/music/app/task/MusicAsyncTask$b;

    .line 56
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 47
    :cond_0
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 48
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->PENDING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    iput-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mStatus:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/task/MusicAsyncTask$2;-><init>(Lcn/nubia/music/app/task/MusicAsyncTask;)V

    iput-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mWorker:Lcn/nubia/music/app/task/MusicAsyncTask$d;

    .line 83
    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$3;

    iget-object v1, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mWorker:Lcn/nubia/music/app/task/MusicAsyncTask$d;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/app/task/MusicAsyncTask$3;-><init>(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 97
    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/app/task/MusicAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcn/nubia/music/app/task/MusicAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 201
    :goto_0
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->FINISHED:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    iput-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mStatus:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    .line 202
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sHandler:Lcn/nubia/music/app/task/MusicAsyncTask$b;

    invoke-virtual {v0}, Lcn/nubia/music/app/task/MusicAsyncTask$b;->getLooper()Landroid/os/Looper;

    .line 66
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 107
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sHandler:Lcn/nubia/music/app/task/MusicAsyncTask$b;

    new-instance v1, Lcn/nubia/music/app/task/MusicAsyncTask$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/app/task/MusicAsyncTask$a;-><init>(Lcn/nubia/music/app/task/MusicAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcn/nubia/music/app/task/MusicAsyncTask$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 69
    sput-object p0, Lcn/nubia/music/app/task/MusicAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 70
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final execute([Ljava/lang/Object;)Lcn/nubia/music/app/task/MusicAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcn/nubia/music/app/task/MusicAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/nubia/music/app/task/MusicAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/nubia/music/app/task/MusicAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcn/nubia/music/app/task/MusicAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mStatus:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    sget-object v1, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->PENDING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 162
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$4;->a:[I

    iget-object v1, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mStatus:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    invoke-virtual {v1}, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    :cond_0
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->RUNNING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    iput-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mStatus:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    .line 176
    invoke-virtual {p0}, Lcn/nubia/music/app/task/MusicAsyncTask;->onPreExecute()V

    .line 178
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mWorker:Lcn/nubia/music/app/task/MusicAsyncTask$d;

    iput-object p2, v0, Lcn/nubia/music/app/task/MusicAsyncTask$d;->b:[Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-object p0

    .line 164
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcn/nubia/music/app/task/MusicAsyncTask$Status;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mStatus:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcn/nubia/music/app/task/MusicAsyncTask;->onCancelled()V

    .line 132
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 128
    return-void
.end method

.method protected final publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcn/nubia/music/app/task/MusicAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask;->sHandler:Lcn/nubia/music/app/task/MusicAsyncTask$b;

    const/4 v1, 0x2

    new-instance v2, Lcn/nubia/music/app/task/MusicAsyncTask$a;

    invoke-direct {v2, p0, p1}, Lcn/nubia/music/app/task/MusicAsyncTask$a;-><init>(Lcn/nubia/music/app/task/MusicAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/app/task/MusicAsyncTask$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :cond_0
    return-void
.end method
