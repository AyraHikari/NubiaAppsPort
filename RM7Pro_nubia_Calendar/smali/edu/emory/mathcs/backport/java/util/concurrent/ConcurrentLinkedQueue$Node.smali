.class Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private volatile item:Ljava/lang/Object;

.field private volatile next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "n"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method


# virtual methods
.method declared-synchronized casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 96
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v0, 0x1

    .line 100
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 1
    .param p1, "cmp"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    .param p2, "val"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v0, p1, :cond_0

    .line 114
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const/4 v0, 0x1

    .line 118
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    return-object v0
.end method

.method declared-synchronized setItem(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 1
    .param p1, "val"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
