.class public Lcn/nubia/commonui/widget/LunarUtil;
.super Ljava/lang/Object;
.source "LunarUtil.java"


# static fields
.field public static final ADD_20_IF_LEAPMONTH:I = 0x14

.field public static DAY:Ljava/lang/String; = null

.field public static DEFAULT_END_YEAR:I = 0x0

.field public static DEFAULT_START_YEAR:I = 0x0

.field public static EIGHT:Ljava/lang/String; = null

.field public static FIVE:Ljava/lang/String; = null

.field public static FOUR:Ljava/lang/String; = null

.field public static final IS_DAY:I = 0x2

.field public static final IS_MONTH:I = 0x1

.field public static final IS_YEAR:I = 0x0

.field public static LEAP:Ljava/lang/String; = null

.field public static LUNAR_ELEVENTH_MONTH:Ljava/lang/String; = null

.field public static LUNAR_FIRST_DAY:Ljava/lang/String; = null

.field public static LUNAR_FIRST_MONTH:Ljava/lang/String; = null

.field private static final LUNAR_INFO:[I

.field public static LUNAR_TWELVETH_MONTH:Ljava/lang/String; = null

.field public static LUNAR_TWENTHIETH_DAY:Ljava/lang/String; = null

.field private static final MAX_YEAR:I = 0x802

.field private static final MIN_YEAR:I = 0x76c

.field public static MONTH:Ljava/lang/String; = null

.field public static final MONTHS_LONG:[Ljava/lang/String;

.field public static final MONTHS_SHORT:[Ljava/lang/String;

.field public static NINE:Ljava/lang/String; = null

.field public static ONE:Ljava/lang/String; = null

.field public static SEVEN:Ljava/lang/String; = null

.field public static SIX:Ljava/lang/String; = null

.field private static final START_DATE:Ljava/lang/String; = "19000130"

.field public static TEN:Ljava/lang/String;

.field public static THREE:Ljava/lang/String;

.field public static TWO:Ljava/lang/String;

.field public static final WEEKDAYS_LONG:[Ljava/lang/String;

.field public static final WEEKDAYS_SHORT:[Ljava/lang/String;

.field public static YEAR:Ljava/lang/String;

.field public static ZERO:Ljava/lang/String;

.field public static am:Ljava/lang/String;

.field public static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isLeapYear:Z

.field static months:[I

.field public static pm:Ljava/lang/String;

.field static sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/16 v1, 0xc

    .line 10
    const/16 v0, 0x96

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_INFO:[I

    .line 28
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    .line 29
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    .line 30
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    .line 31
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    .line 36
    const/16 v0, 0x7b2

    sput v0, Lcn/nubia/commonui/widget/LunarUtil;->DEFAULT_START_YEAR:I

    .line 37
    const/16 v0, 0x7f5

    sput v0, Lcn/nubia/commonui/widget/LunarUtil;->DEFAULT_END_YEAR:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/commonui/widget/LunarUtil;->arrayList:Ljava/util/ArrayList;

    .line 471
    const/4 v0, 0x0

    sput v0, Lcn/nubia/commonui/widget/LunarUtil;->sum:I

    .line 472
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/commonui/widget/LunarUtil;->months:[I

    return-void

    .line 10
    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    .line 472
    :array_1
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLunarDate(IIIZ)V
    .locals 3
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 123
    const/16 v1, 0x76c

    if-lt p0, v1, :cond_0

    const/16 v1, 0x802

    if-le p0, v1, :cond_1

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "lunar year error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1
    if-lt p1, v2, :cond_2

    const/16 v1, 0xc

    if-le p1, v1, :cond_3

    .line 127
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "lunar month error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_3
    if-lt p2, v2, :cond_4

    const/16 v1, 0x1e

    if-le p2, v1, :cond_5

    .line 130
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "lunar day error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_5
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 134
    .local v0, "leap":I
    if-ne p3, v2, :cond_6

    if-eq p1, v0, :cond_6

    .line 135
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "leap month error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_6
    return-void
.end method

.method public static clearSum()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    sput v0, Lcn/nubia/commonui/widget/LunarUtil;->sum:I

    .line 487
    return-void
.end method

.method public static computeWeekday(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 451
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 452
    .local v0, "c":I
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 453
    .local v4, "y":I
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 454
    .local v2, "m":I
    const/16 v5, 0x8

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "d":I
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 456
    add-int/lit8 v4, v4, -0x1

    .line 457
    if-gez v4, :cond_0

    .line 458
    add-int/lit8 v0, v0, -0x1

    .line 459
    const/16 v4, 0x63

    .line 461
    :cond_0
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const/16 v2, 0xd

    .line 463
    :cond_1
    :goto_0
    div-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v4

    div-int/lit8 v6, v0, 0x4

    add-int/2addr v5, v6

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x1a

    div-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/lit8 v3, v5, -0x1

    .line 465
    .local v3, "temp":I
    rem-int/lit8 v3, v3, 0x7

    .line 466
    if-gez v3, :cond_2

    .line 467
    add-int/lit8 v3, v3, 0x7

    .line 468
    :cond_2
    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    aget-object v5, v5, v3

    return-object v5

    .line 461
    .end local v3    # "temp":I
    :cond_3
    const/16 v2, 0xe

    goto :goto_0
.end method

.method private static daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 6
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long v0, v2, v4

    .line 117
    .local v0, "between_days":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "md_str"    # Ljava/lang/String;
    .param p1, "md_arr"    # [Ljava/lang/String;
    .param p2, "lunYear"    # I

    .prologue
    const/16 v9, 0xa

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "day":I
    const/4 v3, 0x1

    .line 516
    .local v3, "j":I
    const/4 v2, 0x0

    .line 517
    .local v2, "isLeap":Z
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 518
    .local v5, "mmdd":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 519
    aget-object v6, p1, v1

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 520
    add-int/lit8 v0, v1, 0x1

    .line 524
    :cond_0
    if-nez v0, :cond_2

    .line 525
    const/4 v6, 0x0

    .line 554
    :goto_1
    return-object v6

    .line 518
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_2
    invoke-static {p2}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v4

    .line 528
    .local v4, "leapMonth":I
    const/4 v3, 0x1

    :goto_2
    const/16 v6, 0xc

    if-gt v3, v6, :cond_5

    .line 529
    if-ge v3, v4, :cond_3

    .line 530
    :try_start_0
    invoke-static {p2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_5

    .line 531
    invoke-static {p2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int/2addr v0, v6

    .line 528
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 534
    :cond_3
    if-ne v3, v4, :cond_6

    .line 535
    invoke-static {p2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_5

    .line 536
    invoke-static {p2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int/2addr v0, v6

    .line 537
    invoke-static {p2}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_4

    .line 538
    invoke-static {p2}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonthDays(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_3

    .line 540
    :cond_4
    const/4 v2, 0x1

    .line 554
    :cond_5
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_7

    const-string v6, "0"

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v3, v9, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v0, v9, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 546
    :cond_6
    :try_start_1
    invoke-static {p2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_5

    .line 547
    invoke-static {p2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_3

    .line 554
    :cond_7
    const-string v6, ""

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 552
    :catch_0
    move-exception v6

    goto/16 :goto_4
.end method

.method public static daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "md_str"    # Ljava/lang/String;
    .param p1, "md_arr"    # [Ljava/lang/String;
    .param p2, "isSolarLeapYear"    # Z

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "day":I
    const/4 v3, 0x0

    .line 493
    .local v3, "j":I
    const/4 v5, 0x0

    .line 494
    .local v5, "mm":I
    const/4 v1, 0x0

    .line 495
    .local v1, "dd":I
    new-instance v6, Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 496
    .local v6, "mmdd":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_0

    .line 497
    aget-object v7, p1, v2

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 498
    add-int/lit8 v0, v2, 0x1

    .line 502
    :cond_0
    if-nez v0, :cond_2

    .line 503
    const/4 v7, 0x0

    .line 508
    :goto_1
    return-object v7

    .line 496
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_2
    sget-object v8, Lcn/nubia/commonui/widget/LunarUtil;->months:[I

    if-ne p2, v9, :cond_3

    const/16 v7, 0x1d

    :goto_2
    aput v7, v8, v9

    .line 505
    :goto_3
    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->months:[I

    aget v7, v7, v3

    sub-int v7, v0, v7

    if-lez v7, :cond_4

    .line 506
    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->months:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v7, v7, v3

    sub-int/2addr v0, v7

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    .line 504
    :cond_3
    const/16 v7, 0x1c

    goto :goto_2

    .line 508
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v10, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ge v0, v10, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method public static formatDate(III)Ljava/lang/String;
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/16 v5, 0x9

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    if-le p1, v5, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    .local v1, "yearmonth":Ljava/lang/StringBuilder;
    :goto_0
    if-le p2, v5, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 395
    .local v2, "yearmonthday":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 391
    .end local v1    # "yearmonth":Ljava/lang/StringBuilder;
    .end local v2    # "yearmonthday":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 393
    .restart local v1    # "yearmonth":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLeapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 75
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private static getLeapMonthDays(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 79
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 81
    const/16 v0, 0x1d

    .line 86
    :goto_0
    return v0

    .line 83
    :cond_0
    const/16 v0, 0x1e

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getMonthDays(II)I
    .locals 3
    .param p0, "lunarYeay"    # I
    .param p1, "month"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "month error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    const/4 v1, 0x1

    rsub-int/lit8 v2, p1, 0x10

    shl-int v0, v1, v2

    .line 96
    .local v0, "bit":I
    sget-object v1, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 97
    const/16 v1, 0x1d

    .line 99
    :goto_0
    return v1

    :cond_2
    const/16 v1, 0x1e

    goto :goto_0
.end method

.method public static getTextRes(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_date_year:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->YEAR:Ljava/lang/String;

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_date_month:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_date_day:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_leap:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_lunar_first_day:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_FIRST_DAY:Ljava/lang/String;

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_lunar_twentieth_day:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_TWENTHIETH_DAY:Ljava/lang/String;

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_lunar_first_month:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_FIRST_MONTH:Ljava/lang/String;

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_lunar_eleventh_month:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_ELEVENTH_MONTH:Ljava/lang/String;

    .line 633
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_lunar_twelveth_month:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_TWELVETH_MONTH:Ljava/lang/String;

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_zero:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->ZERO:Ljava/lang/String;

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_one:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->ONE:Ljava/lang/String;

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_two:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->TWO:Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_three:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->THREE:Ljava/lang/String;

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_four:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->FOUR:Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_five:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->FIVE:Ljava/lang/String;

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_six:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->SIX:Ljava/lang/String;

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_seven:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->SEVEN:Ljava/lang/String;

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_eight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->EIGHT:Ljava/lang/String;

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_nine:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->NINE:Ljava/lang/String;

    .line 656
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_ten:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->TEN:Ljava/lang/String;

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_time_am:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->am:Ljava/lang/String;

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_time_pm:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/commonui/widget/LunarUtil;->pm:Ljava/lang/String;

    .line 664
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$array;->nubia_weeks_full:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "weekdaysFull":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 666
    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    aget-object v6, v3, v0

    aput-object v6, v5, v0

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$array;->nubia_weeks_short:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "weekdaysShort":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 670
    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 672
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$array;->nubia_months_full:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "monthsFull":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 674
    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    aget-object v6, v1, v0

    aput-object v6, v5, v0

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 676
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$array;->nubia_months_short:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "monthsShort":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_3
    array-length v5, v2

    if-ge v0, v5, :cond_3

    .line 678
    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    aget-object v6, v2, v0

    aput-object v6, v5, v0

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 680
    :cond_3
    return-void
.end method

.method private static getYearDays(I)I
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 104
    const/16 v1, 0x15c

    .line 105
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 106
    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    const v3, 0xfff0

    and-int/2addr v2, v3

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 105
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public static isLeapMonth(II)Z
    .locals 2
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I

    .prologue
    .line 141
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 142
    .local v0, "leapMonthFlay":Z
    :goto_0
    return v0

    .line 141
    .end local v0    # "leapMonthFlay":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLessTen(I)Z
    .locals 1
    .param p0, "day"    # I

    .prologue
    .line 276
    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSolarLeapYear(I)Z
    .locals 1
    .param p0, "solarYear"    # I

    .prologue
    .line 380
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    .line 382
    :cond_1
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .param p0, "lunarDate"    # Ljava/lang/String;
    .param p1, "leapMonthFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 148
    .local v6, "lunarYear":I
    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 149
    .local v5, "lunarMonth":I
    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 151
    .local v4, "lunarDay":I
    invoke-static {v6, v5, v4, p1}, Lcn/nubia/commonui/widget/LunarUtil;->checkLunarDate(IIIZ)V

    .line 153
    const/4 v8, 0x0

    .line 154
    .local v8, "offset":I
    const/16 v2, 0x76c

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 155
    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->getYearDays(I)I

    move-result v11

    .line 156
    .local v11, "yearDaysCount":I
    add-int/2addr v8, v11

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v11    # "yearDaysCount":I
    :cond_0
    invoke-static {v6}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 160
    .local v3, "leapMonth":I
    if-eq v3, v5, :cond_1

    const/4 v12, 0x1

    :goto_1
    and-int/2addr v12, p1

    if-eqz v12, :cond_2

    .line 161
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "the leapmonth flag error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 160
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 164
    :cond_2
    if-eqz v3, :cond_3

    if-ge v5, v3, :cond_7

    .line 165
    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v5, :cond_4

    .line 166
    invoke-static {v6, v2}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v10

    .line 167
    .local v10, "tempMonthDaysCount":I
    add-int/2addr v8, v10

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 170
    .end local v10    # "tempMonthDaysCount":I
    :cond_4
    invoke-static {v6, v5}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v12

    if-le v4, v12, :cond_5

    .line 171
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 173
    :cond_5
    add-int/2addr v8, v4

    .line 203
    :cond_6
    :goto_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMdd"

    invoke-direct {v1, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 205
    .local v7, "myDate":Ljava/util/Date;
    const-string v12, "19000130"

    invoke-virtual {v1, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 207
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 208
    const/4 v12, 0x5

    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->add(II)V

    .line 209
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 210
    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 175
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "myDate":Ljava/util/Date;
    :cond_7
    const/4 v2, 0x1

    :goto_4
    if-ge v2, v5, :cond_8

    .line 176
    invoke-static {v6, v2}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v10

    .line 177
    .restart local v10    # "tempMonthDaysCount":I
    add-int/2addr v8, v10

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 179
    .end local v10    # "tempMonthDaysCount":I
    :cond_8
    if-le v5, v3, :cond_a

    .line 180
    invoke-static {v6}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v9

    .line 181
    .local v9, "temp":I
    add-int/2addr v8, v9

    .line 183
    invoke-static {v6, v5}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v12

    if-le v4, v12, :cond_9

    .line 184
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 186
    :cond_9
    add-int/2addr v8, v4

    .line 187
    goto :goto_3

    .end local v9    # "temp":I
    :cond_a
    if-ne v5, v3, :cond_6

    .line 188
    if-eqz p1, :cond_b

    .line 189
    invoke-static {v6, v5}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v9

    .line 190
    .restart local v9    # "temp":I
    add-int/2addr v8, v9

    .line 191
    invoke-static {v6}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v12

    if-le v4, v12, :cond_c

    .line 192
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 195
    .end local v9    # "temp":I
    :cond_b
    invoke-static {v6, v5}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v12

    if-le v4, v12, :cond_c

    .line 196
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 199
    :cond_c
    add-int/2addr v8, v4

    goto :goto_3
.end method

.method public static numConvert(II)Ljava/lang/String;
    .locals 13
    .param p0, "num"    # I
    .param p1, "type"    # I

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xb

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0xa

    .line 399
    const/16 v6, 0xf

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->ZERO:Ljava/lang/String;

    aput-object v7, v1, v6

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->ONE:Ljava/lang/String;

    aput-object v6, v1, v9

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->TWO:Ljava/lang/String;

    aput-object v6, v1, v10

    const/4 v6, 0x3

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->THREE:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x4

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->FOUR:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x5

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->FIVE:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x6

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->SIX:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x7

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->SEVEN:Ljava/lang/String;

    aput-object v7, v1, v6

    const/16 v6, 0x8

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->EIGHT:Ljava/lang/String;

    aput-object v7, v1, v6

    const/16 v6, 0x9

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->NINE:Ljava/lang/String;

    aput-object v7, v1, v6

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->TEN:Ljava/lang/String;

    aput-object v6, v1, v8

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_TWENTHIETH_DAY:Ljava/lang/String;

    aput-object v6, v1, v11

    const/16 v6, 0xc

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_FIRST_MONTH:Ljava/lang/String;

    aput-object v7, v1, v6

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_ELEVENTH_MONTH:Ljava/lang/String;

    aput-object v6, v1, v12

    const/16 v6, 0xe

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_TWELVETH_MONTH:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 406
    .local v1, "big":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_1

    .line 408
    const/16 v6, 0x802

    if-ge p0, v6, :cond_0

    const/16 v6, 0x76c

    if-le p0, v6, :cond_0

    .line 409
    div-int/lit16 v3, p0, 0x3e8

    .line 410
    .local v3, "qian":I
    rem-int/lit16 v6, p0, 0x3e8

    div-int/lit8 v0, v6, 0x64

    .line 411
    .local v0, "bai":I
    rem-int/lit16 v6, p0, 0x3e8

    rem-int/lit8 v6, v6, 0x64

    div-int/lit8 v5, v6, 0xa

    .line 412
    .local v5, "shi":I
    rem-int/lit16 v6, p0, 0x3e8

    rem-int/lit8 v6, v6, 0x64

    rem-int/lit8 v2, v6, 0xa

    .line 413
    .local v2, "ge":I
    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    aget-object v6, v1, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    aget-object v6, v1, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 446
    .end local v0    # "bai":I
    .end local v2    # "ge":I
    .end local v3    # "qian":I
    .end local v5    # "shi":I
    :goto_0
    return-object v6

    .line 419
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 420
    :cond_1
    if-ne p1, v9, :cond_7

    .line 421
    if-lez p0, :cond_2

    if-le p0, v12, :cond_3

    .line 422
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 423
    :cond_3
    if-ne p0, v9, :cond_4

    .line 424
    const/16 v6, 0xc

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 425
    :cond_4
    if-gt p0, v8, :cond_5

    .line 426
    aget-object v6, v1, p0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 428
    :cond_5
    if-ne p0, v11, :cond_6

    aget-object v6, v1, v12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v6, 0xe

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 429
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 430
    :cond_7
    if-ne p1, v10, :cond_d

    .line 431
    if-lez p0, :cond_8

    const/16 v6, 0x1f

    if-le p0, v6, :cond_9

    .line 432
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 433
    :cond_9
    if-gt p0, v8, :cond_a

    .line 434
    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_FIRST_DAY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 436
    :cond_a
    div-int/lit8 v5, p0, 0xa

    .line 437
    .restart local v5    # "shi":I
    rem-int/lit8 v2, p0, 0xa

    .line 438
    .restart local v2    # "ge":I
    if-nez v2, :cond_b

    .line 439
    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 440
    :cond_b
    if-ne v5, v9, :cond_c

    .line 441
    aget-object v6, v1, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 442
    :cond_c
    if-ne v5, v10, :cond_d

    .line 443
    aget-object v6, v1, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 446
    .end local v2    # "ge":I
    .end local v5    # "shi":I
    :cond_d
    const-string v6, "**"

    goto/16 :goto_0
.end method

.method public static solarDayTolunarDay(IIZ)[Ljava/lang/String;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "isLeapMonth"    # Z

    .prologue
    const/16 v3, 0x1e

    .line 309
    new-array v1, v3, [Ljava/lang/String;

    .line 311
    .local v1, "lunarDay":[Ljava/lang/String;
    if-nez p2, :cond_1

    .line 312
    :try_start_0
    invoke-static {p0, p1}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 313
    const/16 v2, 0x1d

    new-array v1, v2, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 322
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 316
    const/16 v2, 0x1d

    new-array v1, v2, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 324
    .restart local v0    # "i":I
    :cond_2
    return-object v1

    .line 319
    .end local v0    # "i":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static solarMonthTolunarMonth(I)[Ljava/lang/String;
    .locals 6
    .param p0, "year"    # I

    .prologue
    const/4 v5, 0x1

    .line 288
    const/16 v3, 0xc

    new-array v2, v3, [Ljava/lang/String;

    .line 289
    .local v2, "lunarMonth":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 290
    .local v1, "leapMonth":I
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const/16 v3, 0xd

    new-array v2, v3, [Ljava/lang/String;

    .line 293
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 294
    if-lez v1, :cond_3

    .line 295
    if-ne v1, v0, :cond_1

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 293
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    if-le v0, v1, :cond_2

    .line 298
    invoke-static {v0, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 300
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 302
    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 304
    :cond_4
    return-object v2
.end method

.method public static solarSumDays(III)I
    .locals 5
    .param p0, "mm"    # I
    .param p1, "dd"    # I
    .param p2, "yyyy"    # I

    .prologue
    const/4 v3, 0x1

    .line 476
    invoke-static {p2}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    .line 477
    .local v0, "isSolarLeapYear":Z
    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->months:[I

    if-ne v0, v3, :cond_0

    const/16 v1, 0x1d

    :goto_0
    aput v1, v2, v3

    .line 478
    if-ne p0, v3, :cond_1

    .line 479
    sget v1, Lcn/nubia/commonui/widget/LunarUtil;->sum:I

    add-int/2addr v1, p1

    .line 482
    :goto_1
    return v1

    .line 477
    :cond_0
    const/16 v1, 0x1c

    goto :goto_0

    .line 481
    :cond_1
    sget v1, Lcn/nubia/commonui/widget/LunarUtil;->sum:I

    add-int/lit8 v2, p0, -0x1

    sget-object v3, Lcn/nubia/commonui/widget/LunarUtil;->months:[I

    add-int/lit8 v4, p0, -0x2

    aget v3, v3, v4

    invoke-static {v2, v3, p2}, Lcn/nubia/commonui/widget/LunarUtil;->solarSumDays(III)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lcn/nubia/commonui/widget/LunarUtil;->sum:I

    .line 482
    sget v1, Lcn/nubia/commonui/widget/LunarUtil;->sum:I

    add-int/2addr v1, p1

    goto :goto_1
.end method

.method public static solarToLunar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "solarDate"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 269
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 270
    .local v2, "solarYear":I
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 271
    .local v1, "solarMonth":I
    const/16 v3, 0x8

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "solarDay":I
    invoke-static {v2, v1, v0}, Lcn/nubia/commonui/widget/SolarToLunar;->calendarSolarToLundar(III)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static solarYearTolunarYear()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_INFO:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 281
    .local v1, "lunarYear":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->LUNAR_INFO:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 282
    add-int/lit16 v2, v0, 0x7b2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v1
.end method

.method public static timePickerLunMonthDay(I)[Ljava/lang/String;
    .locals 17
    .param p0, "lunYear"    # I

    .prologue
    .line 559
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 561
    .local v2, "leapMonth":I
    if-lez v2, :cond_1

    const/16 v9, 0xd

    .line 562
    .local v9, "maxMonth":I
    :goto_0
    const/16 v8, 0x1e

    .line 563
    .local v8, "maxDay":I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .local v10, "month":I
    :goto_1
    if-gt v10, v9, :cond_f

    .line 566
    if-gt v10, v2, :cond_2

    .line 567
    :try_start_0
    move/from16 v0, p0

    invoke-static {v0, v10}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v8

    .line 575
    :goto_2
    const-string v11, ""

    .line 576
    .local v11, "month_str":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 577
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    const-string v14, "0"

    :goto_3
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 584
    :cond_0
    :goto_4
    const/4 v1, 0x1

    .local v1, "day":I
    :goto_5
    if-gt v1, v8, :cond_e

    .line 585
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v14, 0xa

    if-ge v1, v14, :cond_c

    const-string v14, "0"

    :goto_6
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "lunarDate":Ljava/lang/String;
    const-string v13, ""

    .line 588
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_d

    .line 589
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 591
    .local v7, "lunarYear":I
    const/4 v14, 0x4

    const/4 v15, 0x6

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 593
    .local v6, "lunarMonth":I
    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 595
    .local v5, "lunarDay":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x1

    invoke-static {v6, v15}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    .line 596
    invoke-static {v5, v15}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 607
    :goto_7
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 561
    .end local v1    # "day":I
    .end local v4    # "lunarDate":Ljava/lang/String;
    .end local v5    # "lunarDay":I
    .end local v6    # "lunarMonth":I
    .end local v7    # "lunarYear":I
    .end local v8    # "maxDay":I
    .end local v9    # "maxMonth":I
    .end local v10    # "month":I
    .end local v11    # "month_str":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "str":Ljava/lang/String;
    :cond_1
    const/16 v9, 0xc

    goto/16 :goto_0

    .line 568
    .restart local v8    # "maxDay":I
    .restart local v9    # "maxMonth":I
    .restart local v10    # "month":I
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-lez v2, :cond_3

    add-int/lit8 v14, v2, 0x1

    if-ne v10, v14, :cond_3

    .line 569
    invoke-static/range {p0 .. p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v8

    goto/16 :goto_2

    .line 570
    :cond_3
    if-lez v2, :cond_4

    add-int/lit8 v14, v2, 0x1

    if-le v10, v14, :cond_4

    .line 571
    add-int/lit8 v14, v10, -0x1

    move/from16 v0, p0

    invoke-static {v0, v14}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v8

    goto/16 :goto_2

    .line 573
    :cond_4
    move/from16 v0, p0

    invoke-static {v0, v10}, Lcn/nubia/commonui/widget/LunarUtil;->getMonthDays(II)I

    move-result v8

    goto/16 :goto_2

    .line 577
    .restart local v11    # "month_str":Ljava/lang/String;
    :cond_5
    const-string v14, ""

    goto/16 :goto_3

    .line 578
    :cond_6
    if-gt v10, v2, :cond_8

    .line 579
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0xa

    if-ge v10, v14, :cond_7

    const-string v14, "0"

    :goto_8
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_7
    const-string v14, ""

    goto :goto_8

    .line 580
    :cond_8
    if-lez v2, :cond_a

    add-int/lit8 v14, v2, 0x1

    if-ne v10, v14, :cond_a

    .line 581
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v14, v10, -0x1

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    const-string v14, "0"

    :goto_9
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_9
    const-string v14, ""

    goto :goto_9

    .line 582
    :cond_a
    if-lez v2, :cond_0

    add-int/lit8 v14, v2, 0x1

    if-le v10, v14, :cond_0

    .line 583
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v10, -0x1

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    const-string v14, "0"

    :goto_a
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_b
    const-string v14, ""

    goto :goto_a

    .line 585
    .restart local v1    # "day":I
    :cond_c
    const-string v14, ""

    goto/16 :goto_6

    .line 598
    .restart local v4    # "lunarDate":Ljava/lang/String;
    .restart local v13    # "str":Ljava/lang/String;
    :cond_d
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 600
    .restart local v7    # "lunarYear":I
    const/4 v14, 0x5

    const/4 v15, 0x7

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 602
    .restart local v6    # "lunarMonth":I
    const/4 v14, 0x7

    const/16 v15, 0x9

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 604
    .restart local v5    # "lunarDay":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v6, v15}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    .line 605
    invoke-static {v5, v15}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto/16 :goto_7

    .line 609
    .end local v1    # "day":I
    .end local v4    # "lunarDate":Ljava/lang/String;
    .end local v5    # "lunarDay":I
    .end local v6    # "lunarMonth":I
    .end local v7    # "lunarYear":I
    .end local v11    # "month_str":Ljava/lang/String;
    .end local v13    # "str":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 564
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 612
    :cond_f
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    check-cast v14, [Ljava/lang/String;

    return-object v14
.end method

.method public static timePickerSolMonthDay(I)[Ljava/lang/String;
    .locals 10
    .param p0, "solarYear"    # I

    .prologue
    const/16 v9, 0xa

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    .line 330
    .local v1, "isSolLeapYear":Z
    const/16 v3, 0x1f

    .line 331
    .local v3, "maxDay":I
    const/4 v0, 0x1

    .line 332
    .local v0, "day":I
    const/4 v4, 0x1

    .line 333
    .local v4, "month":I
    const/4 v4, 0x1

    :goto_0
    const/16 v6, 0xc

    if-gt v4, v6, :cond_7

    .line 334
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 335
    if-eqz v1, :cond_0

    const/16 v3, 0x1d

    .line 342
    :goto_1
    const-string v5, ""

    .line 343
    .local v5, "str":Ljava/lang/String;
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v3, :cond_6

    .line 344
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v4, v9, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v0, v9, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 346
    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 335
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x1c

    goto :goto_1

    .line 336
    :cond_1
    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xb

    if-ne v4, v6, :cond_3

    .line 338
    :cond_2
    const/16 v3, 0x1e

    goto :goto_1

    .line 340
    :cond_3
    const/16 v3, 0x1f

    goto :goto_1

    .line 344
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 346
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    .line 333
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 351
    .end local v5    # "str":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static timePickerUSMonthDay(I)[Ljava/lang/String;
    .locals 9
    .param p0, "USYear"    # I

    .prologue
    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    .line 357
    .local v1, "isSolLeapYear":Z
    const/16 v3, 0x1f

    .line 358
    .local v3, "maxDay":I
    const/4 v0, 0x1

    .line 359
    .local v0, "day":I
    const/4 v4, 0x1

    .line 360
    .local v4, "month":I
    const/4 v4, 0x1

    :goto_0
    const/16 v6, 0xc

    if-gt v4, v6, :cond_6

    .line 361
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 362
    if-eqz v1, :cond_0

    const/16 v3, 0x1d

    .line 369
    :goto_1
    const-string v5, ""

    .line 370
    .local v5, "str":Ljava/lang/String;
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v3, :cond_5

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    add-int/lit8 v8, v4, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0xa

    if-ge v0, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 362
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x1c

    goto :goto_1

    .line 363
    :cond_1
    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xb

    if-ne v4, v6, :cond_3

    .line 365
    :cond_2
    const/16 v3, 0x1e

    goto :goto_1

    .line 367
    :cond_3
    const/16 v3, 0x1f

    goto :goto_1

    .line 372
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 360
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v5    # "str":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method
