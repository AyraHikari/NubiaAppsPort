.class Lu/aly/be$a;
.super Lu/aly/cy;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cy",
        "<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lu/aly/cy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lu/aly/be$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/co;Lu/aly/be;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 339
    invoke-virtual {p1}, Lu/aly/co;->j()Lu/aly/ct;

    .line 341
    :goto_0
    invoke-virtual {p1}, Lu/aly/co;->l()Lu/aly/cj;

    move-result-object v0

    .line 342
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {p1}, Lu/aly/co;->k()V

    .line 379
    invoke-virtual {p2}, Lu/aly/be;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 380
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iget-short v1, v0, Lu/aly/cj;->c:S

    packed-switch v1, :pswitch_data_0

    .line 371
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    .line 373
    :goto_1
    invoke-virtual {p1}, Lu/aly/co;->m()V

    goto :goto_0

    .line 347
    :pswitch_0
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-ne v1, v4, :cond_1

    .line 348
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    .line 349
    invoke-virtual {p2, v3}, Lu/aly/be;->a(Z)V

    goto :goto_1

    .line 351
    :cond_1
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 355
    :pswitch_1
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 356
    invoke-virtual {p1}, Lu/aly/co;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/be;->b:J

    .line 357
    invoke-virtual {p2, v3}, Lu/aly/be;->b(Z)V

    goto :goto_1

    .line 359
    :cond_2
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 363
    :pswitch_2
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-ne v1, v4, :cond_3

    .line 364
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    .line 365
    invoke-virtual {p2, v3}, Lu/aly/be;->c(Z)V

    goto :goto_1

    .line 367
    :cond_3
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 383
    :cond_4
    invoke-virtual {p2}, Lu/aly/be;->l()V

    .line 384
    return-void

    .line 345
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
    .line 334
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->b(Lu/aly/co;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/co;Lu/aly/be;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p2}, Lu/aly/be;->l()V

    .line 390
    invoke-static {}, Lu/aly/be;->m()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/ct;)V

    .line 391
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p2}, Lu/aly/be;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lu/aly/be;->n()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 394
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 398
    :cond_0
    invoke-static {}, Lu/aly/be;->o()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 399
    iget-wide v0, p2, Lu/aly/be;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/co;->a(J)V

    .line 400
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 401
    iget-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 402
    invoke-static {}, Lu/aly/be;->q()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 403
    iget-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 406
    :cond_1
    invoke-virtual {p1}, Lu/aly/co;->d()V

    .line 407
    invoke-virtual {p1}, Lu/aly/co;->b()V

    .line 408
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
    .line 334
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->a(Lu/aly/co;Lu/aly/be;)V

    return-void
.end method
