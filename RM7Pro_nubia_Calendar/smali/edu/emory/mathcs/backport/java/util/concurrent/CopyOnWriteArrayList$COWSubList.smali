.class Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "COWSubList"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7831e5055272ade8L


# instance fields
.field transient expectedArray:[Ljava/lang/Object;

.field length:I

.field final offset:I

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;II)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 479
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 481
    iput p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 482
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 483
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 838
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 840
    monitor-exit v1

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 826
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 829
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 830
    :try_start_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 831
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 832
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 713
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 714
    if-ltz p1, :cond_0

    :try_start_0
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-le p1, v5, :cond_1

    .line 715
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 732
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 718
    :cond_1
    :try_start_1
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 719
    .local v3, "oldarr":[Ljava/lang/Object;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v3, v5, :cond_2

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 720
    :cond_2
    array-length v0, v3

    .line 721
    .local v0, "fullLength":I
    add-int/lit8 v5, v0, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    .line 722
    .local v2, "newarr":[Ljava/lang/Object;
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v4, v5, p1

    .line 723
    .local v4, "pos":I
    sub-int v1, v0, v4

    .line 724
    .local v1, "moved":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    aput-object p2, v2, v4

    .line 726
    if-lez v1, :cond_3

    .line 727
    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    :cond_3
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 730
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 731
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 732
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 522
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-virtual {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->add(ILjava/lang/Object;)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 13
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v9, 0x0

    .line 557
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 558
    .local v0, "added":I
    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v10

    .line 559
    if-ltz p1, :cond_0

    :try_start_0
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-lt p1, v11, :cond_1

    .line 560
    :cond_0
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", Size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget v12, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 580
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 563
    :cond_1
    :try_start_1
    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v6

    .line 564
    .local v6, "oldarr":[Ljava/lang/Object;
    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v6, v11, :cond_2

    new-instance v9, Ljava/util/ConcurrentModificationException;

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 565
    :cond_2
    if-nez v0, :cond_3

    monitor-exit v10

    .line 579
    :goto_0
    return v9

    .line 566
    :cond_3
    array-length v1, v6

    .line 567
    .local v1, "fullLength":I
    add-int v9, v1, v0

    new-array v3, v9, [Ljava/lang/Object;

    .line 568
    .local v3, "newarr":[Ljava/lang/Object;
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v7, v9, p1

    .line 569
    .local v7, "pos":I
    move v4, v7

    .line 570
    .local v4, "newpos":I
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {v6, v9, v3, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    sub-int v8, v1, v7

    .line 572
    .local v8, "rem":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "itr":Ljava/util/Iterator;
    move v5, v4

    .end local v4    # "newpos":I
    .local v5, "newpos":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 573
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newpos":I
    .restart local v4    # "newpos":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v3, v5

    move v5, v4

    .end local v4    # "newpos":I
    .restart local v5    # "newpos":I
    goto :goto_1

    .line 575
    :cond_4
    if-lez v8, :cond_5

    invoke-static {v6, v7, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    :cond_5
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 577
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 578
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v9, v0

    iput v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 579
    const/4 v9, 0x1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 553
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-virtual {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 8

    .prologue
    .line 633
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v5

    .line 634
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 635
    .local v0, "array":[Ljava/lang/Object;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 644
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 636
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    array-length v1, v0

    .line 637
    .local v1, "fullLength":I
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    sub-int v4, v1, v4

    new-array v3, v4, [Ljava/lang/Object;

    .line 638
    .local v3, "newarr":[Ljava/lang/Object;
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v4, v1, v4

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    sub-int v2, v4, v6

    .line 639
    .local v2, "moved":I
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    if-lez v4, :cond_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-static {v0, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_1
    if-lez v2, :cond_2

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v4, v6

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    :cond_2
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 642
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 643
    const/4 v4, 0x0

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 644
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 494
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, p1, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$000([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 545
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 546
    .local v0, "array":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-static {v0, v2, v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$000([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 549
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 648
    if-ne p1, p0, :cond_1

    .line 664
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 649
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v8, p1, Ljava/util/List;

    if-nez v8, :cond_2

    move v6, v7

    goto :goto_0

    .line 652
    :cond_2
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v8

    .line 653
    :try_start_0
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "array":[Ljava/lang/Object;
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v9, :cond_3

    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 656
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 655
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int v3, v9, v10

    .line 656
    .local v3, "last":I
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    check-cast p1, Ljava/util/List;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 658
    .local v2, "itr":Ljava/util/ListIterator;
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 659
    .local v1, "idx":I
    :cond_4
    if-ge v1, v3, :cond_5

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 660
    aget-object v4, v0, v1

    .line 661
    .local v4, "o1":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 662
    .local v5, "o2":Ljava/lang/Object;
    invoke-static {v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move v6, v7

    goto :goto_0

    .line 664
    .end local v4    # "o1":Ljava/lang/Object;
    .end local v5    # "o2":Ljava/lang/Object;
    :cond_5
    if-ne v1, v3, :cond_6

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_6
    move v6, v7

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 684
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 668
    const/4 v1, 0x1

    .line 671
    .local v1, "hashCode":I
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 672
    :try_start_0
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 673
    .local v0, "array":[Ljava/lang/Object;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v5, :cond_0

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 675
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 674
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int v3, v5, v7

    .line 675
    .local v3, "last":I
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 677
    aget-object v4, v0, v2

    .line 678
    .local v4, "o":Ljava/lang/Object;
    mul-int/lit8 v6, v1, 0x1f

    if-nez v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    add-int v1, v6, v5

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    .line 680
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 758
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v3, v4

    invoke-static {v1, p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$000([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v0

    .line 759
    .local v0, "pos":I
    if-ltz v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 763
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p2

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v3, v4

    invoke-static {v1, p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$000([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v0, v1, v2

    .line 764
    .local v0, "pos":I
    if-ltz v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

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
    .line 498
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 768
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v3, v4

    invoke-static {v1, p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$200([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v0, v1, v2

    .line 769
    .local v0, "pos":I
    if-ltz v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 773
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p2

    invoke-static {v1, p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$200([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v0, v1, v2

    .line 774
    .local v0, "pos":I
    if-ltz v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 6

    .prologue
    .line 779
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 780
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 781
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 783
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 782
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-direct {v1, v0, v3, v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;-><init>([Ljava/lang/Object;III)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 788
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 789
    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-lt p1, v1, :cond_1

    .line 790
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 793
    :cond_1
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 794
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 795
    :cond_2
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v5, p1

    invoke-direct {v1, v0, v3, v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;-><init>([Ljava/lang/Object;III)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 736
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v7

    .line 737
    if-ltz p1, :cond_0

    :try_start_0
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-lt p1, v6, :cond_1

    .line 738
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", Size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 754
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 741
    :cond_1
    :try_start_1
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 742
    .local v0, "array":[Ljava/lang/Object;
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v6, :cond_2

    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 743
    :cond_2
    array-length v1, v0

    .line 744
    .local v1, "fullLength":I
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v4, v6, p1

    .line 745
    .local v4, "pos":I
    aget-object v5, v0, v4

    .line 746
    .local v5, "result":Ljava/lang/Object;
    add-int/lit8 v6, v1, -0x1

    new-array v3, v6, [Ljava/lang/Object;

    .line 747
    .local v3, "newarr":[Ljava/lang/Object;
    sub-int v6, v1, v4

    add-int/lit8 v2, v6, -0x1

    .line 748
    .local v2, "moved":I
    if-lez p1, :cond_3

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v6, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    :cond_3
    if-lez v2, :cond_4

    add-int/lit8 v6, v4, 0x1

    invoke-static {v0, v6, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    :cond_4
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 751
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 752
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 753
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 527
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 528
    :try_start_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 529
    .local v0, "array":[Ljava/lang/Object;
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v7, :cond_0

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 541
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 530
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    array-length v1, v0

    .line 531
    .local v1, "fullLength":I
    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-static {v0, p1, v7, v8}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->access$000([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v4

    .line 532
    .local v4, "pos":I
    if-gez v4, :cond_1

    monitor-exit v6

    .line 540
    :goto_0
    return v5

    .line 533
    :cond_1
    add-int/lit8 v5, v1, -0x1

    new-array v3, v5, [Ljava/lang/Object;

    .line 534
    .local v3, "newarr":[Ljava/lang/Object;
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    sub-int/2addr v5, v4

    add-int/lit8 v2, v5, -0x1

    .line 535
    .local v2, "moved":I
    if-lez v4, :cond_2

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    :cond_2
    if-lez v2, :cond_3

    add-int/lit8 v5, v4, 0x1

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    :cond_3
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 538
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 539
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 540
    const/4 v5, 0x1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 13
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v9, 0x0

    .line 584
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 604
    :goto_0
    return v9

    .line 585
    :cond_0
    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v10

    .line 586
    :try_start_0
    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 587
    .local v0, "array":[Ljava/lang/Object;
    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v11, :cond_1

    new-instance v9, Ljava/util/ConcurrentModificationException;

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 605
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 588
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_1
    :try_start_1
    array-length v1, v0

    .line 589
    .local v1, "fullLength":I
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    new-array v8, v11, [Ljava/lang/Object;

    .line 590
    .local v8, "tmp":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 591
    .local v6, "retained":I
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .local v2, "i":I
    move v7, v6

    .end local v6    # "retained":I
    .local v7, "retained":I
    :goto_1
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v12, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v11, v12

    if-ge v2, v11, :cond_2

    .line 592
    aget-object v5, v0, v2

    .line 593
    .local v5, "o":Ljava/lang/Object;
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "retained":I
    .restart local v6    # "retained":I
    aput-object v5, v8, v7

    .line 591
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "retained":I
    .restart local v7    # "retained":I
    goto :goto_1

    .line 595
    .end local v5    # "o":Ljava/lang/Object;
    :cond_2
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-ne v7, v11, :cond_3

    monitor-exit v10

    goto :goto_0

    .line 596
    :cond_3
    add-int v9, v1, v7

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    sub-int/2addr v9, v11

    new-array v4, v9, [Ljava/lang/Object;

    .line 597
    .local v4, "newarr":[Ljava/lang/Object;
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v9, v1, v9

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    sub-int v3, v9, v11

    .line 598
    .local v3, "moved":I
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    if-lez v9, :cond_4

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget v12, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-static {v0, v9, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    :cond_4
    if-lez v7, :cond_5

    const/4 v9, 0x0

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-static {v8, v9, v4, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    :cond_5
    if-lez v3, :cond_6

    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v9, v11

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v11, v7

    invoke-static {v0, v9, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    :cond_6
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 602
    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 603
    iput v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 604
    const/4 v9, 0x1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "moved":I
    .end local v4    # "newarr":[Ljava/lang/Object;
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_7
    move v6, v7

    .end local v7    # "retained":I
    .restart local v6    # "retained":I
    goto :goto_2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 13
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v9, 0x0

    .line 609
    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v10

    .line 610
    :try_start_0
    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 611
    .local v0, "array":[Ljava/lang/Object;
    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v11, :cond_0

    new-instance v9, Ljava/util/ConcurrentModificationException;

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 629
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 612
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    array-length v1, v0

    .line 613
    .local v1, "fullLength":I
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    new-array v8, v11, [Ljava/lang/Object;

    .line 614
    .local v8, "tmp":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 615
    .local v6, "retained":I
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .local v2, "i":I
    move v7, v6

    .end local v6    # "retained":I
    .local v7, "retained":I
    :goto_0
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v12, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v11, v12

    if-ge v2, v11, :cond_1

    .line 616
    aget-object v5, v0, v2

    .line 617
    .local v5, "o":Ljava/lang/Object;
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "retained":I
    .restart local v6    # "retained":I
    aput-object v5, v8, v7

    .line 615
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "retained":I
    .restart local v7    # "retained":I
    goto :goto_0

    .line 619
    .end local v5    # "o":Ljava/lang/Object;
    :cond_1
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-ne v7, v11, :cond_2

    monitor-exit v10

    .line 628
    :goto_2
    return v9

    .line 620
    :cond_2
    add-int v9, v1, v7

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    sub-int/2addr v9, v11

    new-array v4, v9, [Ljava/lang/Object;

    .line 621
    .local v4, "newarr":[Ljava/lang/Object;
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v9, v1, v9

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    sub-int v3, v9, v11

    .line 622
    .local v3, "moved":I
    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    if-lez v9, :cond_3

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget v12, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-static {v0, v9, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    :cond_3
    if-lez v7, :cond_4

    const/4 v9, 0x0

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-static {v8, v9, v4, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    :cond_4
    if-lez v3, :cond_5

    iget v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int/2addr v9, v11

    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v11, v7

    invoke-static {v0, v9, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    :cond_5
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 626
    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 627
    iput v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    .line 628
    const/4 v9, 0x1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v3    # "moved":I
    .end local v4    # "newarr":[Ljava/lang/Object;
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_6
    move v6, v7

    .end local v7    # "retained":I
    .restart local v6    # "retained":I
    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 688
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v5

    .line 689
    if-ltz p1, :cond_0

    :try_start_0
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-lt p1, v4, :cond_1

    .line 690
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 709
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 693
    :cond_1
    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 694
    .local v3, "oldarr":[Ljava/lang/Object;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 695
    :cond_2
    array-length v0, v3

    .line 697
    .local v0, "fullLength":I
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v4, p1

    aget-object v2, v3, v4

    .line 698
    .local v2, "oldVal":Ljava/lang/Object;
    if-ne v2, p2, :cond_3

    .line 699
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 708
    :goto_0
    monitor-exit v5

    return-object v2

    .line 702
    :cond_3
    new-array v1, v0, [Ljava/lang/Object;

    .line 703
    .local v1, "newarr":[Ljava/lang/Object;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v4, p1

    aput-object p2, v1, v4

    .line 705
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 706
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 800
    if-ltz p1, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 803
    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 502
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, "array":[Ljava/lang/Object;
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 504
    .local v1, "newarr":[Ljava/lang/Object;
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 509
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, p1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-ge v1, v2, :cond_1

    .line 511
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 512
    .restart local p1    # "a":[Ljava/lang/Object;
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    :cond_0
    :goto_0
    return-object p1

    .line 515
    :cond_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    array-length v1, p1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    if-le v1, v2, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 809
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v5

    .line 810
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 811
    .local v0, "array":[Ljava/lang/Object;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 813
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 812
    .restart local v0    # "array":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->length:I

    add-int v3, v4, v6

    .line 813
    .local v3, "last":I
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 815
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 816
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 817
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    if-le v2, v4, :cond_1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    :cond_1
    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    :cond_2
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 821
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
