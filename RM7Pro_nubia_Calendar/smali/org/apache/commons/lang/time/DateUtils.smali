.class public Lorg/apache/commons/lang/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/DateUtils$DateIterator;
    }
.end annotation


# static fields
.field public static final MILLIS_IN_DAY:I = 0x5265c00

.field public static final MILLIS_IN_HOUR:I = 0x36ee80

.field public static final MILLIS_IN_MINUTE:I = 0xea60

.field public static final MILLIS_IN_SECOND:I = 0x3e8

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MODIFY_CEILING:I = 0x2

.field private static final MODIFY_ROUND:I = 0x1

.field private static final MODIFY_TRUNCATE:I = 0x0

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field public static final UTC_TIME_ZONE:Ljava/util/TimeZone;

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 89
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/16 v2, 0xe

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const/16 v2, 0xd

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const/16 v2, 0xc

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v3, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method public static add(Ljava/util/Date;II)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .prologue
    .line 523
    if-nez p0, :cond_0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 527
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 528
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 529
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 451
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 465
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 507
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 479
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 423
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 493
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 437
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 928
    if-nez p0, :cond_0

    .line 929
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 932
    .local v0, "ceiled":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 933
    return-object v0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 958
    if-nez p0, :cond_0

    .line 959
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 962
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 964
    :goto_0
    return-object v0

    .line 963
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 964
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 966
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find ceiling of for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 901
    if-nez p0, :cond_0

    .line 902
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 904
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 905
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 906
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 907
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static getFragment(Ljava/util/Calendar;II)J
    .locals 8
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 1709
    if-nez p0, :cond_0

    .line 1710
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The date must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1712
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang/time/DateUtils;->getMillisPerUnit(I)J

    move-result-wide v0

    .line 1713
    .local v0, "millisPerUnit":J
    const-wide/16 v2, 0x0

    .line 1716
    .local v2, "result":J
    packed-switch p1, :pswitch_data_0

    .line 1725
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 1747
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1718
    :pswitch_1
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1719
    goto :goto_0

    .line 1721
    :pswitch_2
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_0

    .line 1733
    :pswitch_3
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1736
    :pswitch_4
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1739
    :pswitch_5
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1742
    :pswitch_6
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1749
    :pswitch_7
    return-wide v2

    .line 1716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1725
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;II)J
    .locals 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .prologue
    .line 1689
    if-nez p0, :cond_0

    .line 1690
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1692
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1693
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1694
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1674
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1473
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1632
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1433
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1513
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1313
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1592
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1393
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1552
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1353
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillisPerUnit(I)J
    .locals 5
    .param p0, "unit"    # I

    .prologue
    .line 1835
    const-wide v0, 0x7fffffffffffffffL

    .line 1836
    .local v0, "result":J
    packed-switch p0, :pswitch_data_0

    .line 1853
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The unit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " cannot be represented is milleseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1839
    :pswitch_1
    const-wide/32 v0, 0x5265c00

    .line 1855
    :goto_0
    return-wide v0

    .line 1842
    :pswitch_2
    const-wide/32 v0, 0x36ee80

    .line 1843
    goto :goto_0

    .line 1845
    :pswitch_3
    const-wide/32 v0, 0xea60

    .line 1846
    goto :goto_0

    .line 1848
    :pswitch_4
    const-wide/16 v0, 0x3e8

    .line 1849
    goto :goto_0

    .line 1851
    :pswitch_5
    const-wide/16 v0, 0x1

    .line 1852
    goto :goto_0

    .line 1836
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static indexOfSignChars(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .prologue
    .line 370
    const/16 v1, 0x2b

    invoke-static {p0, v1, p1}, Lorg/apache/commons/lang/StringUtils;->indexOf(Ljava/lang/String;CI)I

    move-result v0

    .line 371
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 372
    const/16 v1, 0x2d

    invoke-static {p0, v1, p1}, Lorg/apache/commons/lang/StringUtils;->indexOf(Ljava/lang/String;CI)I

    move-result v0

    .line 374
    :cond_0
    return v0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 173
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The date must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 177
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 179
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 180
    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    .line 236
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 218
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 7
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .locals 3
    .param p0, "focus"    # Ljava/lang/Object;
    .param p1, "rangeStyle"    # I

    .prologue
    .line 1267
    if-nez p0, :cond_0

    .line 1268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 1271
    check-cast p0, Ljava/util/Date;

    .end local p0    # "focus":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    .line 1273
    :goto_0
    return-object v0

    .line 1272
    .restart local p0    # "focus":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 1273
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "focus":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 1275
    .restart local p0    # "focus":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not iterate based on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .locals 9
    .param p0, "focus"    # Ljava/util/Calendar;
    .param p1, "rangeStyle"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x7

    .line 1176
    if-nez p0, :cond_0

    .line 1177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The date must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1179
    :cond_0
    const/4 v2, 0x0

    .line 1180
    .local v2, "start":Ljava/util/Calendar;
    const/4 v0, 0x0

    .line 1181
    .local v0, "end":Ljava/util/Calendar;
    const/4 v3, 0x1

    .line 1182
    .local v3, "startCutoff":I
    const/4 v1, 0x7

    .line 1183
    .local v1, "endCutoff":I
    packed-switch p1, :pswitch_data_0

    .line 1224
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The range style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is not valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1187
    :pswitch_0
    invoke-static {p0, v4}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    .line 1189
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "end":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 1190
    .restart local v0    # "end":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 1191
    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1193
    const/4 v4, 0x6

    if-ne p1, v4, :cond_1

    .line 1194
    const/4 v3, 0x2

    .line 1195
    const/4 v1, 0x1

    .line 1226
    :cond_1
    :goto_0
    :pswitch_1
    if-ge v3, v7, :cond_2

    .line 1227
    add-int/lit8 v3, v3, 0x7

    .line 1229
    :cond_2
    if-le v3, v5, :cond_3

    .line 1230
    add-int/lit8 v3, v3, -0x7

    .line 1232
    :cond_3
    if-ge v1, v7, :cond_4

    .line 1233
    add-int/lit8 v1, v1, 0x7

    .line 1235
    :cond_4
    if-le v1, v5, :cond_5

    .line 1236
    add-int/lit8 v1, v1, -0x7

    .line 1238
    :cond_5
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 1239
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 1203
    :pswitch_2
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    .line 1204
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1205
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1210
    :pswitch_3
    const/4 v3, 0x2

    .line 1211
    const/4 v1, 0x1

    .line 1212
    goto :goto_0

    .line 1214
    :pswitch_4
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1215
    add-int/lit8 v1, v3, -0x1

    .line 1216
    goto :goto_0

    .line 1218
    :pswitch_5
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, -0x3

    .line 1219
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x3

    goto :goto_0

    .line 1241
    :cond_6
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_7

    .line 1242
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1244
    :cond_7
    new-instance v4, Lorg/apache/commons/lang/time/DateUtils$DateIterator;

    invoke-direct {v4, v2, v0}, Lorg/apache/commons/lang/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v4

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1205
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .locals 3
    .param p0, "focus"    # Ljava/util/Date;
    .param p1, "rangeStyle"    # I

    .prologue
    .line 1143
    if-nez p0, :cond_0

    .line 1144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1146
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1147
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1148
    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private static modify(Ljava/util/Calendar;II)V
    .locals 22
    .param p0, "val"    # Ljava/util/Calendar;
    .param p1, "field"    # I
    .param p2, "modType"    # I

    .prologue
    .line 980
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const v19, 0x10b07600

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 981
    new-instance v18, Ljava/lang/ArithmeticException;

    const-string v19, "Calendar value too large for accurate calculations"

    invoke-direct/range {v18 .. v19}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 984
    :cond_0
    const/16 v18, 0xe

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1063
    :cond_1
    :goto_0
    return-void

    .line 994
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 995
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 996
    .local v16, "time":J
    const/4 v5, 0x0

    .line 999
    .local v5, "done":Z
    const/16 v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1000
    .local v9, "millisecs":I
    if-eqz p2, :cond_3

    const/16 v18, 0x1f4

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 1001
    :cond_3
    int-to-long v0, v9

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 1003
    :cond_4
    const/16 v18, 0xd

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1004
    const/4 v5, 0x1

    .line 1008
    :cond_5
    const/16 v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 1009
    .local v15, "seconds":I
    if-nez v5, :cond_7

    if-eqz p2, :cond_6

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 1010
    :cond_6
    int-to-long v0, v15

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    .line 1012
    :cond_7
    const/16 v18, 0xc

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1013
    const/4 v5, 0x1

    .line 1017
    :cond_8
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1018
    .local v11, "minutes":I
    if-nez v5, :cond_a

    if-eqz p2, :cond_9

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 1019
    :cond_9
    int-to-long v0, v11

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    .line 1023
    :cond_a
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v18, v18, v16

    if-eqz v18, :cond_b

    .line 1024
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1025
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1029
    :cond_b
    const/4 v14, 0x0

    .line 1030
    .local v14, "roundUp":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1b

    .line 1031
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_12

    .line 1032
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    aget v18, v18, v7

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 1034
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    if-eqz v14, :cond_1

    .line 1035
    :cond_c
    const/16 v18, 0x3e9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1039
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 1040
    const/16 v18, 0x5

    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1042
    :cond_d
    const/16 v18, 0x5

    const/16 v19, -0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1043
    const/16 v18, 0x2

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1046
    :cond_e
    const/16 v18, 0x9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1050
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    if-nez v18, :cond_f

    .line 1051
    const/16 v18, 0xb

    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1053
    :cond_f
    const/16 v18, 0xb

    const/16 v19, -0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1054
    const/16 v18, 0x5

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1060
    :cond_10
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1031
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1067
    :cond_12
    const/4 v12, 0x0

    .line 1068
    .local v12, "offset":I
    const/4 v13, 0x0

    .line 1070
    .local v13, "offsetSet":Z
    sparse-switch p1, :sswitch_data_0

    .line 1100
    :cond_13
    :goto_3
    if-nez v13, :cond_14

    .line 1101
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v10

    .line 1102
    .local v10, "min":I
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    .line 1104
    .local v8, "max":I
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    sub-int v12, v18, v10

    .line 1106
    sub-int v18, v8, v10

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    if-le v12, v0, :cond_1a

    const/4 v14, 0x1

    .line 1109
    .end local v8    # "max":I
    .end local v10    # "min":I
    :cond_14
    :goto_4
    if-eqz v12, :cond_15

    .line 1110
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    sget-object v19, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v19, v19, v6

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1030
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1072
    :sswitch_0
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1076
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    .line 1079
    const/16 v18, 0xf

    move/from16 v0, v18

    if-lt v12, v0, :cond_16

    .line 1080
    add-int/lit8 v12, v12, -0xf

    .line 1083
    :cond_16
    const/16 v18, 0x7

    move/from16 v0, v18

    if-le v12, v0, :cond_17

    const/4 v14, 0x1

    .line 1084
    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1083
    :cond_17
    const/4 v14, 0x0

    goto :goto_5

    .line 1088
    :sswitch_1
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1091
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1092
    const/16 v18, 0xc

    move/from16 v0, v18

    if-lt v12, v0, :cond_18

    .line 1093
    add-int/lit8 v12, v12, -0xc

    .line 1095
    :cond_18
    const/16 v18, 0x6

    move/from16 v0, v18

    if-lt v12, v0, :cond_19

    const/4 v14, 0x1

    .line 1096
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1095
    :cond_19
    const/4 v14, 0x0

    goto :goto_6

    .line 1106
    .restart local v8    # "max":I
    .restart local v10    # "min":I
    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1113
    .end local v7    # "j":I
    .end local v8    # "max":I
    .end local v10    # "min":I
    .end local v12    # "offset":I
    .end local v13    # "offsetSet":Z
    :cond_1b
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "The field "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " is not supported"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1070
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .param p2, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 325
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 326
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Date and Patterns must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 329
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 330
    .local v2, "parser":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 331
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 332
    .local v4, "pos":Ljava/text/ParsePosition;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_5

    .line 334
    aget-object v3, p1, v1

    .line 337
    .local v3, "pattern":Ljava/lang/String;
    aget-object v7, p1, v1

    const-string v8, "ZZ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 338
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 341
    :cond_2
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v4, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 344
    move-object v6, p0

    .line 346
    .local v6, "str2":Ljava/lang/String;
    aget-object v7, p1, v1

    const-string v8, "ZZ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 347
    invoke-static {v6, v9}, Lorg/apache/commons/lang/time/DateUtils;->indexOfSignChars(Ljava/lang/String;I)I

    move-result v5

    .line 348
    .local v5, "signIdx":I
    :goto_1
    if-ltz v5, :cond_3

    .line 349
    invoke-static {v6, v5}, Lorg/apache/commons/lang/time/DateUtils;->reformatTimezone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 350
    add-int/lit8 v5, v5, 0x1

    invoke-static {v6, v5}, Lorg/apache/commons/lang/time/DateUtils;->indexOfSignChars(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 354
    .end local v5    # "signIdx":I
    :cond_3
    invoke-virtual {v2, v6, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 355
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 356
    return-object v0

    .line 332
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v6    # "str2":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unable to parse the date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method private static reformatTimezone(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "signIdx"    # I

    .prologue
    .line 385
    move-object v0, p0

    .line 386
    .local v0, "str2":Ljava/lang/String;
    if-ltz p1, :cond_0

    add-int/lit8 v1, p1, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    return-object v0
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 746
    if-nez p0, :cond_0

    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 749
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 750
    .local v0, "rounded":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 751
    return-object v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 785
    if-nez p0, :cond_0

    .line 786
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 789
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 791
    :goto_0
    return-object v0

    .line 790
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 791
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 793
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 712
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 713
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 714
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .prologue
    .line 652
    if-nez p0, :cond_0

    .line 653
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 657
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 658
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 659
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 660
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 574
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 590
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 635
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 605
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 559
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 620
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 544
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 673
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 674
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 675
    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 841
    if-nez p0, :cond_0

    .line 842
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 844
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 845
    .local v0, "truncated":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 846
    return-object v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 870
    if-nez p0, :cond_0

    .line 871
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 874
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 876
    :goto_0
    return-object v0

    .line 875
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 876
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 878
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not truncate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 815
    if-nez p0, :cond_0

    .line 816
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 818
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 819
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 820
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 821
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .prologue
    .line 1801
    invoke-static {p0, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1802
    .local v0, "truncatedCal1":Ljava/util/Calendar;
    invoke-static {p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 1803
    .local v1, "truncatedCal2":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .locals 3
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .prologue
    .line 1821
    invoke-static {p0, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 1822
    .local v0, "truncatedDate1":Ljava/util/Date;
    invoke-static {p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    .line 1823
    .local v1, "truncatedDate2":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .locals 1
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .prologue
    .line 1766
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .locals 1
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .prologue
    .line 1783
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
