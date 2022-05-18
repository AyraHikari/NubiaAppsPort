.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final address:Lokhttp3/Address;

.field private canceled:Z

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field private refusedStreamCount:I

.field private released:Z

.field private route:Lokhttp3/Route;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;

.field private stream:Lokhttp3/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V
    .locals 2
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;
    .param p2, "address"    # Lokhttp3/Address;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    .line 87
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    .line 88
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 89
    return-void
.end method

.method private deallocate(ZZZ)V
    .locals 6
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "connectionToClose":Lokhttp3/internal/connection/RealConnection;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 242
    if-eqz p3, :cond_0

    .line 243
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    .line 245
    :cond_0
    if-eqz p2, :cond_1

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 248
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_5

    .line 249
    if-eqz p1, :cond_2

    .line 250
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 252
    :cond_2
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v1, v1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_5

    .line 253
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v1}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    .line 254
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 256
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v1, v3, v4}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 260
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 263
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 267
    :cond_6
    return-void

    .line 263
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;
    .locals 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 159
    :cond_0
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "stream != null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_1
    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_2
    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 163
    .local v6, "allocatedConnection":Lokhttp3/internal/connection/RealConnection;
    if-eqz v6, :cond_3

    iget-boolean v1, v6, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v1, :cond_3

    .line 164
    monitor-exit v2

    .line 197
    .end local v6    # "allocatedConnection":Lokhttp3/internal/connection/RealConnection;
    :goto_0
    return-object v6

    .line 168
    .restart local v6    # "allocatedConnection":Lokhttp3/internal/connection/RealConnection;
    :cond_3
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v1, v3, v4, p0}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v7

    .line 169
    .local v7, "pooledConnection":Lokhttp3/internal/connection/RealConnection;
    if-eqz v7, :cond_4

    .line 170
    iput-object v7, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 171
    monitor-exit v2

    move-object v6, v7

    goto :goto_0

    .line 174
    :cond_4
    iget-object v8, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 175
    .local v8, "selectedRoute":Lokhttp3/Route;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    if-nez v8, :cond_5

    .line 178
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/Route;

    move-result-object v8

    .line 179
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 180
    :try_start_2
    iput-object v8, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 182
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 184
    :cond_5
    new-instance v0, Lokhttp3/internal/connection/RealConnection;

    invoke-direct {v0, v8}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/Route;)V

    .line 185
    .local v0, "newConnection":Lokhttp3/internal/connection/RealConnection;
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    .line 187
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 188
    :try_start_3
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v1, v3, v0}, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    .line 189
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 190
    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 182
    .end local v0    # "newConnection":Lokhttp3/internal/connection/RealConnection;
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 191
    .restart local v0    # "newConnection":Lokhttp3/internal/connection/RealConnection;
    :cond_6
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 195
    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    move-object v6, v0

    .line 197
    goto :goto_0
.end method

.method private findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 133
    .local v0, "candidate":Lokhttp3/internal/connection/RealConnection;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 134
    :try_start_0
    iget v1, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v1, :cond_1

    .line 135
    monitor-exit v2

    .line 146
    :cond_0
    return-object v0

    .line 137
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0, p5}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .locals 4
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 326
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 327
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 328
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    return-void

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;)V
    .locals 2
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    .prologue
    .line 320
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 272
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v3

    .line 273
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 274
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    .line 275
    .local v1, "streamToCancel":Lokhttp3/internal/http/HttpStream;
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 276
    .local v0, "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v1}, Lokhttp3/internal/http/HttpStream;->cancel()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    .end local v0    # "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    .end local v1    # "streamToCancel":Lokhttp3/internal/http/HttpStream;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 279
    .restart local v0    # "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    .restart local v1    # "streamToCancel":Lokhttp3/internal/http/HttpStream;
    :cond_1
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_0
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newStream(Lokhttp3/OkHttpClient;Z)Lokhttp3/internal/http/HttpStream;
    .locals 12
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "doExtensiveHealthChecks"    # Z

    .prologue
    .line 92
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v1

    .line 93
    .local v1, "connectTimeout":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v2

    .line 94
    .local v2, "readTimeout":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    .line 95
    .local v3, "writeTimeout":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    .local v4, "connectionRetryEnabled":Z
    move-object v0, p0

    move v5, p2

    .line 98
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v7

    .line 102
    .local v7, "resultConnection":Lokhttp3/internal/connection/RealConnection;
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    .line 103
    new-instance v8, Lokhttp3/internal/http/Http2xStream;

    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-direct {v8, p1, p0, v0}, Lokhttp3/internal/http/Http2xStream;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/framed/FramedConnection;)V

    .line 112
    .local v8, "resultStream":Lokhttp3/internal/http/HttpStream;
    :goto_0
    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iput-object v8, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    .line 114
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    .line 105
    .end local v8    # "resultStream":Lokhttp3/internal/http/HttpStream;
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 106
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v10, v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 107
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v10, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 108
    new-instance v8, Lokhttp3/internal/http/Http1xStream;

    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v5, v7, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v8, p1, p0, v0, v5}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v8    # "resultStream":Lokhttp3/internal/http/HttpStream;
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    .end local v7    # "resultConnection":Lokhttp3/internal/connection/RealConnection;
    .end local v8    # "resultStream":Lokhttp3/internal/http/HttpStream;
    :catch_0
    move-exception v6

    .line 117
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, v6}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public noNewStreams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 233
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 228
    return-void
.end method

.method public stream()Lokhttp3/internal/http/HttpStream;
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v6, 0x1

    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, "noNewStreams":Z
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v4

    .line 288
    :try_start_0
    instance-of v3, p1, Lokhttp3/internal/framed/StreamResetException;

    if-eqz v3, :cond_3

    .line 289
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/framed/StreamResetException;

    move-object v2, v0

    .line 290
    .local v2, "streamResetException":Lokhttp3/internal/framed/StreamResetException;
    iget-object v3, v2, Lokhttp3/internal/framed/StreamResetException;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    sget-object v5, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    if-ne v3, v5, :cond_0

    .line 291
    iget v3, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 295
    :cond_0
    iget-object v3, v2, Lokhttp3/internal/framed/StreamResetException;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    sget-object v5, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    if-ne v3, v5, :cond_1

    iget v3, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le v3, v6, :cond_2

    .line 296
    :cond_1
    const/4 v1, 0x1

    .line 297
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 310
    .end local v2    # "streamResetException":Lokhttp3/internal/framed/StreamResetException;
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v6}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 313
    return-void

    .line 299
    :cond_3
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 300
    const/4 v1, 0x1

    .line 303
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v3, v3, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v3, :cond_2

    .line 304
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 305
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    invoke-virtual {v3, v5, p1}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 307
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpStream;)V
    .locals 4
    .param p1, "noNewStreams"    # Z
    .param p2, "stream"    # Lokhttp3/internal/http/HttpStream;

    .prologue
    .line 201
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 202
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    if-eq p2, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 206
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    .line 208
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
