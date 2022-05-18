.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field transient modCount:I

.field volatile transient table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

.field transient threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "lf"    # F

    .prologue
    .line 291
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 292
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    .line 293
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 294
    return-void
.end method

.method static final newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 297
    new-array v0, p0, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 550
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 551
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 553
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 554
    .local v1, "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 555
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 557
    const/4 v2, 0x0

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 562
    .end local v0    # "i":I
    .end local v1    # "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_1
    return-void

    .line 559
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 352
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 354
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 355
    iget v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const/4 v1, 0x1

    .line 360
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_1
    return v1

    .line 357
    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 360
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 364
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_3

    .line 365
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 366
    .local v3, "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v2, v3

    .line 367
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 368
    aget-object v0, v3, v1

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_1
    if-eqz v0, :cond_2

    .line 369
    iget-object v4, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 370
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 372
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    const/4 v5, 0x1

    .line 377
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v4    # "v":Ljava/lang/Object;
    :goto_2
    return v5

    .line 368
    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_1

    .line 367
    .end local v4    # "v":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 336
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 337
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 338
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_0
    if-eqz v0, :cond_2

    .line 339
    iget v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_1

    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 341
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 348
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v1    # "v":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 343
    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .restart local v1    # "v":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 345
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 348
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 2
    .param p1, "hash"    # I

    .prologue
    .line 313
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 314
    .local v0, "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "onlyIfAbsent"    # Z

    .prologue
    .line 418
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 420
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 421
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v7, :cond_0

    .line 422
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->rehash()V

    .line 423
    :cond_0
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 424
    .local v6, "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v4, p2, v7

    .line 425
    .local v4, "index":I
    aget-object v3, v6, v4

    .line 426
    .local v3, "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    move-object v2, v3

    .line 427
    .local v2, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_2

    iget v7, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v7, p2, :cond_1

    iget-object v7, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 428
    :cond_1
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 431
    :cond_2
    if-eqz v2, :cond_4

    .line 432
    iget-object v5, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 433
    .local v5, "oldValue":Ljava/lang/Object;
    if-nez p4, :cond_3

    .line 434
    iput-object p3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    .end local v5    # "oldValue":Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v5

    .line 437
    :cond_4
    const/4 v5, 0x0

    .line 438
    .restart local v5    # "oldValue":Ljava/lang/Object;
    :try_start_1
    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 439
    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v7, p1, p2, v3, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    .line 440
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 444
    .end local v1    # "c":I
    .end local v2    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v3    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v4    # "index":I
    .end local v5    # "oldValue":Ljava/lang/Object;
    .end local v6    # "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v7
.end method

.method readValueUnderLock(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .prologue
    .line 325
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 327
    :try_start_0
    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()V
    .locals 22

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 450
    .local v15, "oldTable":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v14, v15

    .line 451
    .local v14, "oldCapacity":I
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-lt v14, v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 468
    :cond_0
    shl-int/lit8 v18, v14, 0x1

    invoke-static/range {v18 .. v18}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v12

    .line 469
    .local v12, "newTable":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 470
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v17, v18, -0x1

    .line 471
    .local v17, "sizeMask":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v14, :cond_5

    .line 474
    aget-object v4, v15, v5

    .line 476
    .local v4, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    if-eqz v4, :cond_1

    .line 477
    iget-object v13, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 478
    .local v13, "next":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    iget v0, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v6, v18, v17

    .line 481
    .local v6, "idx":I
    if-nez v13, :cond_2

    .line 482
    aput-object v4, v12, v6

    .line 471
    .end local v6    # "idx":I
    .end local v13    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 486
    .restart local v6    # "idx":I
    .restart local v13    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_2
    move-object v10, v4

    .line 487
    .local v10, "lastRun":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    move v9, v6

    .line 488
    .local v9, "lastIdx":I
    move-object v8, v13

    .line 489
    .local v8, "last":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_2
    if-eqz v8, :cond_4

    .line 491
    iget v0, v8, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v7, v18, v17

    .line 492
    .local v7, "k":I
    if-eq v7, v9, :cond_3

    .line 493
    move v9, v7

    .line 494
    move-object v10, v8

    .line 490
    :cond_3
    iget-object v8, v8, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_2

    .line 497
    .end local v7    # "k":I
    :cond_4
    aput-object v10, v12, v9

    .line 500
    move-object/from16 v16, v4

    .local v16, "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_3
    move-object/from16 v0, v16

    if-eq v0, v10, :cond_1

    .line 501
    move-object/from16 v0, v16

    iget v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v7, v18, v17

    .line 502
    .restart local v7    # "k":I
    aget-object v11, v12, v7

    .line 503
    .local v11, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    new-instance v18, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v11, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v18, v12, v7

    .line 500
    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v16, v0

    goto :goto_3

    .line 509
    .end local v4    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v6    # "idx":I
    .end local v7    # "k":I
    .end local v8    # "last":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v9    # "lastIdx":I
    .end local v10    # "lastRun":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v11    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v13    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v16    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto/16 :goto_0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 516
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 518
    :try_start_0
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v1, v11, -0x1

    .line 519
    .local v1, "c":I
    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 520
    .local v9, "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    and-int v4, p2, v11

    .line 521
    .local v4, "index":I
    aget-object v3, v9, v4

    .line 522
    .local v3, "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    move-object v2, v3

    .line 523
    .local v2, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    iget v11, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v0, p2

    if-ne v11, v0, :cond_0

    iget-object v11, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 524
    :cond_0
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 526
    :cond_1
    const/4 v7, 0x0

    .line 527
    .local v7, "oldValue":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 528
    iget-object v10, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 529
    .local v10, "v":Ljava/lang/Object;
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 530
    :cond_2
    move-object v7, v10

    .line 534
    iget v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 535
    iget-object v5, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 536
    .local v5, "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    move-object v8, v3

    .local v8, "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    move-object v6, v5

    .end local v5    # "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .local v6, "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_1
    if-eq v8, v2, :cond_3

    .line 537
    new-instance v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v11, v8, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v12, v8, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v13, v8, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v5, v11, v12, v6, v13}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    .line 536
    .end local v6    # "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .restart local v5    # "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    iget-object v8, v8, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v6, v5

    .end local v5    # "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .restart local v6    # "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    goto :goto_1

    .line 539
    :cond_3
    aput-object v6, v9, v4

    .line 540
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    .end local v6    # "newFirst":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v7    # "oldValue":Ljava/lang/Object;
    .end local v8    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v10    # "v":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v7

    .end local v1    # "c":I
    .end local v2    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v3    # "first":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v4    # "index":I
    .end local v9    # "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v11
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 399
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 401
    :try_start_0
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 402
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 405
    :cond_1
    const/4 v1, 0x0

    .line 406
    .local v1, "oldValue":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 407
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 408
    iput-object p3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v1

    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 381
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 383
    :try_start_0
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 384
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 387
    :cond_1
    const/4 v1, 0x0

    .line 388
    .local v1, "replaced":Z
    if-eqz v0, :cond_2

    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    const/4 v1, 0x1

    .line 390
    iput-object p4, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_2
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return v1

    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .end local v1    # "replaced":Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method setTable([Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .locals 2
    .param p1, "newTable"    # [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .prologue
    .line 305
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 306
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 307
    return-void
.end method
