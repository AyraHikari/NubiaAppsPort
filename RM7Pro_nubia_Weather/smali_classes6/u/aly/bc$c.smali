.class Lu/aly/bc$c;
.super Lu/aly/cz;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cz",
        "<",
        "Lu/aly/bc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lu/aly/cz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bc$1;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lu/aly/bc$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/co;Lu/aly/bc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 510
    check-cast p1, Lu/aly/cu;

    .line 512
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/cu;->a(I)V

    .line 513
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/cu;->a(Ljava/lang/String;)V

    .line 515
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->b(Lu/aly/co;)V

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 519
    invoke-virtual {p2}, Lu/aly/bc;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 522
    :cond_1
    invoke-virtual {p2}, Lu/aly/bc;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 525
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/cu;->a(Ljava/util/BitSet;I)V

    .line 526
    invoke-virtual {p2}, Lu/aly/bc;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/cu;->a(I)V

    .line 529
    iget-object v0, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    .line 530
    invoke-virtual {v0, p1}, Lu/aly/ba;->b(Lu/aly/co;)V

    goto :goto_1

    .line 534
    :cond_3
    invoke-virtual {p2}, Lu/aly/bc;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cu;->a(Ljava/lang/String;)V

    .line 537
    :cond_4
    return-void
.end method

.method public bridge synthetic a(Lu/aly/co;Lu/aly/bp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 505
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$c;->a(Lu/aly/co;Lu/aly/bc;)V

    return-void
.end method

.method public b(Lu/aly/co;Lu/aly/bc;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 542
    check-cast p1, Lu/aly/cu;

    .line 544
    new-instance v2, Lu/aly/cl;

    const/16 v0, 0xb

    .line 546
    invoke-virtual {p1}, Lu/aly/cu;->w()I

    move-result v3

    invoke-direct {v2, v0, v7, v3}, Lu/aly/cl;-><init>(BBI)V

    .line 547
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/cl;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    move v0, v1

    .line 548
    :goto_0
    iget v3, v2, Lu/aly/cl;->c:I

    if-ge v0, v3, :cond_0

    .line 551
    invoke-virtual {p1}, Lu/aly/cu;->z()Ljava/lang/String;

    move-result-object v3

    .line 552
    new-instance v4, Lu/aly/bb;

    invoke-direct {v4}, Lu/aly/bb;-><init>()V

    .line 553
    invoke-virtual {v4, p1}, Lu/aly/bb;->a(Lu/aly/co;)V

    .line 554
    iget-object v5, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p2, v6}, Lu/aly/bc;->a(Z)V

    .line 558
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/cu;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 559
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 561
    new-instance v2, Lu/aly/ck;

    .line 562
    invoke-virtual {p1}, Lu/aly/cu;->w()I

    move-result v3

    invoke-direct {v2, v7, v3}, Lu/aly/ck;-><init>(BI)V

    .line 563
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, Lu/aly/ck;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bc;->b:Ljava/util/List;

    .line 564
    :goto_1
    iget v3, v2, Lu/aly/ck;->b:I

    if-ge v1, v3, :cond_1

    .line 566
    new-instance v3, Lu/aly/ba;

    invoke-direct {v3}, Lu/aly/ba;-><init>()V

    .line 567
    invoke-virtual {v3, p1}, Lu/aly/ba;->a(Lu/aly/co;)V

    .line 568
    iget-object v4, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {p2, v6}, Lu/aly/bc;->b(Z)V

    .line 573
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    invoke-virtual {p1}, Lu/aly/cu;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    .line 575
    invoke-virtual {p2, v6}, Lu/aly/bc;->c(Z)V

    .line 577
    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lu/aly/co;Lu/aly/bp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 505
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$c;->b(Lu/aly/co;Lu/aly/bc;)V

    return-void
.end method
