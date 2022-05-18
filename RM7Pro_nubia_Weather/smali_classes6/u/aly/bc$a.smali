.class Lu/aly/bc$a;
.super Lu/aly/cy;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cy",
        "<",
        "Lu/aly/bc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lu/aly/cy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bc$1;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lu/aly/bc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/co;Lu/aly/bc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 389
    invoke-virtual {p1}, Lu/aly/co;->j()Lu/aly/ct;

    .line 391
    :goto_0
    invoke-virtual {p1}, Lu/aly/co;->l()Lu/aly/cj;

    move-result-object v0

    .line 392
    iget-byte v2, v0, Lu/aly/cj;->b:B

    if-nez v2, :cond_0

    .line 447
    invoke-virtual {p1}, Lu/aly/co;->k()V

    .line 451
    invoke-virtual {p2}, Lu/aly/bc;->o()V

    .line 452
    return-void

    .line 395
    :cond_0
    iget-short v2, v0, Lu/aly/cj;->c:S

    packed-switch v2, :pswitch_data_0

    .line 443
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    .line 445
    :goto_1
    invoke-virtual {p1}, Lu/aly/co;->m()V

    goto :goto_0

    .line 397
    :pswitch_0
    iget-byte v2, v0, Lu/aly/cj;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 399
    invoke-virtual {p1}, Lu/aly/co;->n()Lu/aly/cl;

    move-result-object v2

    .line 400
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/cl;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    move v0, v1

    .line 401
    :goto_2
    iget v3, v2, Lu/aly/cl;->c:I

    if-ge v0, v3, :cond_1

    .line 404
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v3

    .line 405
    new-instance v4, Lu/aly/bb;

    invoke-direct {v4}, Lu/aly/bb;-><init>()V

    .line 406
    invoke-virtual {v4, p1}, Lu/aly/bb;->a(Lu/aly/co;)V

    .line 407
    iget-object v5, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 409
    :cond_1
    invoke-virtual {p1}, Lu/aly/co;->o()V

    .line 411
    invoke-virtual {p2, v6}, Lu/aly/bc;->a(Z)V

    goto :goto_1

    .line 413
    :cond_2
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 417
    :pswitch_1
    iget-byte v2, v0, Lu/aly/cj;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    .line 419
    invoke-virtual {p1}, Lu/aly/co;->p()Lu/aly/ck;

    move-result-object v2

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/ck;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bc;->b:Ljava/util/List;

    move v0, v1

    .line 421
    :goto_3
    iget v3, v2, Lu/aly/ck;->b:I

    if-ge v0, v3, :cond_3

    .line 423
    new-instance v3, Lu/aly/ba;

    invoke-direct {v3}, Lu/aly/ba;-><init>()V

    .line 424
    invoke-virtual {v3, p1}, Lu/aly/ba;->a(Lu/aly/co;)V

    .line 425
    iget-object v4, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 427
    :cond_3
    invoke-virtual {p1}, Lu/aly/co;->q()V

    .line 429
    invoke-virtual {p2, v6}, Lu/aly/bc;->b(Z)V

    goto :goto_1

    .line 431
    :cond_4
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 435
    :pswitch_2
    iget-byte v2, v0, Lu/aly/cj;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 436
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    .line 437
    invoke-virtual {p2, v6}, Lu/aly/bc;->c(Z)V

    goto/16 :goto_1

    .line 439
    :cond_5
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto/16 :goto_1

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/co;Lu/aly/bp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 384
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->b(Lu/aly/co;Lu/aly/bc;)V

    return-void
.end method

.method public b(Lu/aly/co;Lu/aly/bc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 456
    invoke-virtual {p2}, Lu/aly/bc;->o()V

    .line 458
    invoke-static {}, Lu/aly/bc;->q()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/ct;)V

    .line 459
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 460
    invoke-static {}, Lu/aly/bc;->r()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 462
    new-instance v0, Lu/aly/cl;

    const/16 v1, 0xb

    iget-object v2, p2, Lu/aly/bc;->a:Ljava/util/Map;

    .line 463
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lu/aly/cl;-><init>(BBI)V

    .line 462
    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cl;)V

    .line 464
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

    .line 465
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->b(Lu/aly/co;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p1}, Lu/aly/co;->e()V

    .line 470
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 472
    :cond_1
    iget-object v0, p2, Lu/aly/bc;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 473
    invoke-virtual {p2}, Lu/aly/bc;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    invoke-static {}, Lu/aly/bc;->s()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 476
    new-instance v0, Lu/aly/ck;

    iget-object v1, p2, Lu/aly/bc;->b:Ljava/util/List;

    .line 477
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lu/aly/ck;-><init>(BI)V

    .line 476
    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/ck;)V

    .line 478
    iget-object v0, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    .line 479
    invoke-virtual {v0, p1}, Lu/aly/ba;->b(Lu/aly/co;)V

    goto :goto_1

    .line 481
    :cond_2
    invoke-virtual {p1}, Lu/aly/co;->f()V

    .line 483
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 486
    :cond_3
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 487
    invoke-virtual {p2}, Lu/aly/bc;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    invoke-static {}, Lu/aly/bc;->t()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 489
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 493
    :cond_4
    invoke-virtual {p1}, Lu/aly/co;->d()V

    .line 494
    invoke-virtual {p1}, Lu/aly/co;->b()V

    .line 495
    return-void
.end method

.method public synthetic b(Lu/aly/co;Lu/aly/bp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 384
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->a(Lu/aly/co;Lu/aly/bc;)V

    return-void
.end method
