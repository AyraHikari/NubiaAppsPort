.class Lu/aly/bb$a;
.super Lu/aly/cy;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cy",
        "<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/cy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/bb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/co;Lu/aly/bb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 336
    invoke-virtual {p1}, Lu/aly/co;->j()Lu/aly/ct;

    .line 338
    :goto_0
    invoke-virtual {p1}, Lu/aly/co;->l()Lu/aly/cj;

    move-result-object v0

    .line 339
    iget-byte v1, v0, Lu/aly/cj;->b:B

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p1}, Lu/aly/co;->k()V

    .line 376
    invoke-virtual {p2}, Lu/aly/bb;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 377
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iget-short v1, v0, Lu/aly/cj;->c:S

    packed-switch v1, :pswitch_data_0

    .line 368
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    .line 370
    :goto_1
    invoke-virtual {p1}, Lu/aly/co;->m()V

    goto :goto_0

    .line 344
    :pswitch_0
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 345
    invoke-virtual {p1}, Lu/aly/co;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    .line 346
    invoke-virtual {p2, v3}, Lu/aly/bb;->a(Z)V

    goto :goto_1

    .line 348
    :cond_1
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 352
    :pswitch_1
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 353
    invoke-virtual {p1}, Lu/aly/co;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bb;->b:J

    .line 354
    invoke-virtual {p2, v3}, Lu/aly/bb;->b(Z)V

    goto :goto_1

    .line 356
    :cond_2
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 360
    :pswitch_2
    iget-byte v1, v0, Lu/aly/cj;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 361
    invoke-virtual {p1}, Lu/aly/co;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bb;->c:I

    .line 362
    invoke-virtual {p2, v3}, Lu/aly/bb;->c(Z)V

    goto :goto_1

    .line 364
    :cond_3
    iget-byte v0, v0, Lu/aly/cj;->b:B

    invoke-static {p1, v0}, Lu/aly/cr;->a(Lu/aly/co;B)V

    goto :goto_1

    .line 380
    :cond_4
    invoke-virtual {p2}, Lu/aly/bb;->k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 381
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_5
    invoke-virtual {p2}, Lu/aly/bb;->l()V

    .line 385
    return-void

    .line 342
    nop

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
    .line 331
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$a;->b(Lu/aly/co;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/co;Lu/aly/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p2}, Lu/aly/bb;->l()V

    .line 391
    invoke-static {}, Lu/aly/bb;->m()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/ct;)V

    .line 392
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lu/aly/bb;->n()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 394
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 397
    :cond_0
    invoke-static {}, Lu/aly/bb;->o()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 398
    iget-wide v0, p2, Lu/aly/bb;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/co;->a(J)V

    .line 399
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 400
    invoke-static {}, Lu/aly/bb;->q()Lu/aly/cj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/co;->a(Lu/aly/cj;)V

    .line 401
    iget v0, p2, Lu/aly/bb;->c:I

    invoke-virtual {p1, v0}, Lu/aly/co;->a(I)V

    .line 402
    invoke-virtual {p1}, Lu/aly/co;->c()V

    .line 403
    invoke-virtual {p1}, Lu/aly/co;->d()V

    .line 404
    invoke-virtual {p1}, Lu/aly/co;->b()V

    .line 405
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
    .line 331
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$a;->a(Lu/aly/co;Lu/aly/bb;)V

    return-void
.end method
