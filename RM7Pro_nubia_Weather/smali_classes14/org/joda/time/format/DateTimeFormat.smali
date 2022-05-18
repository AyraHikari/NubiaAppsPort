.class public Lorg/joda/time/format/DateTimeFormat;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;,
        Lorg/joda/time/format/DateTimeFormat$StyleFormatter;
    }
.end annotation


# static fields
.field static final DATE:I = 0x0

.field static final DATETIME:I = 0x2

.field static final FULL:I = 0x0

.field static final LONG:I = 0x1

.field static final MEDIUM:I = 0x2

.field static final NONE:I = 0x4

.field private static final PATTERN_CACHE_SIZE:I = 0x1f4

.field static final SHORT:I = 0x3

.field static final TIME:I = 0x1

.field private static final cPatternCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private static final cStyleCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormat;->cPatternCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    sput-object v0, Lorg/joda/time/format/DateTimeFormat;->cStyleCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    return-void
.end method

.method static appendPatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->parsePatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private static createDateTimeFormatter(II)Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 753
    const/4 v0, 0x2

    .line 754
    if-ne p0, v1, :cond_1

    .line 755
    const/4 v0, 0x1

    .line 759
    :cond_0
    :goto_0
    new-instance v1, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;

    invoke-direct {v1, p0, p1, v0}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;-><init>(III)V

    .line 760
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    invoke-direct {v0, v1, v1}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)V

    return-object v0

    .line 756
    :cond_1
    if-ne p1, v1, :cond_0

    .line 757
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createFormatterForPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 3

    .prologue
    .line 681
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_1
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->cPatternCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    .line 685
    if-nez v0, :cond_2

    .line 686
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 687
    invoke-static {v0, p0}, Lorg/joda/time/format/DateTimeFormat;->parsePatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    .line 689
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->cPatternCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_3

    .line 692
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->cPatternCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    .line 693
    if-eqz v0, :cond_3

    .line 698
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static createFormatterForStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 711
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 712
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->selectStyle(C)I

    move-result v0

    .line 715
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->selectStyle(C)I

    move-result v1

    .line 716
    if-ne v0, v2, :cond_2

    if-ne v1, v2, :cond_2

    .line 717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style \'--\' is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_2
    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    .line 730
    shl-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    add-int v1, v0, p1

    .line 732
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->cStyleCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 733
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->createDateTimeFormatter(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 742
    :cond_0
    :goto_0
    return-object v0

    .line 735
    :cond_1
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->cStyleCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    .line 736
    if-nez v0, :cond_0

    .line 737
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->createDateTimeFormatter(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 738
    sget-object v2, Lorg/joda/time/format/DateTimeFormat;->cStyleCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 739
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->cStyleCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0
.end method

.method public static forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static forStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 201
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static fullDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 348
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static fullDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static fullTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static isNumericToken(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 640
    if-lez v2, :cond_0

    .line 641
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 642
    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 669
    :goto_0
    :sswitch_0
    return v0

    .line 663
    :sswitch_1
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x59 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_0
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public static longDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 311
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static longDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 335
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static longTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 323
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static mediumDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static mediumDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 298
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static mediumTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static parsePatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 408
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 410
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    .line 411
    const/4 v1, 0x0

    aput v0, v7, v1

    .line 412
    invoke-static {p1, v7}, Lorg/joda/time/format/DateTimeFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    aget v8, v7, v1

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 416
    if-nez v1, :cond_1

    .line 570
    :cond_0
    return-void

    .line 419
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 421
    sparse-switch v2, :sswitch_data_0

    .line 566
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :sswitch_0
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendEraText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 410
    :goto_1
    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    .line 426
    :sswitch_1
    invoke-virtual {p0, v1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendCenturyOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 431
    :sswitch_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 432
    const/4 v0, 0x1

    .line 435
    add-int/lit8 v1, v8, 0x1

    if-ge v1, v6, :cond_3

    .line 436
    const/4 v1, 0x0

    aget v3, v7, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v7, v1

    .line 437
    invoke-static {p1, v7}, Lorg/joda/time/format/DateTimeFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->isNumericToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    const/4 v0, 0x0

    .line 443
    :cond_2
    const/4 v1, 0x0

    aget v3, v7, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v7, v1

    .line 447
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 455
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 449
    :pswitch_0
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getWeekyear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 460
    :cond_4
    const/16 v0, 0x9

    .line 463
    add-int/lit8 v3, v8, 0x1

    if-ge v3, v6, :cond_6

    .line 464
    const/4 v3, 0x0

    aget v4, v7, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v7, v3

    .line 465
    invoke-static {p1, v7}, Lorg/joda/time/format/DateTimeFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/joda/time/format/DateTimeFormat;->isNumericToken(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 469
    :cond_5
    const/4 v3, 0x0

    aget v4, v7, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v7, v3

    .line 472
    :cond_6
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 480
    :sswitch_3
    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendYearOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 474
    :sswitch_4
    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekyear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 477
    :sswitch_5
    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 486
    :sswitch_6
    const/4 v0, 0x3

    if-lt v1, v0, :cond_8

    .line 487
    const/4 v0, 0x4

    if-lt v1, v0, :cond_7

    .line 488
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYearText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 490
    :cond_7
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYearShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 493
    :cond_8
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 497
    :sswitch_7
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 500
    :sswitch_8
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHalfdayOfDayText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 503
    :sswitch_9
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendClockhourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 506
    :sswitch_a
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 509
    :sswitch_b
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendClockhourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 512
    :sswitch_c
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 515
    :sswitch_d
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 518
    :sswitch_e
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 521
    :sswitch_f
    invoke-virtual {p0, v1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 524
    :sswitch_10
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 527
    :sswitch_11
    const/4 v0, 0x4

    if-lt v1, v0, :cond_9

    .line 528
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeekText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 530
    :cond_9
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeekShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 534
    :sswitch_12
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 537
    :sswitch_13
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 540
    :sswitch_14
    const/4 v0, 0x4

    if-lt v1, v0, :cond_a

    .line 541
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneName()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 543
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneShortName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 547
    :sswitch_15
    const/4 v0, 0x1

    if-ne v1, v0, :cond_b

    .line 548
    const/4 v1, 0x0

    const-string v2, "Z"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 549
    :cond_b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    .line 550
    const/4 v1, 0x0

    const-string v2, "Z"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 552
    :cond_c
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneId()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 556
    :sswitch_16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 558
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 562
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_16
        0x43 -> :sswitch_1
        0x44 -> :sswitch_12
        0x45 -> :sswitch_11
        0x47 -> :sswitch_0
        0x48 -> :sswitch_a
        0x4b -> :sswitch_c
        0x4d -> :sswitch_6
        0x53 -> :sswitch_f
        0x59 -> :sswitch_2
        0x5a -> :sswitch_15
        0x61 -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_10
        0x68 -> :sswitch_9
        0x6b -> :sswitch_b
        0x6d -> :sswitch_d
        0x73 -> :sswitch_e
        0x77 -> :sswitch_13
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_14
    .end sparse-switch

    .line 447
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch

    .line 472
    :sswitch_data_1
    .sparse-switch
        0x59 -> :sswitch_3
        0x78 -> :sswitch_4
        0x79 -> :sswitch_5
    .end sparse-switch
.end method

.method private static parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x61

    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    aget v2, p1, v1

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 586
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 587
    if-lt v0, v8, :cond_0

    if-le v0, v9, :cond_1

    :cond_0
    if-lt v0, v10, :cond_2

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_2

    .line 590
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_8

    .line 593
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 594
    if-ne v5, v0, :cond_8

    .line 595
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    add-int/lit8 v2, v2, 0x1

    .line 600
    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 607
    :goto_1
    if-ge v2, v4, :cond_8

    .line 608
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 610
    if-ne v5, v7, :cond_5

    .line 611
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    .line 613
    add-int/lit8 v2, v2, 0x1

    .line 614
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 616
    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 618
    :cond_5
    if-nez v0, :cond_9

    if-lt v5, v8, :cond_6

    if-le v5, v9, :cond_7

    :cond_6
    if-lt v5, v10, :cond_9

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_9

    .line 620
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 628
    :cond_8
    aput v2, p1, v1

    .line 629
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 623
    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static patternForStyle(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 220
    if-nez p1, :cond_0

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 224
    :cond_0
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectStyle(C)I
    .locals 3

    .prologue
    .line 770
    sparse-switch p0, :sswitch_data_0

    .line 782
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :sswitch_0
    const/4 v0, 0x3

    .line 780
    :goto_0
    return v0

    .line 774
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 776
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 778
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 780
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 770
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_4
        0x46 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public static shortDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static shortDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 261
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static shortTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
