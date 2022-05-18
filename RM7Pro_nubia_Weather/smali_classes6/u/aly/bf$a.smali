.class Lu/aly/bf$a;
.super Lu/aly/cy;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cy",
        "<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lu/aly/cy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bf$1;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lu/aly/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/co;Lu/aly/bf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 341
    invoke-virtual {p1}, Lu/aly/co;->j()Lu/aly/ct;

    .line 343
    :goto_0
    invoke-virtual {p1}, Lu/aly/co;->l()Lu/aly/cj;

    move-result-object v0

    .line 344
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p1}, Lu/aly/co;->k()V

    .line 382
    invoke-virtual {p2}, Lu/aly/bf;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 383
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-short v1, v0, Lu/aly/cj;->c:S

    packed-switch v1, :pswitch_data_0

    .line 374
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    .line 376
    :goto_1
    invoke-virtual {p1}, Lu/aly/co;->m()V

    goto :goto_0

    .line 349
    :pswitch_0
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 350
    invoke-virtual {p1}, Lu/aly/co;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bf;->a:I

    .line 351
    invoke-virtual {p2, v3}, Lu/aly/bf;->a(Z)V

    goto :goto_1

    .line 353
    :cond_1
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 357
    :pswitch_1
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 358
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->b:Ljava/lang/String;

    .line 359
    invoke-virtual {p2, v3}, Lu/aly/bf;->b(Z)V

    goto :goto_1

    .line 361
    :cond_2
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 365
    :pswitch_2
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 366
    new-instance v0, Lu/aly/bd;

    invoke-direct {v0}, Lu/aly/bd;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->c:Lu/aly/bd;

    .line 367
    iget-object v0, p2, Lu/aly/bf;->c:Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->a(Lu/aly/co;)V

    .line 368
    invoke-virtual {p2, v3}, Lu/aly/bf;->c(Z)V

    goto :goto_1

    .line 370
    :cond_3
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 386
    :cond_4
    invoke-virtual {p2}, Lu/aly/bf;->l()V

    .line 387
    return-void

    .line 347
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
    .line 336
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$a;->b(Lu/aly/co;Lu/aly/bf;)V

    return-void
.end method

.method public b(Lu/aly/co;Lu/aly/bf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p2}, Lu/aly/bf;->l()V

    .line 393
    invoke-static {}, Lu/aly/bf;->m()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/ct;)V

    .line 394
    invoke-static {}, Lu/aly/bf;->n()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 395
    iget v0, p2, Lu/aly/bf;->a:I

    invoke-virtual {p1, v0}, Lu/aly/co;->a(I)V

    .line 396
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 397
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p2}, Lu/aly/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lu/aly/bf;->o()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 400
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 404
    :cond_0
    iget-object v0, p2, Lu/aly/bf;->c:Lu/aly/bd;

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p2}, Lu/aly/bf;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-static {}, Lu/aly/bf;->q()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 407
    iget-object v0, p2, Lu/aly/bf;->c:Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->b(Lu/aly/co;)V

    .line 408
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 411
    :cond_1
    invoke-virtual {p1}, Lu/aly/co;->d()V

    .line 412
    invoke-virtual {p1}, Lu/aly/co;->b()V

    .line 413
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
    .line 336
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$a;->a(Lu/aly/co;Lu/aly/bf;)V

    return-void
.end method
