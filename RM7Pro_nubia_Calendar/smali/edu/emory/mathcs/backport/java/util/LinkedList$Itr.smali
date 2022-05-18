.class Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

.field expectedModCount:I

.field idx:I

.field lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/LinkedList;)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;

    .prologue
    .line 373
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;I)V

    .line 374
    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;I)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;
    .param p2, "cursor"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .param p3, "idx"    # I

    .prologue
    .line 366
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 368
    iput p3, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    .line 369
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    .line 370
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 410
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 411
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-static {v0, v1, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$200(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 413
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    .line 414
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    .line 415
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 395
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 396
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 397
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    .line 398
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 403
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 404
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 405
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    .line 406
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 423
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 425
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-ne v0, v1, :cond_2

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->idx:I

    .line 426
    :goto_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$300(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 428
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->expectedModCount:I

    .line 429
    return-void

    .line 425
    :cond_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newVal"    # Ljava/lang/Object;

    .prologue
    .line 418
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 419
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object p1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    .line 420
    return-void
.end method
