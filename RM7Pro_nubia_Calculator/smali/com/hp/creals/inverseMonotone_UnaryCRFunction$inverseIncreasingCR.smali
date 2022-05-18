.class Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;
.super Lcom/hp/creals/CR;
.source "UnaryCRFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/creals/inverseMonotone_UnaryCRFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "inverseIncreasingCR"
.end annotation


# instance fields
.field final arg:Lcom/hp/creals/CR;

.field final synthetic this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;


# direct methods
.method constructor <init>(Lcom/hp/creals/inverseMonotone_UnaryCRFunction;Lcom/hp/creals/CR;)V
    .locals 1

    .line 328
    iput-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 329
    iget-object p1, p1, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_negated:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->arg:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 24

    move-object/from16 v0, p0

    .line 344
    iget-object v2, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v2, v2, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 348
    iget-object v4, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v4, v4, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_msd:[I

    aget v4, v4, v3

    sub-int v4, v4, p1

    if-gez v4, :cond_0

    .line 349
    sget-object v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big0:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    add-int/lit8 v5, p1, -0x4

    .line 351
    iget-object v6, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v6, v6, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_arg_prec:[I

    aget v6, v6, v3

    if-le v5, v6, :cond_1

    .line 352
    iget-object v5, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v5, v5, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_arg_prec:[I

    aget v5, v5, v3

    .line 354
    :cond_1
    iget-object v6, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v6, v6, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->deriv_msd:[I

    aget v6, v6, v3

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x14

    .line 377
    iget-object v7, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v7, v7, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    aget-object v7, v7, v3

    invoke-virtual {v7, v5}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 379
    iget-object v8, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v8, v8, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    aget-object v8, v8, v3

    invoke-virtual {v8, v5}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 381
    iget-object v9, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->arg:Lcom/hp/creals/CR;

    invoke-virtual {v9, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 382
    iget-boolean v10, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->appr_valid:Z

    if-eqz v10, :cond_2

    iget v10, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->min_prec:I

    iget-object v12, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v12, v12, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_msd:[I

    aget v12, v12, v3

    if-ge v10, v12, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    move v10, v3

    :goto_0
    const/16 v12, 0x1e

    if-ge v4, v12, :cond_4

    if-nez v10, :cond_4

    const-string v1, "Setting interval to entire domain"

    .line 384
    invoke-static {v1}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 386
    iget-object v1, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v1, v1, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    aget-object v1, v1, v3

    invoke-virtual {v1, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 388
    iget-object v4, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v4, v4, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 391
    sget-object v10, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_3

    sget-object v10, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gtz v10, :cond_3

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v23, v4

    move-object v4, v1

    :goto_1
    move-object/from16 v1, v23

    goto/16 :goto_3

    .line 393
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "inverse(out-of-bounds)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_4
    div-int/lit8 v13, v4, 0x2

    add-int v13, p1, v13

    if-eqz v10, :cond_6

    if-lt v4, v12, :cond_5

    .line 401
    iget v10, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->min_prec:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int v1, p1, v4

    if-ge v10, v1, :cond_6

    .line 403
    :cond_5
    iget v13, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->min_prec:I

    .line 405
    :cond_6
    invoke-virtual {v0, v13}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v1

    const-string v4, "Setting interval based on prev. appr"

    .line 406
    invoke-static {v4}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prev. prec = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " appr = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 408
    sget-object v4, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sub-int/2addr v13, v5

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 410
    sget-object v10, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 412
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-lez v10, :cond_7

    .line 414
    iget-object v4, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v4, v4, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v10, 0x1

    goto :goto_2

    .line 417
    :cond_7
    invoke-static {v4}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object v8

    .line 418
    invoke-virtual {v2, v8}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v8

    move v10, v3

    move-object/from16 v23, v8

    move-object v8, v4

    move-object/from16 v4, v23

    .line 421
    :goto_2
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v12

    if-gez v12, :cond_8

    .line 423
    iget-object v1, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v1, v1, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    aget-object v1, v1, v3

    invoke-virtual {v1, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v1

    move v13, v10

    const/4 v12, 0x1

    move v10, v3

    goto :goto_3

    .line 426
    :cond_8
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object v7

    .line 427
    invoke-virtual {v2, v7}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v7

    move v12, v3

    move v13, v10

    move v10, v12

    move-object/from16 v23, v7

    move-object v7, v1

    goto/16 :goto_1

    .line 431
    :goto_3
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move v15, v13

    move v13, v12

    move v12, v10

    move-object v10, v4

    move-object v4, v1

    move v1, v3

    .line 433
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v16

    if-nez v16, :cond_1d

    sget-boolean v16, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->please_stop:Z

    if-nez v16, :cond_1d

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***Iteration: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Arg prec = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " eval prec = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " arg appr. = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "l = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "h = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "f(l) = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "f(h) = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 441
    sget-object v3, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big6:Ljava/math/BigInteger;

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_9

    const/4 v0, -0x4

    .line 443
    invoke-static {v8, v0}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 445
    :cond_9
    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    if-gtz v12, :cond_b

    .line 450
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-nez v11, :cond_a

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v11, 0x1

    :goto_6
    if-eqz v11, :cond_c

    const-string v3, "binary step"

    .line 455
    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move/from16 v18, v6

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v19, v4

    goto :goto_8

    :cond_c
    move/from16 v18, v6

    const-string v6, "interpolating"

    .line 461
    invoke-static {v6}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 463
    invoke-virtual {v6, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 464
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/16 v6, 0xa

    move-object/from16 v19, v4

    .line 471
    invoke-virtual {v14, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/16 v6, 0x8

    if-gez v4, :cond_d

    .line 472
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    const-string v4, "adjusting left"

    .line 473
    invoke-static {v4}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    goto :goto_7

    .line 474
    :cond_d
    sget-object v4, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->BIG1023:Ljava/math/BigInteger;

    invoke-virtual {v14, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_e

    .line 476
    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v4, "adjusting right"

    .line 478
    invoke-static {v4}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 480
    :cond_e
    :goto_7
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gtz v4, :cond_f

    .line 481
    sget-object v3, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big2:Ljava/math/BigInteger;

    .line 482
    :cond_f
    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_10

    .line 483
    sget-object v3, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big2:Ljava/math/BigInteger;

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 484
    :cond_10
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gtz v4, :cond_11

    sget-object v3, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big2:Ljava/math/BigInteger;

    :cond_11
    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 487
    :goto_8
    sget-object v4, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big2:Ljava/math/BigInteger;

    move-object/from16 v20, v4

    move-object/from16 v16, v10

    move/from16 v6, v18

    const/4 v4, 0x0

    .line 490
    :goto_9
    invoke-static {v3}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object v10

    move-object/from16 v21, v3

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v15

    const-string v15, "Evaluating at "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " with precision "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2, v10}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    .line 495
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fn value = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v3, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 497
    invoke-virtual {v0, v3, v9}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->sloppy_compare(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v10

    if-eqz v10, :cond_15

    if-lez v10, :cond_12

    move-object v10, v3

    move-object/from16 v4, v19

    move-object/from16 v8, v21

    const/4 v15, 0x0

    goto :goto_a

    :cond_12
    move-object v4, v3

    move-object/from16 v10, v16

    move-object/from16 v7, v21

    move/from16 v15, v22

    const/4 v13, 0x0

    .line 553
    :goto_a
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    if-nez v11, :cond_14

    const/4 v11, 0x1

    .line 555
    invoke-virtual {v14, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    if-ltz v14, :cond_13

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_13
    add-int/lit8 v12, v12, -0x1

    goto :goto_b

    :cond_14
    const/4 v11, 0x1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    move-object v14, v3

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v10, 0x1

    if-eqz v4, :cond_1b

    .line 505
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x4

    const/16 v9, -0x14

    if-le v3, v9, :cond_16

    move v3, v9

    .line 507
    :cond_16
    invoke-static {v7}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object v9

    .line 509
    invoke-static {v8}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object v15

    add-int/2addr v6, v3

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New eval prec = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_17

    const-string v10, "(at left)"

    goto :goto_c

    :cond_17
    const-string v10, ""

    :goto_c
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v22, :cond_18

    const-string v10, "(at right)"

    goto :goto_d

    :cond_18
    const-string v10, ""

    :goto_d
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    if-eqz v13, :cond_19

    .line 516
    iget-object v3, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v3, v3, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    const/4 v10, 0x0

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_e

    :cond_19
    const/4 v10, 0x0

    .line 518
    invoke-virtual {v2, v9}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v3

    :goto_e
    if-eqz v22, :cond_1a

    .line 522
    iget-object v9, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->this$0:Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    iget-object v9, v9, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    aget-object v9, v9, v10

    invoke-virtual {v9, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_f

    .line 524
    :cond_1a
    invoke-virtual {v2, v15}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 527
    :goto_f
    iget-object v15, v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->arg:Lcom/hp/creals/CR;

    invoke-virtual {v15, v6}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v15

    move-object/from16 v19, v3

    move-object/from16 v16, v9

    move-object v9, v15

    move-object/from16 v3, v21

    goto :goto_10

    :cond_1b
    const/4 v10, 0x0

    const-string v3, "tweaking guess"

    .line 531
    invoke-static {v3}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->trace(Ljava/lang/String;)V

    move-object/from16 v15, v20

    move-object/from16 v3, v21

    .line 532
    invoke-virtual {v3, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 533
    invoke-virtual {v10, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_1c

    .line 534
    invoke-virtual {v3, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 541
    :cond_1c
    invoke-virtual {v15}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v20, v3

    move-object v3, v10

    :goto_10
    xor-int/lit8 v4, v4, 0x1

    move/from16 v15, v22

    goto/16 :goto_9

    .line 434
    :cond_1d
    new-instance v0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {v0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw v0
.end method

.method sloppy_compare(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 0

    .line 333
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 334
    sget-object p1, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->big1:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 337
    :cond_0
    sget-object p1, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;->bigm1:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
