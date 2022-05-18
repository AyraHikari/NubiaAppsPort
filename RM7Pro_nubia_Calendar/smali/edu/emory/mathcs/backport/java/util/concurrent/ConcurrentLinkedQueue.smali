.class public Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$1;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2bafb2a664c708cL


# instance fields
.field private volatile transient head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

.field private final headLock:Ljava/lang/Object;

.field private volatile transient tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

.field private final tailLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 62
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$1;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->headLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$1;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tailLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0, v1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 160
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 62
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;

    invoke-direct {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$1;)V

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->headLock:Ljava/lang/Object;

    .line 63
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;

    invoke-direct {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$1;)V

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tailLock:Ljava/lang/Object;

    .line 157
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v1, v2, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)V

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 160
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 177
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method private casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 2
    .param p1, "cmp"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    .param p2, "val"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .prologue
    .line 141
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->headLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v0, p1, :cond_0

    .line 143
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 144
    const/4 v0, 0x1

    monitor-exit v1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private casTail(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 2
    .param p1, "cmp"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    .param p2, "val"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .prologue
    .line 129
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v0, p1, :cond_0

    .line 131
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 132
    const/4 v0, 0x1

    monitor-exit v1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 478
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 480
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v1, v2, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)V

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 481
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 484
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 485
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 490
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 460
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->first()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 462
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 460
    :cond_0
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0

    .line 467
    .end local v0    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 468
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 333
    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v2

    .line 334
    :cond_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->first()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :goto_1
    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    const/4 v2, 0x1

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_1
.end method

.method first()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 4

    .prologue
    .line 271
    :cond_0
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 272
    .local v1, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 273
    .local v2, "t":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .line 274
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v3, :cond_0

    .line 275
    if-ne v1, v2, :cond_3

    .line 276
    if-nez v0, :cond_2

    .line 277
    const/4 v0, 0x0

    .line 282
    .end local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :cond_1
    return-object v0

    .line 279
    .restart local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :cond_2
    invoke-direct {p0, v2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casTail(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 284
    invoke-direct {p0, v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->first()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 377
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 200
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 201
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 203
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :cond_1
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 204
    .local v2, "t":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 205
    .local v1, "s":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v2, v3, :cond_1

    .line 206
    if-nez v1, :cond_2

    .line 207
    invoke-virtual {v2, v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-direct {p0, v2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casTail(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 209
    const/4 v3, 0x1

    return v3

    .line 212
    :cond_2
    invoke-direct {p0, v2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casTail(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 243
    :cond_0
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 244
    .local v1, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 245
    .local v3, "t":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .line 246
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v4, :cond_0

    .line 247
    if-ne v1, v3, :cond_3

    .line 248
    if-nez v0, :cond_2

    .line 249
    const/4 v2, 0x0

    .line 255
    :cond_1
    return-object v2

    .line 251
    :cond_2
    invoke-direct {p0, v3, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casTail(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, "item":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 257
    invoke-direct {p0, v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 220
    :cond_0
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 221
    .local v1, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->tail:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 222
    .local v3, "t":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .line 223
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v5, :cond_0

    .line 224
    if-ne v1, v3, :cond_2

    .line 225
    if-nez v0, :cond_1

    move-object v2, v4

    .line 233
    :goto_1
    return-object v2

    .line 228
    :cond_1
    invoke-direct {p0, v3, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casTail(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct {p0, v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    .line 231
    .local v2, "item":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->setItem(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 355
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v2

    .line 356
    :cond_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->first()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :goto_1
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 358
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    const/4 v2, 0x1

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "count":I
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->first()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 317
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 321
    :cond_0
    return v0

    .line 314
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0
.end method
