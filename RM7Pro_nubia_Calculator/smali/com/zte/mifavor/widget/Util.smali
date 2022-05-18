.class public Lcom/zte/mifavor/widget/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "-QW-Util"

.field private static final lunarDays:[Ljava/lang/String;

.field private static final lunarMonths:[Ljava/lang/String;

.field private static final lunarMonthsNoYear:[Ljava/lang/String;

.field private static final lunarNumbers:[Ljava/lang/String;

.field private static final twelveMonthWithLeapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-string v0, "\u96f6"

    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    .line 19
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/Util;->lunarNumbers:[Ljava/lang/String;

    const-string v1, "\u6b63\u6708"

    const-string v2, "\u4e8c\u6708"

    const-string v3, "\u4e09\u6708"

    const-string v4, "\u56db\u6708"

    const-string v5, "\u4e94\u6708"

    const-string v6, "\u516d\u6708"

    const-string v7, "\u4e03\u6708"

    const-string v8, "\u516b\u6708"

    const-string v9, "\u4e5d\u6708"

    const-string v10, "\u5341\u6708"

    const-string v11, "\u51ac\u6708"

    const-string v12, "\u814a\u6708"

    .line 21
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    const-string v1, "\u6b63\u6708"

    const-string v2, "\u95f0\u6b63\u6708"

    const-string v3, "\u4e8c\u6708"

    const-string v4, "\u95f0\u4e8c\u6708"

    const-string v5, "\u4e09\u6708"

    const-string v6, "\u95f0\u4e09\u6708"

    const-string v7, "\u56db\u6708"

    const-string v8, "\u95f0\u56db\u6708"

    const-string v9, "\u4e94\u6708"

    const-string v10, "\u95f0\u4e94\u6708"

    const-string v11, "\u516d\u6708"

    const-string v12, "\u95f0\u516d\u6708"

    const-string v13, "\u4e03\u6708"

    const-string v14, "\u95f0\u4e03\u6708"

    const-string v15, "\u516b\u6708"

    const-string v16, "\u95f0\u516b\u6708"

    const-string v17, "\u4e5d\u6708"

    const-string v18, "\u95f0\u4e5d\u6708"

    const-string v19, "\u5341\u6708"

    const-string v20, "\u95f0\u5341\u6708"

    const-string v21, "\u51ac\u6708"

    const-string v22, "\u95f0\u51ac\u6708"

    const-string v23, "\u814a\u6708"

    const-string v24, "\u95f0\u814a\u6708"

    .line 23
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/Util;->lunarMonthsNoYear:[Ljava/lang/String;

    const-string v1, "\u521d\u4e00"

    const-string v2, "\u521d\u4e8c"

    const-string v3, "\u521d\u4e09"

    const-string v4, "\u521d\u56db"

    const-string v5, "\u521d\u4e94"

    const-string v6, "\u521d\u516d"

    const-string v7, "\u521d\u4e03"

    const-string v8, "\u521d\u516b"

    const-string v9, "\u521d\u4e5d"

    const-string v10, "\u521d\u5341"

    const-string v11, "\u5341\u4e00"

    const-string v12, "\u5341\u4e8c"

    const-string v13, "\u5341\u4e09"

    const-string v14, "\u5341\u56db"

    const-string v15, "\u5341\u4e94"

    const-string v16, "\u5341\u516d"

    const-string v17, "\u5341\u4e03"

    const-string v18, "\u5341\u516b"

    const-string v19, "\u5341\u4e5d"

    const-string v20, "\u5eff\u5341"

    const-string v21, "\u5eff\u4e00"

    const-string v22, "\u5eff\u4e8c"

    const-string v23, "\u5eff\u4e09"

    const-string v24, "\u5eff\u56db"

    const-string v25, "\u5eff\u4e94"

    const-string v26, "\u5eff\u516d"

    const-string v27, "\u5eff\u4e03"

    const-string v28, "\u5eff\u516b"

    const-string v29, "\u5eff\u4e5d"

    const-string v30, "\u4e09\u5341"

    .line 26
    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/Util;->lunarDays:[Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/Util;->twelveMonthWithLeapCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMonthLunarToMonthSway(II)I
    .locals 0

    if-gtz p1, :cond_3

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    neg-int p0, p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    neg-int p1, p1

    add-int/lit8 p1, p1, 0x1

    if-ge p0, p1, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    return p0

    .line 138
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "convertChineseMonthToMonthSway monthLeap should be in range of [-12, 0]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertMonthSwayToMonthLunar(II)I
    .locals 1

    if-gtz p1, :cond_3

    if-nez p1, :cond_0

    return p0

    :cond_0
    neg-int v0, p1

    add-int/lit8 v0, v0, 0x1

    if-ne p0, v0, :cond_1

    return p1

    :cond_1
    if-ge p0, v0, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x1

    return p0

    .line 157
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "convertChineseMonthToMonthSway monthLeap should be in range of [-12, 0]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertMonthSwayToMonthLunarByYear(II)I
    .locals 0

    .line 174
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result p1

    .line 175
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result p0

    return p0
.end method

.method public static getAttr(Landroid/content/Context;II)I
    .locals 2

    .line 179
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 181
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static getDispalyMotionEffect(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x1

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "display_motion_effect"

    .line 190
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v1, "-QW-Util"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Dispaly Motion Effect, isDisplay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 192
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "-QW-Util"

    const-string v2, "get Dispaly Motion Effect error, e = "

    .line 194
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getLunarMonthsNamesWithLeap(I)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 111
    sget-object p0, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v0, -0xc

    if-lt p0, v0, :cond_2

    if-gtz p0, :cond_2

    .line 118
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 120
    sget-object v0, Lcom/zte/mifavor/widget/Util;->twelveMonthWithLeapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0xd

    if-eqz v0, :cond_1

    .line 121
    array-length v2, v0

    if-ne v2, v1, :cond_1

    return-object v0

    .line 125
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    .line 127
    sget-object v1, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u95f0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfMonth(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 129
    sget-object v1, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    add-int/lit8 v2, p0, 0x1

    sget-object v3, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, p0

    invoke-static {v1, p0, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    sget-object v1, Lcom/zte/mifavor/widget/Util;->twelveMonthWithLeapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "month should be in range of [-12, 0]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLunarNameOfDay(I)Ljava/lang/String;
    .locals 3

    if-lez p0, :cond_0

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    .line 102
    sget-object v0, Lcom/zte/mifavor/widget/Util;->lunarDays:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "day should be in range of [1, 30] day is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLunarNameOfMonth(I)Ljava/lang/String;
    .locals 3

    if-lez p0, :cond_0

    const/16 v0, 0xd

    if-ge p0, v0, :cond_0

    .line 86
    sget-object v0, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "month should be in range of [1, 12] month is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLunarNameOfMonthNoYear(I)Ljava/lang/String;
    .locals 3

    if-lez p0, :cond_0

    const/16 v0, 0x19

    if-ge p0, v0, :cond_0

    .line 94
    sget-object v0, Lcom/zte/mifavor/widget/Util;->lunarMonthsNoYear:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "month should be in range of [1, 24] month is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLunarNameOfYear(I)Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-lez p0, :cond_0

    .line 76
    rem-int/lit8 v1, p0, 0xa

    const/4 v2, 0x0

    .line 77
    sget-object v3, Lcom/zte/mifavor/widget/Util;->lunarNumbers:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    const-string p0, "\u5e74"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMonthLeapByYear(I)I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getMonthLeapByYear(I)I

    move-result p0

    return p0
.end method

.method public static getSumOfDayInMonth(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForGregorianByMonth(II)I

    move-result p0

    return p0

    .line 46
    :cond_0
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthSway(II)I

    move-result p0

    return p0
.end method

.method public static getSumOfDayInMonthForGregorianByMonth(II)I
    .locals 2

    .line 51
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getSumOfDayInMonthForLunarByMonthLunar(II)I
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result p0

    return p0
.end method

.method public static getSumOfDayInMonthForLunarByMonthSway(II)I
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getMonthLeapByYear(I)I

    move-result v0

    .line 56
    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result p1

    .line 57
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result p0

    return p0
.end method

.method public static getSumOfDayInMonthForLunarLeapYear(III)I
    .locals 0

    .line 65
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result p1

    .line 66
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result p0

    return p0
.end method
