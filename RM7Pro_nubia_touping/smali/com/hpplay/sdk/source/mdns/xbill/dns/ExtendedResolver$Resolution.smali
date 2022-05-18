.class Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolution"
.end annotation


# instance fields
.field done:Z

.field inprogress:[Ljava/lang/Object;

.field listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

.field outstanding:I

.field query:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

.field resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

.field response:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

.field retries:I

.field sent:[I

.field thrown:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 6

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->access$000(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    .line 121
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v1, v0

    .line 123
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->access$208(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)I

    move-result v0

    rem-int v2, v0, v1

    .line 124
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 125
    invoke-static {p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->access$202(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;I)I

    .line 128
    :cond_0
    if-lez v2, :cond_2

    .line 129
    new-array v3, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    .line 131
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 132
    add-int v4, v0, v2

    rem-int/2addr v4, v1

    .line 133
    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    aget-object v4, v5, v4

    aput-object v4, v3, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    iput-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->sent:[I

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    .line 142
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->access$300(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->retries:I

    .line 143
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->query:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 144
    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 224
    const-string v2, "verbose"

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtendedResolver: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    :cond_0
    monitor-enter p0

    .line 229
    :try_start_0
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->outstanding:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->outstanding:I

    .line 230
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    if-eqz v2, :cond_1

    .line 231
    monitor-exit p0

    .line 294
    :goto_0
    return-void

    :cond_1
    move v2, v1

    .line 235
    :goto_1
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eq v3, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 240
    monitor-exit p0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 244
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->sent:[I

    aget v3, v3, v2

    if-ne v3, v0, :cond_f

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_f

    .line 248
    :goto_2
    instance-of v1, p2, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_6

    .line 249
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->sent:[I

    aget v1, v1, v2

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->retries:I

    if-ge v1, v3, :cond_4

    .line 250
    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->send(I)V

    .line 253
    :cond_4
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 254
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 264
    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    if-eqz v1, :cond_9

    .line 265
    monitor-exit p0

    goto :goto_0

    .line 256
    :cond_6
    instance-of v1, p2, Ljava/net/SocketException;

    if-eqz v1, :cond_8

    .line 257
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_5

    .line 258
    :cond_7
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    goto :goto_3

    .line 261
    :cond_8
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    goto :goto_3

    .line 268
    :cond_9
    if-eqz v0, :cond_a

    .line 269
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->send(I)V

    .line 272
    :cond_a
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    if-eqz v0, :cond_b

    .line 273
    monitor-exit p0

    goto :goto_0

    .line 276
    :cond_b
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->outstanding:I

    if-nez v0, :cond_c

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    .line 278
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    if-nez v0, :cond_c

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 280
    monitor-exit p0

    goto :goto_0

    .line 284
    :cond_c
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    if-nez v0, :cond_d

    .line 285
    monitor-exit p0

    goto :goto_0

    .line 287
    :cond_d
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Exception;

    if-nez v0, :cond_e

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 293
    :cond_e
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {v1, p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_2
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 2

    .prologue
    .line 203
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ExtendedResolver: received message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    :cond_0
    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    if-eqz v0, :cond_1

    .line 209
    monitor-exit p0

    .line 221
    :goto_0
    return-void

    .line 212
    :cond_1
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->response:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    if-nez v0, :cond_2

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 216
    monitor-exit p0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->response:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v0, p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    goto :goto_0
.end method

.method public send(I)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->sent:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 148
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->outstanding:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->outstanding:I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->query:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v1, v2, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z

    .line 157
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit p0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public start()Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->sent:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 169
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->outstanding:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->outstanding:I

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    aput-object v2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->resolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->query:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 174
    monitor-enter p0

    .line 175
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->done:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 177
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    goto :goto_1

    .line 181
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->response:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->response:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 192
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedResolver failure"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->send(I)V

    .line 200
    return-void
.end method
