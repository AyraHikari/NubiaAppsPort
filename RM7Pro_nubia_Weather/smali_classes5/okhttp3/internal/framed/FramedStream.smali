.class public final Lokhttp3/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedStream$StreamTimeout;,
        Lokhttp3/internal/framed/FramedStream$FramedDataSink;,
        Lokhttp3/internal/framed/FramedStream$FramedDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lokhttp3/internal/framed/FramedConnection;

.field private errorCode:Lokhttp3/internal/framed/ErrorCode;

.field private final id:I

.field private final readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

.field private final source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/framed/FramedStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "connection"    # Lokhttp3/internal/framed/FramedConnection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v4, 0x0

    const/high16 v2, 0x10000

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 64
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    .line 65
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    .line 72
    iput-object v4, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 76
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iput p1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    .line 79
    iput-object p2, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    .line 80
    iget-object v0, p2, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    .line 81
    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 82
    new-instance v0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    iget-object v1, p2, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    .line 83
    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3, v4}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;-><init>(Lokhttp3/internal/framed/FramedStream;JLokhttp3/internal/framed/FramedStream$1;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    .line 84
    new-instance v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 85
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0, p4}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 86
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0, p3}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 87
    iput-object p5, p0, Lokhttp3/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    .line 88
    return-void
.end method

.method static synthetic access$1000(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$1200(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    return-object v0
.end method

.method static synthetic access$600(Lokhttp3/internal/framed/FramedStream;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .prologue
    .line 34
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    return v0
.end method

.method static synthetic access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    return-object v0
.end method

.method static synthetic access$900(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    sget-boolean v2, Lokhttp3/internal/framed/FramedStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 450
    :cond_0
    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 452
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    .line 453
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    if-eqz v0, :cond_4

    .line 459
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, v2}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    .line 463
    :cond_2
    :goto_1
    return-void

    .line 451
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 460
    .restart local v0    # "cancel":Z
    .restart local v1    # "open":Z
    :cond_4
    if-nez v1, :cond_2

    .line 461
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v3, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    goto :goto_1
.end method

.method private checkOutNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-eqz v0, :cond_2

    .line 574
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    .line 576
    :cond_2
    return-void
.end method

.method private closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z
    .locals 2
    .param p1, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    const/4 v0, 0x0

    .line 237
    sget-boolean v1, Lokhttp3/internal/framed/FramedStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-eqz v1, :cond_1

    .line 240
    monitor-exit p0

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    monitor-exit p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_2
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private waitForIo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 564
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 565
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 566
    :cond_0
    return-void
.end method

.method public close(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public closeLater(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public getConnection()Lokhttp3/internal/framed/FramedConnection;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/framed/ErrorCode;
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_0
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 144
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    :try_start_4
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public getSink()Lokio/Sink;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    return-object v0
.end method

.method public getSource()Lokio/Source;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v3, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 120
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "streamIsClient":Z
    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    .restart local v0    # "streamIsClient":Z
    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 110
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .locals 4
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receive(Lokio/BufferedSource;J)V

    .line 286
    return-void
.end method

.method receiveFin()V
    .locals 3

    .prologue
    .line 289
    sget-boolean v1, Lokhttp3/internal/framed/FramedStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 291
    :cond_0
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 293
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    .line 294
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v0, :cond_1

    .line 297
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v2, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 299
    :cond_1
    return-void

    .line 295
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method receiveHeaders(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .locals 5
    .param p2, "headersMode"    # Lokhttp3/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    sget-boolean v3, Lokhttp3/internal/framed/FramedStream;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    const/4 v2, 0x1

    .line 256
    .local v2, "open":Z
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v3, :cond_3

    .line 258
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 275
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    .line 281
    :cond_1
    :goto_1
    return-void

    .line 261
    :cond_2
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 266
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->STREAM_IN_USE:Lokhttp3/internal/framed/ErrorCode;

    goto :goto_0

    .line 269
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object v1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 278
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :cond_5
    if-nez v2, :cond_1

    .line 279
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v4, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    goto :goto_1
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 3
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    sget-boolean v1, Lokhttp3/internal/framed/FramedStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 165
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 166
    if-nez p1, :cond_1

    .line 167
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 169
    :cond_1
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_2
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 173
    if-nez p2, :cond_3

    .line 174
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v2, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    .line 180
    if-eqz v0, :cond_4

    .line 181
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    .line 183
    :cond_4
    return-void
.end method

.method public writeTimeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method
