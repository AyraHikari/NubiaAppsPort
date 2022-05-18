.class Lu/aly/ba$a;
.super Lu/aly/cy;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cy",
        "<",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lu/aly/cy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ba$1;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lu/aly/ba$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/co;Lu/aly/ba;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 395
    invoke-virtual {p1}, Lu/aly/co;->j()Lu/aly/ct;

    .line 397
    :goto_0
    invoke-virtual {p1}, Lu/aly/co;->l()Lu/aly/cj;

    move-result-object v0

    .line 398
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {p1}, Lu/aly/co;->k()V

    .line 443
    invoke-virtual {p2}, Lu/aly/ba;->n()Z

    move-result v0

    if-nez v0, :cond_5

    .line 444
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    iget-short v1, v0, Lu/aly/cj;->c:S

    packed-switch v1, :pswitch_data_0

    .line 435
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    .line 437
    :goto_1
    invoke-virtual {p1}, Lu/aly/co;->m()V

    goto :goto_0

    .line 403
    :pswitch_0
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-ne v1, v4, :cond_1

    .line 404
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    .line 405
    invoke-virtual {p2, v3}, Lu/aly/ba;->a(Z)V

    goto :goto_1

    .line 407
    :cond_1
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 411
    :pswitch_1
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-ne v1, v4, :cond_2

    .line 412
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ba;->b:Ljava/lang/String;

    .line 413
    invoke-virtual {p2, v3}, Lu/aly/ba;->b(Z)V

    goto :goto_1

    .line 415
    :cond_2
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 419
    :pswitch_2
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-ne v1, v4, :cond_3

    .line 420
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ba;->c:Ljava/lang/String;

    .line 421
    invoke-virtual {p2, v3}, Lu/aly/ba;->c(Z)V

    goto :goto_1

    .line 423
    :cond_3
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 427
    :pswitch_3
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 428
    invoke-virtual {p1}, Lu/aly/co;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ba;->d:J

    .line 429
    invoke-virtual {p2, v3}, Lu/aly/ba;->d(Z)V

    goto :goto_1

    .line 431
    :cond_4
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 447
    :cond_5
    invoke-virtual {p2}, Lu/aly/ba;->o()V

    .line 448
    return-void

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 390
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$a;->b(Lu/aly/co;Lu/aly/ba;)V

    return-void
.end method

.method public b(Lu/aly/co;Lu/aly/ba;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p2}, Lu/aly/ba;->o()V

    .line 454
    invoke-static {}, Lu/aly/ba;->q()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/ct;)V

    .line 455
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Lu/aly/ba;->r()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 457
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 460
    :cond_0
    iget-object v0, p2, Lu/aly/ba;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p2}, Lu/aly/ba;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-static {}, Lu/aly/ba;->s()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 463
    iget-object v0, p2, Lu/aly/ba;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 467
    :cond_1
    iget-object v0, p2, Lu/aly/ba;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 468
    invoke-static {}, Lu/aly/ba;->t()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 469
    iget-object v0, p2, Lu/aly/ba;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 472
    :cond_2
    invoke-static {}, Lu/aly/ba;->u()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 473
    iget-wide v0, p2, Lu/aly/ba;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/co;->a(J)V

    .line 474
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 475
    invoke-virtual {p1}, Lu/aly/co;->d()V

    .line 476
    invoke-virtual {p1}, Lu/aly/co;->b()V

    .line 477
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
    .line 390
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$a;->a(Lu/aly/co;Lu/aly/ba;)V

    return-void
.end method
