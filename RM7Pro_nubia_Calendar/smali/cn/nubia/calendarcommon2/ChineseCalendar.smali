.class public Lcn/nubia/calendarcommon2/ChineseCalendar;
.super Ljava/lang/Object;
.source "ChineseCalendar.java"


# instance fields
.field private final baseChineseDate:I

.field private final baseChineseMonth:I

.field private final baseChineseYear:I

.field private final baseDate:I

.field private final baseIndex:I

.field private final baseMonth:I

.field private final baseYear:I

.field private bigLeapMonthYears:[I

.field private chineseDate:I

.field private chineseMonth:I

.field private final chineseMonths:[C

.field private chineseYear:I

.field private final daysInGregorianMonth:[C

.field private gregorianDate:I

.field private gregorianMonth:I

.field private gregorianYear:I


# direct methods
.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->daysInGregorianMonth:[C

    .line 48
    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonths:[C

    .line 79
    const/16 v0, 0x76d

    iput v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->baseYear:I

    .line 80
    iput v1, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->baseMonth:I

    .line 81
    iput v1, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->baseDate:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->baseIndex:I

    .line 83
    const/16 v0, 0x11f5

    iput v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->baseChineseYear:I

    .line 84
    iput v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->baseChineseMonth:I

    .line 85
    iput v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->baseChineseDate:I

    .line 132
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->bigLeapMonthYears:[I

    .line 20
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/calendarcommon2/ChineseCalendar;->setGregorian(III)V

    .line 21
    invoke-virtual {p0}, Lcn/nubia/calendarcommon2/ChineseCalendar;->computeChineseFields()I

    .line 22
    return-void

    .line 14
    nop

    :array_0
    .array-data 2
        0x1fs
        0x1cs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
    .end array-data

    .line 48
    :array_1
    .array-data 2
        0x0s
        0x4s
        0xads
        0x8s
        0x5as
        0x1s
        0xd5s
        0x54s
        0xb4s
        0x9s
        0x64s
        0x5s
        0x59s
        0x45s
        0x95s
        0xas
        0xa6s
        0x4s
        0x55s
        0x24s
        0xads
        0x8s
        0x5as
        0x62s
        0xdas
        0x4s
        0xb4s
        0x5s
        0xb4s
        0x55s
        0x52s
        0xds
        0x94s
        0xas
        0x4as
        0x2as
        0x56s
        0x2s
        0x6ds
        0x71s
        0x6ds
        0x1s
        0xdas
        0x2s
        0xd2s
        0x52s
        0xa9s
        0x5s
        0x49s
        0xds
        0x2as
        0x45s
        0x2bs
        0x9s
        0x56s
        0x1s
        0xb5s
        0x20s
        0x6ds
        0x1s
        0x59s
        0x69s
        0xd4s
        0xas
        0xa8s
        0x5s
        0xa9s
        0x56s
        0xa5s
        0x4s
        0x2bs
        0x9s
        0x9es
        0x38s
        0xb6s
        0x8s
        0xecs
        0x74s
        0x6cs
        0x5s
        0xd4s
        0xas
        0xe4s
        0x6as
        0x52s
        0x5s
        0x95s
        0xas
        0x5as
        0x42s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xb4s
        0x22s
        0x6as
        0x5s
        0x52s
        0x75s
        0xc9s
        0xas
        0x52s
        0x5s
        0x35s
        0x55s
        0x4ds
        0xas
        0x5as
        0x2s
        0x5ds
        0x31s
        0xb5s
        0x2s
        0x6as
        0x8as
        0x68s
        0x5s
        0xa9s
        0xas
        0x8as
        0x6as
        0x2as
        0x5s
        0x2ds
        0x9s
        0xaas
        0x48s
        0x5as
        0x1s
        0xb5s
        0x9s
        0xb0s
        0x39s
        0x64s
        0x5s
        0x25s
        0x75s
        0x95s
        0xas
        0x96s
        0x4s
        0x4ds
        0x54s
        0xads
        0x4s
        0xdas
        0x4s
        0xd4s
        0x44s
        0xb4s
        0x5s
        0x54s
        0x85s
        0x52s
        0xds
        0x92s
        0xas
        0x56s
        0x6as
        0x56s
        0x2s
        0x6ds
        0x2s
        0x6as
        0x41s
        0xdas
        0x2s
        0xb2s
        0xa1s
        0xa9s
        0x5s
        0x49s
        0xds
        0xas
        0x6ds
        0x2as
        0x9s
        0x56s
        0x1s
        0xads
        0x50s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xd1s
        0x3as
        0xa8s
        0x5s
        0x29s
        0x85s
        0xa5s
        0xcs
        0x2as
        0x9s
        0x96s
        0x54s
        0xb6s
        0x8s
        0x6cs
        0x9s
        0x64s
        0x45s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x51s
        0x25s
        0x95s
        0xas
        0x2as
        0x72s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xacs
        0x52s
        0x6as
        0x5s
        0xd2s
        0xas
        0xa2s
        0x4as
        0x4as
        0x5s
        0x55s
        0x94s
        0x2ds
        0xas
        0x5as
        0x2s
        0x75s
        0x61s
        0xb5s
        0x2s
        0x6as
        0x3s
        0x61s
        0x45s
        0xa9s
        0xas
        0x4as
        0x5s
        0x25s
        0x25s
        0x2ds
        0x9s
        0x9as
        0x68s
        0xdas
        0x8s
        0xb4s
        0x9s
        0xa8s
        0x59s
        0x54s
        0x3s
        0xa5s
        0xas
        0x91s
        0x3as
        0x96s
        0x4s
        0xads
        0xb0s
        0xads
        0x4s
        0xdas
        0x4s
        0xf4s
        0x62s
        0xb4s
        0x5s
        0x54s
        0xbs
        0x44s
        0x5ds
        0x52s
        0xas
        0x95s
        0x4s
        0x55s
        0x22s
        0x6ds
        0x2s
        0x5as
        0x71s
        0xdas
        0x2s
        0xaas
        0x5s
        0xb2s
        0x55s
        0x49s
        0xbs
        0x4as
        0xas
        0x2ds
        0x39s
        0x36s
        0x1s
        0x6ds
        0x80s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xe9s
        0x6as
        0xa8s
        0x5s
        0x29s
        0xbs
        0x9as
        0x4cs
        0xaas
        0x8s
        0xb6s
        0x8s
        0xb4s
        0x38s
        0x6cs
        0x9s
        0x54s
        0x75s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x45s
        0x55s
        0x95s
        0xas
        0x9as
        0x4s
        0x55s
        0x44s
        0xb5s
        0x4s
        0x6as
        0x82s
        0x6as
        0x5s
        0xd2s
        0xas
        0x92s
        0x6as
        0x4as
        0x5s
        0x55s
        0xas
        0x2as
        0x4as
        0x5as
        0x2s
        0xb5s
        0x2s
        0xb2s
        0x31s
        0x69s
        0x3s
        0x31s
        0x73s
        0xa9s
        0xas
        0x4as
        0x5s
        0x2ds
        0x55s
        0x2ds
        0x9s
        0x5as
        0x1s
        0xd5s
        0x48s
        0xb4s
        0x9s
        0x68s
        0x89s
        0x54s
        0xbs
        0xa4s
        0xas
        0xa5s
        0x6as
        0x95s
        0x4s
        0xads
        0x8s
        0x6as
        0x44s
        0xdas
        0x4s
        0x74s
        0x5s
        0xb0s
        0x25s
        0x54s
        0x3s
    .end array-data

    .line 132
    :array_2
    .array-data 4
        0x6
        0xe
        0x13
        0x19
        0x21
        0x24
        0x26
        0x29
        0x2c
        0x34
        0x37
        0x4f
        0x75
        0x88
        0x93
        0x96
        0x9b
        0x9e
        0xb9
        0xc1
    .end array-data
.end method


# virtual methods
.method public computeChineseFields()I
    .locals 11

    .prologue
    const/16 v10, 0xb

    .line 89
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianYear:I

    const/16 v9, 0x76d

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianYear:I

    const/16 v9, 0x834

    if-le v8, v9, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 129
    :goto_0
    return v8

    .line 90
    :cond_1
    const/16 v6, 0x76d

    .line 91
    .local v6, "startYear":I
    const/4 v5, 0x1

    .line 92
    .local v5, "startMonth":I
    const/4 v4, 0x1

    .line 93
    .local v4, "startDate":I
    const/16 v8, 0x11f5

    iput v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    .line 94
    iput v10, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    .line 95
    iput v10, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    .line 97
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianYear:I

    const/16 v9, 0x7d0

    if-lt v8, v9, :cond_2

    .line 98
    const/16 v6, 0x7d0

    .line 99
    const/4 v5, 0x1

    .line 100
    const/4 v4, 0x1

    .line 101
    const/16 v8, 0x1258

    iput v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    .line 102
    iput v10, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    .line 103
    const/16 v8, 0x19

    iput v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    .line 105
    :cond_2
    const/4 v0, 0x0

    .line 106
    .local v0, "daysDiff":I
    move v1, v6

    .local v1, "i":I
    :goto_1
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianYear:I

    if-ge v1, v8, :cond_4

    .line 107
    add-int/lit16 v0, v0, 0x16d

    .line 108
    invoke-virtual {p0, v1}, Lcn/nubia/calendarcommon2/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 106
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_4
    move v1, v5

    :goto_2
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianMonth:I

    if-ge v1, v8, :cond_5

    .line 111
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianYear:I

    invoke-virtual {p0, v8, v1}, Lcn/nubia/calendarcommon2/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v8

    add-int/2addr v0, v8

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    :cond_5
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianDate:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v0, v8

    .line 115
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    add-int/2addr v8, v0

    iput v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    .line 116
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    iget v9, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-virtual {p0, v8, v9}, Lcn/nubia/calendarcommon2/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    .line 117
    .local v2, "lastDate":I
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    iget v9, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-virtual {p0, v8, v9}, Lcn/nubia/calendarcommon2/ChineseCalendar;->nextChineseMonth(II)I

    move-result v3

    .line 118
    .local v3, "nextMonth":I
    :goto_3
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    if-le v8, v2, :cond_7

    .line 119
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v8, v9, :cond_6

    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    .line 120
    :cond_6
    iput v3, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    .line 121
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    sub-int/2addr v8, v2

    iput v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    .line 122
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    iget v9, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-virtual {p0, v8, v9}, Lcn/nubia/calendarcommon2/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    .line 123
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    iget v9, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-virtual {p0, v8, v9}, Lcn/nubia/calendarcommon2/ChineseCalendar;->nextChineseMonth(II)I

    move-result v3

    goto :goto_3

    .line 127
    :cond_7
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 128
    .local v7, "time":Landroid/text/format/Time;
    iget v8, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianDate:I

    iget v9, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianYear:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/format/Time;->set(III)V

    .line 129
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public daysInChineseMonth(II)I
    .locals 8
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    const/4 v7, 0x1

    .line 140
    add-int/lit16 v5, p1, -0x11f5

    add-int/lit8 v2, v5, 0x0

    .line 141
    .local v2, "index":I
    const/4 v4, 0x0

    .line 142
    .local v4, "v":I
    const/4 v3, 0x0

    .line 143
    .local v3, "l":I
    const/16 v0, 0x1e

    .line 144
    .local v0, "d":I
    if-gt v7, p2, :cond_1

    const/16 v5, 0x8

    if-gt p2, v5, :cond_1

    .line 145
    iget-object v5, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v4, v5, v6

    .line 146
    add-int/lit8 v3, p2, -0x1

    .line 147
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    const/16 v0, 0x1d

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    const/16 v5, 0x9

    if-gt v5, p2, :cond_2

    const/16 v5, 0xc

    if-gt p2, v5, :cond_2

    .line 149
    iget-object v5, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 150
    add-int/lit8 v3, p2, -0x9

    .line 151
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    .line 153
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 154
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 155
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 156
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_3
    const/16 v0, 0x1d

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->bigLeapMonthYears:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 160
    iget-object v5, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->bigLeapMonthYears:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_4

    .line 161
    const/16 v0, 0x1e

    .line 162
    goto :goto_0

    .line 159
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public daysInGregorianMonth(II)I
    .locals 3
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->daysInGregorianMonth:[C

    add-int/lit8 v2, p2, -0x1

    aget-char v0, v1, v2

    .line 44
    .local v0, "d":I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/calendarcommon2/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public formateChineseDate()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 212
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    if-gez v2, :cond_0

    .line 213
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    .line 216
    :cond_0
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "m":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "d":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    if-ge v2, v4, :cond_1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_1
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    if-ge v2, v4, :cond_2

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public formateGregorianDate()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 198
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "m":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianDate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "d":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianMonth:I

    if-ge v2, v4, :cond_0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_0
    iget v2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianDate:I

    if-ge v2, v4, :cond_1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianDate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getChineseDate()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    return v0
.end method

.method public getChineseMonth()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    return v0
.end method

.method public isGregorianLeapYear(I)Z
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "isLeap":Z
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 37
    :cond_0
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 38
    :cond_1
    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 39
    :cond_2
    return v0
.end method

.method public nextChineseMonth(II)I
    .locals 5
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    .line 171
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 172
    .local v1, "n":I
    if-lez p2, :cond_0

    .line 173
    add-int/lit16 v3, p1, -0x11f5

    add-int/lit8 v0, v3, 0x0

    .line 174
    .local v0, "index":I
    iget-object v3, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v2, v3, v4

    .line 175
    .local v2, "v":I
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 176
    if-ne v2, p2, :cond_0

    neg-int v1, p2

    .line 178
    .end local v0    # "index":I
    .end local v2    # "v":I
    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    .line 179
    :cond_1
    return v1
.end method

.method public setGregorian(III)V
    .locals 1
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    iput p1, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianYear:I

    .line 27
    iput p2, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianMonth:I

    .line 28
    iput p3, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->gregorianDate:I

    .line 29
    iput v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseYear:I

    .line 30
    iput v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseMonth:I

    .line 31
    iput v0, p0, Lcn/nubia/calendarcommon2/ChineseCalendar;->chineseDate:I

    .line 32
    return-void
.end method
