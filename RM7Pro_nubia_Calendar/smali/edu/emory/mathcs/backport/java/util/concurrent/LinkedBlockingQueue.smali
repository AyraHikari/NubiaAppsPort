.class public Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$1;,
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$SerializableLock;,
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;,
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field static class$edu$emory$mathcs$backport$java$util$concurrent$LinkedBlockingQueue:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private volatile count:I

.field private transient head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

.field private transient last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

.field private final putLock:Ljava/lang/Object;

.field private final takeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$LinkedBlockingQueue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "edu.emory.mathcs.backport.java.util.concurrent.LinkedBlockingQueue"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$LinkedBlockingQueue:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->class$edu$emory$mathcs$backport$java$util$concurrent$LinkedBlockingQueue:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 138
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 87
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$SerializableLock;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$SerializableLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$1;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$SerializableLock;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$SerializableLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$1;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    .line 148
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    .line 150
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 164
    const v2, 0x7fffffff

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 165
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    .end local v0    # "e":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    .prologue
    .line 46
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    .prologue
    .line 46
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    .prologue
    .line 46
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    return-object v0
.end method

.method static access$400(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    .prologue
    .line 46
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    return-object v0
.end method

.method static access$402(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .prologue
    .line 46
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    return-object p1
.end method

.method static access$510(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)I
    .locals 2
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    .prologue
    .line 46
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    return v0
.end method

.method static access$600(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    .prologue
    .line 46
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private extract()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 124
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 125
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 126
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 127
    .local v1, "x":Ljava/lang/Object;
    const/4 v2, 0x0

    iput-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 128
    return-object v1
.end method

.method private insert(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v1, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 117
    return-void
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
    .line 734
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 736
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 741
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 742
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 746
    return-void

    .line 736
    .end local v0    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 744
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private signalNotFull()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v2

    .line 712
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 714
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 717
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 718
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 717
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_0

    .line 721
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 722
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 724
    return-void

    .line 722
    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 723
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 527
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v2

    .line 528
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 529
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v4, 0x0

    iput-object v4, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 530
    sget-boolean v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 540
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 531
    :cond_0
    :try_start_3
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 533
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 534
    :try_start_4
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 535
    .local v0, "c":I
    const/4 v1, 0x0

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 536
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 537
    :try_start_5
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    .line 538
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 539
    :cond_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 540
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 541
    return-void

    .line 536
    .end local v0    # "c":I
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 9
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v8, 0x0

    .line 550
    if-nez p1, :cond_0

    .line 551
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 552
    :cond_0
    if-ne p1, p0, :cond_1

    .line 553
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 555
    :cond_1
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v5

    .line 556
    :try_start_0
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 557
    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v4, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 558
    .local v1, "first":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v7, 0x0

    iput-object v7, v4, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 559
    sget-boolean v4, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v4, v4, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 568
    .end local v1    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 569
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 560
    .restart local v1    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :cond_2
    :try_start_3
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 562
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 563
    :try_start_4
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 564
    .local v0, "cold":I
    const/4 v4, 0x0

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 565
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 566
    :try_start_5
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_3

    .line 567
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 568
    :cond_3
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 569
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, "n":I
    move-object v3, v1

    .local v3, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :goto_0
    if-eqz v3, :cond_4

    .line 573
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 574
    iput-object v8, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 575
    add-int/lit8 v2, v2, 0x1

    .line 572
    iget-object v3, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_0

    .line 565
    .end local v0    # "cold":I
    .end local v2    # "n":I
    .end local v3    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 577
    .restart local v0    # "cold":I
    .restart local v2    # "n":I
    .restart local v3    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :cond_4
    return v2
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 6
    .param p1, "c"    # Ljava/util/Collection;
    .param p2, "maxElements"    # I

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 589
    :cond_0
    if-ne p1, p0, :cond_1

    .line 590
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 591
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v4

    .line 592
    :try_start_0
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "n":I
    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 595
    .local v2, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :goto_0
    if-eqz v2, :cond_2

    if-ge v1, p2, :cond_2

    .line 596
    iget-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 597
    const/4 v3, 0x0

    iput-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 598
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    :cond_2
    if-eqz v1, :cond_5

    .line 602
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 603
    sget-boolean v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 615
    .end local v2    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 616
    .end local v1    # "n":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 604
    .restart local v1    # "n":I
    .restart local v2    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :cond_3
    if-nez v2, :cond_4

    .line 605
    :try_start_3
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 607
    :cond_4
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 608
    :try_start_4
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 609
    .local v0, "cold":I
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    sub-int/2addr v3, v1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 610
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 611
    :try_start_5
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v3, :cond_5

    .line 612
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 614
    .end local v0    # "cold":I
    :cond_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v1

    .line 610
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 630
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 292
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 293
    :cond_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_2

    .line 306
    :cond_1
    :goto_0
    return v2

    .line 295
    :cond_2
    const/4 v0, -0x1

    .line 296
    .local v0, "c":I
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v3

    .line 297
    :try_start_0
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_4

    .line 298
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->insert(Ljava/lang/Object;)V

    .line 299
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "c":I
    .local v1, "c":I
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 300
    add-int/lit8 v4, v1, 0x1

    :try_start_3
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_3

    .line 301
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    move v0, v1

    .line 303
    .end local v1    # "c":I
    .restart local v0    # "c":I
    :cond_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 304
    if-nez v0, :cond_5

    .line 305
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 306
    :cond_5
    if-ltz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v2

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 303
    :catchall_1
    move-exception v2

    :goto_2
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .end local v0    # "c":I
    .restart local v1    # "c":I
    :catchall_2
    move-exception v2

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_2

    .line 299
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :catchall_3
    move-exception v2

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_1
.end method

.method public offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 16
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 252
    :cond_0
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 253
    .local v10, "nanos":J
    const/4 v4, -0x1

    .line 254
    .local v4, "c":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v12

    .line 255
    :try_start_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v14

    add-long v6, v14, v10

    .line 257
    .local v6, "deadline":J
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v9, v13, :cond_3

    .line 258
    invoke-direct/range {p0 .. p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->insert(Ljava/lang/Object;)V

    .line 259
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v9, v5, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "c":I
    .local v5, "c":I
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 260
    add-int/lit8 v9, v5, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v9, v13, :cond_1

    .line 261
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 274
    :cond_1
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 275
    if-nez v5, :cond_2

    .line 276
    invoke-direct/range {p0 .. p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 277
    :cond_2
    const/4 v9, 0x1

    move v4, v5

    .end local v5    # "c":I
    .restart local v4    # "c":I
    :goto_1
    return v9

    .line 259
    :catchall_0
    move-exception v9

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9

    .line 274
    .end local v6    # "deadline":J
    :catchall_1
    move-exception v9

    :goto_3
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9

    .line 264
    .restart local v6    # "deadline":J
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-gtz v9, :cond_4

    .line 265
    const/4 v9, 0x0

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 267
    :cond_4
    :try_start_7
    sget-object v9, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v9, v13, v10, v11}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 268
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v14

    sub-long v10, v6, v14

    goto :goto_0

    .line 269
    :catch_0
    move-exception v8

    .line 270
    .local v8, "ie":Ljava/lang/InterruptedException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 271
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 274
    .end local v4    # "c":I
    .end local v8    # "ie":Ljava/lang/InterruptedException;
    .restart local v5    # "c":I
    :catchall_2
    move-exception v9

    move v4, v5

    .end local v5    # "c":I
    .restart local v4    # "c":I
    goto :goto_3

    .line 259
    .end local v4    # "c":I
    .restart local v5    # "c":I
    :catchall_3
    move-exception v9

    move v4, v5

    .end local v5    # "c":I
    .restart local v4    # "c":I
    goto :goto_2
.end method

.method public peek()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 382
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    if-nez v2, :cond_0

    .line 389
    :goto_0
    return-object v1

    .line 384
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 386
    .local v0, "first":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    if-nez v0, :cond_1

    .line 387
    monitor-exit v2

    goto :goto_0

    .line 390
    .end local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 389
    .restart local v0    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :cond_1
    :try_start_1
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 363
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    if-nez v3, :cond_1

    .line 364
    const/4 v2, 0x0

    .line 377
    :cond_0
    :goto_0
    return-object v2

    .line 365
    :cond_1
    const/4 v2, 0x0

    .line 366
    .local v2, "x":Ljava/lang/Object;
    const/4 v0, -0x1

    .line 367
    .local v0, "c":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 368
    :try_start_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    if-lez v3, :cond_3

    .line 369
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v2

    .line 370
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "c":I
    .local v1, "c":I
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 371
    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 372
    :try_start_3
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    move v0, v1

    .line 374
    .end local v1    # "c":I
    .end local v2    # "x":Ljava/lang/Object;
    .restart local v0    # "c":I
    :cond_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 375
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v3, :cond_0

    .line 376
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    goto :goto_0

    .line 370
    .restart local v2    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 374
    .end local v2    # "x":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    :goto_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .end local v0    # "c":I
    .restart local v1    # "c":I
    .restart local v2    # "x":Ljava/lang/Object;
    :catchall_2
    move-exception v3

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_2

    .line 370
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :catchall_3
    move-exception v3

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_1
.end method

.method public poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v9, 0x0

    .line 334
    .local v9, "x":Ljava/lang/Object;
    const/4 v4, -0x1

    .line 335
    .local v4, "c":I
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 336
    .local v10, "nanos":J
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 337
    :try_start_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v14

    add-long v6, v14, v10

    .line 339
    .local v6, "deadline":J
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    if-lez v12, :cond_2

    .line 340
    invoke-direct/range {p0 .. p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v9

    .line 341
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v12, v5, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "c":I
    .local v5, "c":I
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 342
    const/4 v12, 0x1

    if-le v5, v12, :cond_0

    .line 343
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 356
    :cond_0
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 357
    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v5, v12, :cond_1

    .line 358
    invoke-direct/range {p0 .. p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    :cond_1
    move v4, v5

    .line 359
    .end local v5    # "c":I
    .end local v9    # "x":Ljava/lang/Object;
    .restart local v4    # "c":I
    :goto_1
    return-object v9

    .line 341
    .restart local v9    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v12

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12

    .line 356
    .end local v6    # "deadline":J
    .end local v9    # "x":Ljava/lang/Object;
    :catchall_1
    move-exception v12

    :goto_3
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v12

    .line 346
    .restart local v6    # "deadline":J
    .restart local v9    # "x":Ljava/lang/Object;
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-gtz v12, :cond_3

    .line 347
    const/4 v9, 0x0

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 349
    :cond_3
    :try_start_7
    sget-object v12, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v12, v14, v10, v11}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 350
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v14

    sub-long v10, v6, v14

    goto :goto_0

    .line 351
    :catch_0
    move-exception v8

    .line 352
    .local v8, "ie":Ljava/lang/InterruptedException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 353
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 356
    .end local v4    # "c":I
    .end local v8    # "ie":Ljava/lang/InterruptedException;
    .restart local v5    # "c":I
    :catchall_2
    move-exception v12

    move v4, v5

    .end local v5    # "c":I
    .restart local v4    # "c":I
    goto :goto_3

    .line 341
    .end local v4    # "c":I
    .restart local v5    # "c":I
    :catchall_3
    move-exception v12

    move v4, v5

    .end local v5    # "c":I
    .restart local v4    # "c":I
    goto :goto_2
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 211
    :cond_0
    const/4 v0, -0x1

    .line 212
    .local v0, "c":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v4

    .line 223
    :goto_0
    :try_start_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v5, :cond_1

    .line 224
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 227
    throw v2

    .line 233
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 229
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->insert(Ljava/lang/Object;)V

    .line 230
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "c":I
    .local v1, "c":I
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 231
    add-int/lit8 v3, v1, 0x1

    :try_start_5
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v3, v5, :cond_2

    .line 232
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 233
    :cond_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 235
    if-nez v1, :cond_3

    .line 236
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 237
    :cond_3
    return-void

    .line 230
    .end local v1    # "c":I
    .restart local v0    # "c":I
    :catchall_1
    move-exception v3

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 233
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :catchall_2
    move-exception v3

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_1

    .line 230
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :catchall_3
    move-exception v3

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_2
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 405
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 431
    :goto_0
    return v1

    .line 406
    :cond_0
    const/4 v1, 0x0

    .line 407
    .local v1, "removed":Z
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v4

    .line 408
    :try_start_0
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 410
    .local v2, "trail":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 411
    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :goto_1
    if-eqz v0, :cond_1

    .line 412
    iget-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 413
    const/4 v1, 0x1

    .line 419
    :cond_1
    if-eqz v1, :cond_4

    .line 420
    const/4 v3, 0x0

    iput-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 421
    iget-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 422
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    if-ne v3, v0, :cond_2

    .line 423
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 424
    :cond_2
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 425
    :try_start_2
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v6, v3, -0x1

    iput v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v6, :cond_3

    .line 426
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 427
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 429
    :cond_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 430
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .end local v2    # "trail":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 416
    .restart local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .restart local v2    # "trail":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :cond_5
    move-object v2, v0

    .line 417
    :try_start_5
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 427
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 429
    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .end local v2    # "trail":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_2
    move-exception v3

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, -0x1

    .line 313
    .local v0, "c":I
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 315
    :goto_0
    :try_start_0
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    if-nez v4, :cond_0

    .line 316
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 319
    throw v2

    .line 326
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 322
    :cond_0
    :try_start_2
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v3

    .line 323
    .local v3, "x":Ljava/lang/Object;
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "c":I
    .local v1, "c":I
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 324
    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 325
    :try_start_5
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 326
    :cond_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 327
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v1, v4, :cond_2

    .line 328
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 329
    :cond_2
    return-object v3

    .line 323
    .end local v1    # "c":I
    .restart local v0    # "c":I
    :catchall_1
    move-exception v4

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 326
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :catchall_2
    move-exception v4

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_1

    .line 323
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :catchall_3
    move-exception v4

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 448
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v6

    .line 449
    :try_start_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 450
    :try_start_1
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 451
    .local v4, "size":I
    new-array v0, v4, [Ljava/lang/Object;

    .line 452
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 453
    .local v1, "k":I
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .local v3, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_0

    .line 454
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 453
    iget-object v3, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 455
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 456
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v3    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 457
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 497
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v6

    .line 498
    :try_start_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 499
    :try_start_1
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->count:I

    .line 500
    .local v4, "size":I
    array-length v5, p1

    if-ge v5, v4, :cond_0

    .line 501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 504
    :cond_0
    const/4 v1, 0x0

    .line 505
    .local v1, "k":I
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .local v3, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_1

    .line 506
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 505
    iget-object v3, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 507
    :cond_1
    array-length v5, p1

    if-le v5, v2, :cond_2

    .line 508
    const/4 v5, 0x0

    aput-object v5, p1, v2

    .line 509
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    .line 510
    .end local v2    # "k":I
    .end local v3    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 511
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 517
    :try_start_1
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 518
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 519
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
