.class public Lcn/nubia/calendar/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/EventLoader$LoaderThread;,
        Lcn/nubia/calendar/EventLoader$LoadEventsRequest;,
        Lcn/nubia/calendar/EventLoader$LoadEventDaysRequest;,
        Lcn/nubia/calendar/EventLoader$ShutdownRequest;,
        Lcn/nubia/calendar/EventLoader$LoadRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcn/nubia/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcn/nubia/calendar/EventLoader$LoaderThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 219
    iput-object p1, p0, Lcn/nubia/calendar/EventLoader;->mContext:Landroid/content/Context;

    .line 220
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/EventLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/EventLoader;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/EventLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method loadEventDaysInBackground(II[ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "startDay"    # I
    .param p2, "numDays"    # I
    .param p3, "eventDays"    # [Z
    .param p4, "uiCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 291
    new-instance v0, Lcn/nubia/calendar/EventLoader$LoadEventDaysRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/calendar/EventLoader$LoadEventDaysRequest;-><init>(II[ZLjava/lang/Runnable;)V

    .line 294
    .local v0, "request":Lcn/nubia/calendar/EventLoader$LoadEventDaysRequest;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "numDays"    # I
    .param p3, "startDay"    # I
    .param p4, "successCallback"    # Ljava/lang/Runnable;
    .param p5, "cancelCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;I",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    const-string v2, "EventLoader"

    const-string v3, "loadEventsInBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcn/nubia/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 261
    .local v1, "id":I
    new-instance v0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;

    move v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;-><init>(IIILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 265
    .local v0, "request":Lcn/nubia/calendar/EventLoader$LoadEventsRequest;
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v7

    .line 270
    .local v7, "ex":Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "loadEventsInBackground() interrupted!"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lcn/nubia/calendar/EventLoader;->mContext:Landroid/content/Context;

    .line 305
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method public startBackgroundThread()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "EventLoader"

    const-string v1, "startBackgroundThread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Lcn/nubia/calendar/EventLoader$LoaderThread;

    iget-object v1, p0, Lcn/nubia/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcn/nubia/calendar/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcn/nubia/calendar/EventLoader;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventLoader;->mLoaderThread:Lcn/nubia/calendar/EventLoader$LoaderThread;

    .line 230
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mLoaderThread:Lcn/nubia/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcn/nubia/calendar/EventLoader$LoaderThread;->start()V

    .line 231
    return-void
.end method

.method public stopBackgroundThread()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "EventLoader"

    const-string v1, "stopBackgroundThread"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader;->mLoaderThread:Lcn/nubia/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcn/nubia/calendar/EventLoader$LoaderThread;->shutdown()V

    .line 239
    return-void
.end method
