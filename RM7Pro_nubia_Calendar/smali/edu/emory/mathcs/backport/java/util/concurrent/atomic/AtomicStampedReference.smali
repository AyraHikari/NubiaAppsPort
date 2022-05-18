.class public Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    }
.end annotation


# instance fields
.field private final atomicRef:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "initialRef"    # Ljava/lang/Object;
    .param p2, "initialStamp"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v1, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;

    .line 42
    return-void
.end method

.method private getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    return-object v0
.end method


# virtual methods
.method public attemptStamp(Ljava/lang/Object;I)Z
    .locals 3
    .param p1, "expectedReference"    # Ljava/lang/Object;
    .param p2, "newStamp"    # I

    .prologue
    .line 159
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    move-result-object v0

    .line 160
    .local v0, "current":Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 3
    .param p1, "expectedReference"    # Ljava/lang/Object;
    .param p2, "newReference"    # Ljava/lang/Object;
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    move-result-object v0

    .line 123
    .local v0, "current":Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-ne p3, v1, :cond_2

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p4, v1, :cond_1

    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p2, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get([I)Ljava/lang/Object;
    .locals 3
    .param p1, "stampHolder"    # [I

    .prologue
    .line 71
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    move-result-object v0

    .line 72
    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    const/4 v1, 0x0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v2

    aput v2, p1, v1

    .line 73
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    move-result-object v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStamp()I
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    move-result-object v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "newReference"    # Ljava/lang/Object;
    .param p2, "newStamp"    # I

    .prologue
    .line 140
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    move-result-object v0

    .line 141
    .local v0, "current":Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 142
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 143
    :cond_1
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 3
    .param p1, "expectedReference"    # Ljava/lang/Object;
    .param p2, "newReference"    # Ljava/lang/Object;
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->getPair()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    move-result-object v0

    .line 97
    .local v0, "current":Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-ne p3, v1, :cond_2

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p4, v1, :cond_1

    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p2, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicReference;->weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
