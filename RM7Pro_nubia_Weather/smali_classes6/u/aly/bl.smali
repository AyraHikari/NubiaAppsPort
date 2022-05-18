.class public Lu/aly/bl;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lu/aly/bl;->a:Z

    .line 28
    const-string v0, "MobclickAgent"

    sput-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lu/aly/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 528
    sget-boolean v0, Lu/aly/bl;->a:Z

    if-eqz v0, :cond_0

    .line 530
    if-nez p2, :cond_2

    .line 531
    if-nez p1, :cond_1

    .line 532
    :try_start_0
    const-string v0, "the msg is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0

    .line 537
    :cond_2
    if-eqz p1, :cond_3

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 543
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        at  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 540
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 266
    :try_start_0
    const-string v0, ""

    .line 267
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :goto_0
    return-void

    .line 271
    :cond_0
    if-eqz p1, :cond_1

    .line 272
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 274
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 461
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    return-void
.end method

.method public static varargs a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 510
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lu/aly/bl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 552
    sget-boolean v0, Lu/aly/bl;->a:Z

    if-eqz v0, :cond_0

    .line 554
    if-nez p2, :cond_2

    .line 555
    if-nez p1, :cond_1

    .line 556
    :try_start_0
    const-string v0, "the msg is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0

    .line 561
    :cond_2
    if-eqz p1, :cond_3

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 567
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        at  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 564
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lu/aly/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 310
    :try_start_0
    const-string v0, ""

    .line 311
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    :goto_0
    return-void

    .line 315
    :cond_0
    if-eqz p1, :cond_1

    .line 316
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 318
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lu/aly/bl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lu/aly/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    return-void
.end method

.method public static varargs b(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 576
    sget-boolean v0, Lu/aly/bl;->a:Z

    if-eqz v0, :cond_0

    .line 578
    if-nez p2, :cond_2

    .line 579
    if-nez p1, :cond_1

    .line 580
    :try_start_0
    const-string v0, "the msg is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    goto :goto_0

    .line 585
    :cond_2
    if-eqz p1, :cond_3

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 591
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        at  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 588
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 355
    :try_start_0
    const-string v0, ""

    .line 356
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    :goto_0
    return-void

    .line 360
    :cond_0
    if-eqz p1, :cond_1

    .line 361
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 363
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 469
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    return-void
.end method

.method public static varargs c(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 147
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 600
    sget-boolean v0, Lu/aly/bl;->a:Z

    if-eqz v0, :cond_0

    .line 602
    if-nez p2, :cond_2

    .line 603
    if-nez p1, :cond_1

    .line 604
    :try_start_0
    const-string v0, "the msg is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    goto :goto_0

    .line 609
    :cond_2
    if-eqz p1, :cond_3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 615
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        at  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 612
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 495
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lu/aly/bl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 399
    :try_start_0
    const-string v0, ""

    .line 400
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    :goto_0
    return-void

    .line 404
    :cond_0
    if-eqz p1, :cond_1

    .line 405
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 407
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lu/aly/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lu/aly/bl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    return-void
.end method

.method public static varargs d(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 522
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 624
    sget-boolean v0, Lu/aly/bl;->a:Z

    if-eqz v0, :cond_0

    .line 626
    if-nez p2, :cond_2

    .line 627
    if-nez p1, :cond_1

    .line 628
    :try_start_0
    const-string v0, "the msg is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    goto :goto_0

    .line 633
    :cond_2
    if-eqz p1, :cond_3

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 639
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        at  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 636
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 443
    :try_start_0
    const-string v0, ""

    .line 444
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    :goto_0
    return-void

    .line 448
    :cond_0
    if-eqz p1, :cond_1

    .line 449
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 451
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 477
    sget-object v0, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    return-void
.end method

.method public static varargs e(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    sget-object v1, Lu/aly/bl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
