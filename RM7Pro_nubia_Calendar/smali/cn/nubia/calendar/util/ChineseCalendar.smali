.class public Lcn/nubia/calendar/util/ChineseCalendar;
.super Ljava/lang/Object;
.source "ChineseCalendar.java"


# static fields
.field private static final DAYMILLISDATE:J = 0x5265c00L

.field private static final FATHER_MONTH:I = 0x6

.field private static final LABOR_MONTH:I = 0x9

.field private static final MAXYAER:I = 0x7f6

.field private static final MEMORIAL_MONTH:I = 0x5

.field private static final MOTHER_MONTH:I = 0x5

.field private static final THANKSGIVING_MONTH:I = 0xb

.field static final lunarInfo:[J

.field private static final lunarLeapMonthTable:[C

.field private static mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

.field private static final solarLunarOffsetTable:[C


# instance fields
.field private animal:Ljava/lang/String;

.field private animalNames:[Ljava/lang/String;

.field private final baseChineseDate:I

.field private final baseChineseMonth:I

.field private final baseChineseYear:I

.field private final baseDate:I

.field private final baseIndex:I

.field private final baseMonth:I

.field private final baseYear:I

.field private bigLeapMonthYears:[I

.field private branchNames:[Ljava/lang/String;

.field private cal:Ljava/util/Calendar;

.field private chineseDate:I

.field private chineseDisplay:Ljava/lang/String;

.field private chineseMonth:I

.field private final chineseMonths:[C

.field private chineseYear:I

.field private chu:Ljava/lang/String;

.field private dayName:Ljava/lang/String;

.field private dayNames:[Ljava/lang/String;

.field private final daysInGregorianMonth:[C

.field private final gLunarHolBaseDay1:[C

.field private final gLunarHolBaseDay2:[C

.field private final gLunarHolBaseDay3:[C

.field private final gLunarHolBaseDay4:[C

.field private final gLunarHolBaseDay5:[C

.field private final gLunarHolBaseDay6:[C

.field private final gLunarHolDay:[C

.field private gregorianDate:I

.field private gregorianMonth:I

.field private gregorianYear:I

.field private lunarDayFullName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFatherDay:Ljava/lang/String;

.field private mLeapDay:I

.field private mLeapMonth:I

.field private mLeapYear:I

.field private mMonthDayDisplay:Ljava/lang/String;

.field private mMotherDay:Ljava/lang/String;

.field private mThanksgiving:Ljava/lang/String;

.field private monthName:Ljava/lang/String;

.field private monthNamesMonthView:[Ljava/lang/String;

.field private run:Ljava/lang/String;

.field private solarNames:[Ljava/lang/String;

.field private stemNames:[Ljava/lang/String;

.field private year:Ljava/lang/String;

.field private yearGZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/util/ChineseCalendar;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 1399
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/calendar/util/ChineseCalendar;->lunarInfo:[J

    .line 1426
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/calendar/util/ChineseCalendar;->solarLunarOffsetTable:[C

    .line 1445
    const/16 v0, 0x4b

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/calendar/util/ChineseCalendar;->lunarLeapMonthTable:[C

    return-void

    .line 1399
    nop

    :array_0
    .array-data 8
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

    .line 1426
    :array_1
    .array-data 2
        0x31s
        0x26s
        0x1cs
        0x2es
        0x22s
        0x18s
        0x2bs
        0x20s
        0x15s
        0x28s
        0x1ds
        0x30s
        0x24s
        0x19s
        0x2cs
        0x22s
        0x16s
        0x29s
        0x1fs
        0x32s
        0x26s
        0x1bs
        0x2es
        0x23s
        0x17s
        0x2bs
        0x20s
        0x16s
        0x28s
        0x1ds
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x22s
        0x17s
        0x29s
        0x1es
        0x31s
        0x26s
        0x1as
        0x2ds
        0x23s
        0x18s
        0x2bs
        0x20s
        0x15s
        0x28s
        0x1cs
        0x2fs
        0x24s
        0x1as
        0x2cs
        0x21s
        0x17s
        0x2as
        0x1es
        0x30s
        0x26s
        0x1bs
        0x2ds
        0x23s
        0x18s
        0x2bs
        0x20s
        0x14s
        0x27s
        0x1ds
        0x2fs
        0x24s
        0x1as
        0x2ds
        0x21s
        0x16s
        0x29s
        0x1es
        0x30s
        0x25s
        0x1bs
        0x2es
        0x23s
        0x18s
        0x2bs
        0x20s
        0x32s
        0x27s
        0x1cs
        0x2fs
        0x24s
        0x1as
        0x2ds
        0x22s
        0x16s
        0x28s
        0x1es
        0x31s
        0x25s
        0x1bs
        0x2es
        0x23s
        0x17s
        0x2as
        0x1fs
        0x15s
        0x27s
        0x1cs
        0x30s
        0x25s
        0x19s
        0x2cs
        0x21s
        0x17s
        0x29s
        0x1fs
        0x32s
        0x27s
        0x1cs
        0x2fs
        0x23s
        0x18s
        0x2as
        0x1es
        0x15s
        0x28s
        0x1cs
        0x2fs
        0x24s
        0x19s
        0x2bs
        0x21s
        0x16s
        0x29s
        0x1es
        0x31s
        0x25s
        0x1as
        0x2cs
        0x21s
        0x17s
        0x2as
        0x1fs
        0x15s
        0x28s
        0x1ds
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x20s
        0x16s
    .end array-data

    .line 1445
    :array_2
    .array-data 2
        0x0s
        0x50s
        0x4s
        0x0s
        0x20s
        0x60s
        0x5s
        0x0s
        0x20s
        0x70s
        0x5s
        0x0s
        0x40s
        0x2s
        0x6s
        0x0s
        0x50s
        0x3s
        0x7s
        0x0s
        0x60s
        0x4s
        0x0s
        0x20s
        0x70s
        0x5s
        0x0s
        0x30s
        0x80s
        0x6s
        0x0s
        0x40s
        0x3s
        0x7s
        0x0s
        0x50s
        0x4s
        0x8s
        0x0s
        0x60s
        0x4s
        0xas
        0x0s
        0x60s
        0x5s
        0x0s
        0x30s
        0x80s
        0x5s
        0x0s
        0x40s
        0x2s
        0x7s
        0x0s
        0x50s
        0x4s
        0x9s
        0x0s
        0x60s
        0x4s
        0x0s
        0x20s
        0x60s
        0x5s
        0x0s
        0x30s
        0xb0s
        0x6s
        0x0s
        0x50s
        0x2s
        0x7s
        0x0s
        0x50s
        0x3s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    const/16 v1, 0x18

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->daysInGregorianMonth:[C

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMotherDay:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mFatherDay:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mThanksgiving:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    .line 168
    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonths:[C

    .line 205
    const/16 v0, 0x76d

    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseYear:I

    .line 206
    iput v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseMonth:I

    .line 207
    iput v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseDate:I

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseIndex:I

    .line 209
    const/16 v0, 0x11f5

    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseChineseYear:I

    .line 210
    iput v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseChineseMonth:I

    .line 211
    iput v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseChineseDate:I

    .line 215
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay1:[C

    .line 217
    new-array v0, v1, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay2:[C

    .line 219
    new-array v0, v1, [C

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay3:[C

    .line 221
    new-array v0, v1, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay4:[C

    .line 223
    new-array v0, v1, [C

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay5:[C

    .line 225
    new-array v0, v1, [C

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay6:[C

    .line 228
    const/16 v0, 0x258

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolDay:[C

    .line 869
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->bigLeapMonthYears:[I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->initFieldsNames()V

    .line 94
    return-void

    .line 32
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

    .line 168
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

    .line 215
    :array_2
    .array-data 2
        0x6s
        0x14s
        0x4s
        0x13s
        0x6s
        0x15s
        0x5s
        0x14s
        0x6s
        0x15s
        0x6s
        0x15s
        0x7s
        0x17s
        0x8s
        0x17s
        0x8s
        0x17s
        0x8s
        0x17s
        0x7s
        0x16s
        0x7s
        0x16s
    .end array-data

    .line 217
    :array_3
    .array-data 2
        0x5s
        0x14s
        0x4s
        0x13s
        0x5s
        0x14s
        0x4s
        0x14s
        0x5s
        0x15s
        0x5s
        0x15s
        0x7s
        0x17s
        0x7s
        0x17s
        0x7s
        0x17s
        0x8s
        0x17s
        0x7s
        0x16s
        0x7s
        0x16s
    .end array-data

    .line 219
    :array_4
    .array-data 2
        0x5s
        0x14s
        0x3s
        0x12s
        0x5s
        0x14s
        0x4s
        0x13s
        0x5s
        0x14s
        0x5s
        0x15s
        0x7s
        0x16s
        0x7s
        0x17s
        0x7s
        0x16s
        0x8s
        0x17s
        0x7s
        0x16s
        0x7s
        0x15s
    .end array-data

    .line 221
    :array_5
    .array-data 2
        0x5s
        0x13s
        0x3s
        0x12s
        0x5s
        0x14s
        0x4s
        0x13s
        0x5s
        0x14s
        0x5s
        0x14s
        0x6s
        0x16s
        0x7s
        0x16s
        0x7s
        0x16s
        0x7s
        0x17s
        0x7s
        0x16s
        0x6s
        0x15s
    .end array-data

    .line 223
    :array_6
    .array-data 2
        0x5s
        0x13s
        0x3s
        0x12s
        0x4s
        0x13s
        0x4s
        0x13s
        0x4s
        0x14s
        0x5s
        0x14s
        0x6s
        0x16s
        0x6s
        0x16s
        0x7s
        0x16s
        0x7s
        0x16s
        0x6s
        0x15s
        0x6s
        0x15s
    .end array-data

    .line 225
    :array_7
    .array-data 2
        0x4s
        0x13s
        0x3s
        0x12s
        0x4s
        0x13s
        0x4s
        0x13s
        0x4s
        0x14s
        0x4s
        0x14s
        0x6s
        0x16s
        0x6s
        0x16s
        0x6s
        0x16s
        0x7s
        0x16s
        0x6s
        0x15s
        0x6s
        0x15s
    .end array-data

    .line 228
    :array_8
    .array-data 2
        0x41s
        0x59s
        0x7es
        0x63s
        0x7ds
        0x7fs
        0x7fs
        0xffs
        0xffs
        0xf0s
        0x10s
        0x1cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x7fs
        0xffs
        0xffs
        0xf0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x7fs
        0xffs
        0xffs
        0xf0s
        0x10s
        0x3cs
        0x1s
        0x59s
        0x7es
        0x41s
        0x5ds
        0x7fs
        0x77s
        0x7ds
        0xffs
        0x70s
        0x10s
        0x18s
        0x1s
        0x19s
        0x3cs
        0x41s
        0x5ds
        0x7es
        0x77s
        0x7ds
        0xffs
        0x70s
        0x10s
        0x18s
        0x0s
        0x19s
        0x3cs
        0x41s
        0x5ds
        0x7es
        0x63s
        0x7ds
        0xffs
        0x70s
        0x10s
        0x18s
        0x0s
        0x19s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x7ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x18s
        0x41s
        0x59s
        0x7es
        0x63s
        0x7ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0xfes
        0x22s
        0x80s
        0x8es
        0xb2s
        0x98s
        0x8fs
        0xfbs
        0xbes
        0xcfs
        0xffs
        0xffs
        0xf6s
        0x20s
        0x80s
        0xes
        0xb3s
        0x98s
        0x8es
        0xbbs
        0xbes
        0xcfs
        0xffs
        0xffs
        0xf6s
        0x20s
        0x80s
        0xes
        0xb2s
        0x98s
        0x8es
        0xbbs
        0xacs
        0xcfs
        0xfbs
        0xfes
        0xf2s
        0x20s
        0x80s
        0xes
        0xb2s
        0x98s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x20s
        0x0s
        0xes
        0xa2s
        0x80s
        0xces
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x20s
        0x0s
        0xes
        0xa2s
        0x80s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x0s
        0x0s
        0xes
        0xa2s
        0x80s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x0s
        0x0s
        0x1es
        0x22s
        0x80s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xbes
        0xe0s
        0x1s
        0x0s
        0xes
        0xa0s
        0x80s
        0x8es
        0xb2s
        0x9cs
        0xcfs
        0xbbs
        0xbes
        0xe0s
        0x0s
        0x0s
        0xes
        0x20s
        0x88s
        0x8es
        0xb2s
        0x98s
        0xbfs
        0xffs
        0xffs
        0xf1s
        0x40s
        0x41s
        0x37s
        0x64s
        0xc1s
        0x3fs
        0xf6s
        0xd9s
        0xbfs
        0xf7s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x33s
        0x64s
        0x41s
        0x3fs
        0xe6s
        0xd9s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x64s
        0x41s
        0x3fs
        0xe6s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x44s
        0x41s
        0x3fs
        0xe6s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x44s
        0x41s
        0x3fs
        0xe6s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x44s
        0x41s
        0x3fs
        0x64s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x0s
        0x21s
        0x44s
        0x41s
        0x3fs
        0x64s
        0xc1s
        0xbfs
        0xf6s
        0xdds
        0xf1s
        0x0s
        0x0s
        0x21s
        0x40s
        0x41s
        0x3fs
        0x64s
        0xc1s
        0xbfs
        0xf6s
        0xd9s
        0xb0s
        0x0s
        0x0s
        0x1s
        0x40s
        0x41s
        0x37s
        0x64s
        0xc1s
        0x3fs
        0xe6s
        0xd9s
        0xf0s
        0x10s
        0x22s
        0x41s
        0x59s
        0x62s
        0x73s
        0x7ds
        0x63s
        0x7fs
        0xffs
        0xfbs
        0xf0s
        0x10s
        0x20s
        0x41s
        0x59s
        0x62s
        0x63s
        0x5ds
        0x63s
        0x7fs
        0xffs
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x59s
        0x62s
        0x63s
        0x5ds
        0x63s
        0x7fs
        0xffs
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x5ds
        0x62s
        0x63s
        0x5fs
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x59s
        0x62s
        0x63s
        0x5ds
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x19s
        0x22s
        0x61s
        0x5ds
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xf0s
        0x10s
        0x0s
        0x40s
        0x19s
        0x22s
        0x61s
        0x59s
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xfcs
        0x82s
        0x18s
        0xfs
        0x92s
        0x3es
        0x4ds
        0xdbs
        0xffs
        0x7fs
        0xffs
        0x7fs
        0x7cs
        0x82s
        0x1as
        0xcs
        0x92s
        0x3es
        0x4ds
        0xdbs
        0x7fs
        0x7fs
        0xdfs
        0x7fs
        0x7cs
        0x82s
        0x18s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0xdbs
        0x7es
        0x7fs
        0xdfs
        0x7fs
        0x7cs
        0x82s
        0x0s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0xdbs
        0x7es
        0x6fs
        0xdfs
        0x7fs
        0x7cs
        0x82s
        0x0s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0xdbs
        0x7es
        0x6fs
        0xdfs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0x9bs
        0x3es
        0x6fs
        0xdfs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x92s
        0x1cs
        0x4ds
        0x9bs
        0x3es
        0x6ds
        0xdbs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x92s
        0x1cs
        0x4cs
        0x93s
        0x3es
        0x6ds
        0xdbs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x82s
        0x18s
        0x4cs
        0x92s
        0x3es
        0x4ds
        0xdbs
        0x7fs
        0xf0s
        0x20s
        0x0s
        0xcs
        0xa2s
        0x98s
        0x8cs
        0xb2s
        0xbes
        0xcds
        0xfbs
        0xffs
        0xf0s
        0x0s
        0x0s
        0xcs
        0xa2s
        0x98s
        0x8cs
        0xb2s
        0xbcs
        0xcds
        0xffs
        0xcas
        0xf0s
        0x0s
        0x0s
        0xcs
        0xa2s
        0x80s
        0x8cs
        0xb2s
        0xbcs
        0xcds
        0xfbs
        0xfes
        0xe0s
        0x0s
        0x0s
        0xcs
        0xa0s
        0x80s
        0x8cs
        0xb2s
        0xbcs
        0xcds
        0xfbs
        0xfes
        0xefs
        0xffs
        0xffs
    .end array-data

    .line 869
    :array_9
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

.method public constructor <init>(Landroid/content/Context;Landroid/text/format/Time;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    const/16 v1, 0x18

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->daysInGregorianMonth:[C

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMotherDay:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mFatherDay:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mThanksgiving:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    .line 168
    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonths:[C

    .line 205
    const/16 v0, 0x76d

    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseYear:I

    .line 206
    iput v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseMonth:I

    .line 207
    iput v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseDate:I

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseIndex:I

    .line 209
    const/16 v0, 0x11f5

    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseChineseYear:I

    .line 210
    iput v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseChineseMonth:I

    .line 211
    iput v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->baseChineseDate:I

    .line 215
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay1:[C

    .line 217
    new-array v0, v1, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay2:[C

    .line 219
    new-array v0, v1, [C

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay3:[C

    .line 221
    new-array v0, v1, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay4:[C

    .line 223
    new-array v0, v1, [C

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay5:[C

    .line 225
    new-array v0, v1, [C

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay6:[C

    .line 228
    const/16 v0, 0x258

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolDay:[C

    .line 869
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->bigLeapMonthYears:[I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->initFieldsNames()V

    .line 99
    iget v0, p2, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(III)V

    .line 100
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 101
    return-void

    .line 32
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

    .line 168
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

    .line 215
    :array_2
    .array-data 2
        0x6s
        0x14s
        0x4s
        0x13s
        0x6s
        0x15s
        0x5s
        0x14s
        0x6s
        0x15s
        0x6s
        0x15s
        0x7s
        0x17s
        0x8s
        0x17s
        0x8s
        0x17s
        0x8s
        0x17s
        0x7s
        0x16s
        0x7s
        0x16s
    .end array-data

    .line 217
    :array_3
    .array-data 2
        0x5s
        0x14s
        0x4s
        0x13s
        0x5s
        0x14s
        0x4s
        0x14s
        0x5s
        0x15s
        0x5s
        0x15s
        0x7s
        0x17s
        0x7s
        0x17s
        0x7s
        0x17s
        0x8s
        0x17s
        0x7s
        0x16s
        0x7s
        0x16s
    .end array-data

    .line 219
    :array_4
    .array-data 2
        0x5s
        0x14s
        0x3s
        0x12s
        0x5s
        0x14s
        0x4s
        0x13s
        0x5s
        0x14s
        0x5s
        0x15s
        0x7s
        0x16s
        0x7s
        0x17s
        0x7s
        0x16s
        0x8s
        0x17s
        0x7s
        0x16s
        0x7s
        0x15s
    .end array-data

    .line 221
    :array_5
    .array-data 2
        0x5s
        0x13s
        0x3s
        0x12s
        0x5s
        0x14s
        0x4s
        0x13s
        0x5s
        0x14s
        0x5s
        0x14s
        0x6s
        0x16s
        0x7s
        0x16s
        0x7s
        0x16s
        0x7s
        0x17s
        0x7s
        0x16s
        0x6s
        0x15s
    .end array-data

    .line 223
    :array_6
    .array-data 2
        0x5s
        0x13s
        0x3s
        0x12s
        0x4s
        0x13s
        0x4s
        0x13s
        0x4s
        0x14s
        0x5s
        0x14s
        0x6s
        0x16s
        0x6s
        0x16s
        0x7s
        0x16s
        0x7s
        0x16s
        0x6s
        0x15s
        0x6s
        0x15s
    .end array-data

    .line 225
    :array_7
    .array-data 2
        0x4s
        0x13s
        0x3s
        0x12s
        0x4s
        0x13s
        0x4s
        0x13s
        0x4s
        0x14s
        0x4s
        0x14s
        0x6s
        0x16s
        0x6s
        0x16s
        0x6s
        0x16s
        0x7s
        0x16s
        0x6s
        0x15s
        0x6s
        0x15s
    .end array-data

    .line 228
    :array_8
    .array-data 2
        0x41s
        0x59s
        0x7es
        0x63s
        0x7ds
        0x7fs
        0x7fs
        0xffs
        0xffs
        0xf0s
        0x10s
        0x1cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x7fs
        0xffs
        0xffs
        0xf0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x7fs
        0xffs
        0xffs
        0xf0s
        0x10s
        0x3cs
        0x1s
        0x59s
        0x7es
        0x41s
        0x5ds
        0x7fs
        0x77s
        0x7ds
        0xffs
        0x70s
        0x10s
        0x18s
        0x1s
        0x19s
        0x3cs
        0x41s
        0x5ds
        0x7es
        0x77s
        0x7ds
        0xffs
        0x70s
        0x10s
        0x18s
        0x0s
        0x19s
        0x3cs
        0x41s
        0x5ds
        0x7es
        0x63s
        0x7ds
        0xffs
        0x70s
        0x10s
        0x18s
        0x0s
        0x19s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x7ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x18s
        0x41s
        0x59s
        0x7es
        0x63s
        0x7ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0x70s
        0x0s
        0x0s
        0x0s
        0x10s
        0x3cs
        0x41s
        0x59s
        0x7es
        0x63s
        0x5ds
        0x7fs
        0xfes
        0x22s
        0x80s
        0x8es
        0xb2s
        0x98s
        0x8fs
        0xfbs
        0xbes
        0xcfs
        0xffs
        0xffs
        0xf6s
        0x20s
        0x80s
        0xes
        0xb3s
        0x98s
        0x8es
        0xbbs
        0xbes
        0xcfs
        0xffs
        0xffs
        0xf6s
        0x20s
        0x80s
        0xes
        0xb2s
        0x98s
        0x8es
        0xbbs
        0xacs
        0xcfs
        0xfbs
        0xfes
        0xf2s
        0x20s
        0x80s
        0xes
        0xb2s
        0x98s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x20s
        0x0s
        0xes
        0xa2s
        0x80s
        0xces
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x20s
        0x0s
        0xes
        0xa2s
        0x80s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x0s
        0x0s
        0xes
        0xa2s
        0x80s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xfes
        0xe2s
        0x0s
        0x0s
        0x1es
        0x22s
        0x80s
        0x8es
        0xb2s
        0xbcs
        0xcfs
        0xfbs
        0xbes
        0xe0s
        0x1s
        0x0s
        0xes
        0xa0s
        0x80s
        0x8es
        0xb2s
        0x9cs
        0xcfs
        0xbbs
        0xbes
        0xe0s
        0x0s
        0x0s
        0xes
        0x20s
        0x88s
        0x8es
        0xb2s
        0x98s
        0xbfs
        0xffs
        0xffs
        0xf1s
        0x40s
        0x41s
        0x37s
        0x64s
        0xc1s
        0x3fs
        0xf6s
        0xd9s
        0xbfs
        0xf7s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x33s
        0x64s
        0x41s
        0x3fs
        0xe6s
        0xd9s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x64s
        0x41s
        0x3fs
        0xe6s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x44s
        0x41s
        0x3fs
        0xe6s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x44s
        0x41s
        0x3fs
        0xe6s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x40s
        0x23s
        0x44s
        0x41s
        0x3fs
        0x64s
        0xc1s
        0xbfs
        0xf6s
        0xfds
        0xf1s
        0x40s
        0x0s
        0x21s
        0x44s
        0x41s
        0x3fs
        0x64s
        0xc1s
        0xbfs
        0xf6s
        0xdds
        0xf1s
        0x0s
        0x0s
        0x21s
        0x40s
        0x41s
        0x3fs
        0x64s
        0xc1s
        0xbfs
        0xf6s
        0xd9s
        0xb0s
        0x0s
        0x0s
        0x1s
        0x40s
        0x41s
        0x37s
        0x64s
        0xc1s
        0x3fs
        0xe6s
        0xd9s
        0xf0s
        0x10s
        0x22s
        0x41s
        0x59s
        0x62s
        0x73s
        0x7ds
        0x63s
        0x7fs
        0xffs
        0xfbs
        0xf0s
        0x10s
        0x20s
        0x41s
        0x59s
        0x62s
        0x63s
        0x5ds
        0x63s
        0x7fs
        0xffs
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x59s
        0x62s
        0x63s
        0x5ds
        0x63s
        0x7fs
        0xffs
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x5ds
        0x62s
        0x63s
        0x5fs
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x59s
        0x62s
        0x63s
        0x5ds
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xf0s
        0x10s
        0x20s
        0x41s
        0x19s
        0x22s
        0x61s
        0x5ds
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xf0s
        0x10s
        0x0s
        0x40s
        0x19s
        0x22s
        0x61s
        0x59s
        0x63s
        0x7fs
        0x7ds
        0xe3s
        0xfcs
        0x82s
        0x18s
        0xfs
        0x92s
        0x3es
        0x4ds
        0xdbs
        0xffs
        0x7fs
        0xffs
        0x7fs
        0x7cs
        0x82s
        0x1as
        0xcs
        0x92s
        0x3es
        0x4ds
        0xdbs
        0x7fs
        0x7fs
        0xdfs
        0x7fs
        0x7cs
        0x82s
        0x18s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0xdbs
        0x7es
        0x7fs
        0xdfs
        0x7fs
        0x7cs
        0x82s
        0x0s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0xdbs
        0x7es
        0x6fs
        0xdfs
        0x7fs
        0x7cs
        0x82s
        0x0s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0xdbs
        0x7es
        0x6fs
        0xdfs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x92s
        0x3cs
        0x4ds
        0x9bs
        0x3es
        0x6fs
        0xdfs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x92s
        0x1cs
        0x4ds
        0x9bs
        0x3es
        0x6ds
        0xdbs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x92s
        0x1cs
        0x4cs
        0x93s
        0x3es
        0x6ds
        0xdbs
        0x7fs
        0x7cs
        0x0s
        0x0s
        0xcs
        0x82s
        0x18s
        0x4cs
        0x92s
        0x3es
        0x4ds
        0xdbs
        0x7fs
        0xf0s
        0x20s
        0x0s
        0xcs
        0xa2s
        0x98s
        0x8cs
        0xb2s
        0xbes
        0xcds
        0xfbs
        0xffs
        0xf0s
        0x0s
        0x0s
        0xcs
        0xa2s
        0x98s
        0x8cs
        0xb2s
        0xbcs
        0xcds
        0xffs
        0xcas
        0xf0s
        0x0s
        0x0s
        0xcs
        0xa2s
        0x80s
        0x8cs
        0xb2s
        0xbcs
        0xcds
        0xfbs
        0xfes
        0xe0s
        0x0s
        0x0s
        0xcs
        0xa0s
        0x80s
        0x8cs
        0xb2s
        0xbcs
        0xcds
        0xfbs
        0xfes
        0xefs
        0xffs
        0xffs
    .end array-data

    .line 869
    :array_9
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

.method private createEventlunarToSolar(III)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 1664
    const/4 v3, 0x0

    .line 1665
    .local v3, "lunarMonthFlag":Z
    const/4 v0, 0x0

    .line 1667
    .local v0, "LunarDate":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v1

    .line 1668
    .local v1, "StrDate":Ljava/lang/String;
    invoke-static {v1, v3}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1672
    .end local v1    # "StrDate":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1669
    :catch_0
    move-exception v2

    .line 1670
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getChineseWSFestival()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ws"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->formateGregorianDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1042
    .local v1, "keyValue":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getChineseZHFestival()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1046
    const-string v2, ""

    .line 1048
    .local v2, "festival":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zh"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->formateChineseDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    .local v3, "key":Ljava/lang/String;
    sget-object v6, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1052
    .local v4, "keyValue":Ljava/lang/Integer;
    const-string v6, "1229"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    iget v7, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 1053
    invoke-virtual {p0, v6, v7}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v6

    const/16 v7, 0x1d

    if-ne v6, v7, :cond_0

    .line 1054
    const v6, 0x7f0c018e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1057
    :cond_0
    if-eqz v4, :cond_1

    .line 1059
    iget v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    invoke-virtual {p0, v6}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarLeapMonth(I)I

    move-result v6

    iget v7, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-ne v6, v7, :cond_2

    .line 1060
    iget v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    iget v7, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    iget v8, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    invoke-virtual {p0, v6, v7, v8}, Lcn/nubia/calendar/util/ChineseCalendar;->calendarLundarToSolar(III)Ljava/lang/String;

    .line 1063
    new-instance v0, Ljava/util/Date;

    iget v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mLeapYear:I

    iget v7, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mLeapMonth:I

    iget v8, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mLeapDay:I

    invoke-direct {v0, v6, v7, v8}, Ljava/util/Date;-><init>(III)V

    .line 1064
    .local v0, "date":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    iget v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    iget v7, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    iget v8, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    invoke-direct {v5, v6, v7, v8}, Ljava/util/Date;-><init>(III)V

    .line 1066
    .local v5, "solarDate":Ljava/util/Date;
    invoke-virtual {v5, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    .line 1068
    .local v1, "day":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 1069
    iget-object v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1077
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "day":I
    .end local v5    # "solarDate":Ljava/util/Date;
    :cond_1
    :goto_0
    return-object v2

    .line 1074
    :cond_2
    iget-object v6, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDayofWeek(II)I
    .locals 2
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 1285
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 1286
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getFestival(III)I
    .locals 7
    .param p1, "month"    # I
    .param p2, "weekDay"    # I
    .param p3, "num"    # I

    .prologue
    .line 1267
    const/4 v1, -0x1

    .line 1268
    .local v1, "day":I
    const/4 v0, 0x0

    .line 1269
    .local v0, "count":I
    iget-object v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 1270
    iget-object v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 1271
    .local v4, "monthDayNum":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1272
    invoke-direct {p0, p1, v2}, Lcn/nubia/calendar/util/ChineseCalendar;->getDayofWeek(II)I

    move-result v3

    .line 1273
    .local v3, "j":I
    if-ne v3, p2, :cond_1

    .line 1274
    add-int/lit8 v0, v0, 0x1

    .line 1275
    if-ne v0, p3, :cond_1

    .line 1276
    move v1, v2

    .line 1281
    .end local v3    # "j":I
    :cond_0
    return v1

    .line 1271
    .restart local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getMaxDay(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, "days":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getMemorialFestival(II)I
    .locals 6
    .param p1, "month"    # I
    .param p2, "weekDay"    # I

    .prologue
    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v0, "days":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 1201
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 1202
    .local v3, "monthDayNum":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1203
    invoke-direct {p0, p1, v1}, Lcn/nubia/calendar/util/ChineseCalendar;->getDayofWeek(II)I

    move-result v2

    .line 1204
    .local v2, "j":I
    if-ne v2, p2, :cond_0

    .line 1205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    .end local v2    # "j":I
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/calendar/util/ChineseCalendar;->getMaxDay(Ljava/util/ArrayList;)I

    move-result v4

    return v4
.end method

.method private static final leapDays(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 1386
    invoke-static {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    sget-object v0, Lcn/nubia/calendar/util/ChineseCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1388
    const/16 v0, 0x1e

    .line 1392
    :goto_0
    return v0

    .line 1390
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 1392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final leapMonth(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 1396
    sget-object v0, Lcn/nubia/calendar/util/ChineseCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private toUtcTime(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1603
    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1605
    .local v1, "zoneOffset":I
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1607
    .local v0, "dstOffset":I
    const/16 v2, 0xe

    add-int v3, v1, v0

    neg-int v3, v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1608
    return-void
.end method

.method private static final yearDays(I)I
    .locals 6
    .param p0, "y"    # I

    .prologue
    .line 1377
    const/16 v1, 0x15c

    .line 1378
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 1379
    sget-object v2, Lcn/nubia/calendar/util/ChineseCalendar;->lunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1380
    add-int/lit8 v1, v1, 0x1

    .line 1378
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1382
    :cond_1
    invoke-static {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public calendarLundarToSolar(III)Ljava/lang/String;
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/16 v8, 0x9

    .line 1465
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/calendar/util/ChineseCalendar;->getLNewYearOffsetDays(III)I

    move-result v5

    sget-object v6, Lcn/nubia/calendar/util/ChineseCalendar;->solarLunarOffsetTable:[C

    add-int/lit16 v7, p1, -0x76d

    aget-char v6, v6, v7

    add-int v0, v5, v6

    .line 1467
    .local v0, "offsetDays":I
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x16e

    .line 1468
    .local v4, "yearDays":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 1469
    add-int/lit8 v3, p1, 0x1

    .line 1470
    .local v3, "sYear":I
    sub-int/2addr v0, v4

    .line 1475
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 1476
    .local v1, "sDay":I
    const/4 v2, 0x1

    .local v2, "sMonth":I
    :goto_2
    if-ltz v0, :cond_2

    .line 1477
    add-int/lit8 v1, v0, 0x1

    .line 1478
    invoke-virtual {p0, v3, v2}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v5

    sub-int/2addr v0, v5

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1467
    .end local v1    # "sDay":I
    .end local v2    # "sMonth":I
    .end local v3    # "sYear":I
    .end local v4    # "yearDays":I
    :cond_0
    const/16 v4, 0x16d

    goto :goto_0

    .line 1472
    .restart local v4    # "yearDays":I
    :cond_1
    move v3, p1

    .restart local v3    # "sYear":I
    goto :goto_1

    .line 1481
    .restart local v1    # "sDay":I
    .restart local v2    # "sMonth":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 1483
    iput v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mLeapYear:I

    .line 1484
    iput v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mLeapMonth:I

    .line 1485
    iput v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mLeapDay:I

    .line 1486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-le v2, v8, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-le v1, v8, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public computeChineseFields()I
    .locals 22

    .prologue
    .line 794
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v20, 0x76d

    move/from16 v0, v20

    if-lt v5, v0, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v20, 0x834

    move/from16 v0, v20

    if-le v5, v0, :cond_1

    .line 795
    :cond_0
    const/4 v5, 0x1

    .line 866
    :goto_0
    return v5

    .line 796
    :cond_1
    const/16 v18, 0x76d

    .line 797
    .local v18, "startYear":I
    const/16 v17, 0x1

    .line 798
    .local v17, "startMonth":I
    const/16 v16, 0x1

    .line 799
    .local v16, "startDate":I
    const/16 v5, 0x11f5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    .line 800
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 801
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    .line 803
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v20, 0x7d0

    move/from16 v0, v20

    if-lt v5, v0, :cond_2

    .line 804
    const/16 v18, 0x7d0

    .line 805
    const/16 v17, 0x1

    .line 806
    const/16 v16, 0x1

    .line 807
    const/16 v5, 0x1258

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    .line 808
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 809
    const/16 v5, 0x19

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    .line 811
    :cond_2
    const/4 v11, 0x0

    .line 812
    .local v11, "daysDiff":I
    move/from16 v12, v18

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    if-ge v12, v5, :cond_4

    .line 813
    add-int/lit16 v11, v11, 0x16d

    .line 814
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcn/nubia/calendar/util/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 815
    add-int/lit8 v11, v11, 0x1

    .line 812
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 818
    :cond_4
    move/from16 v12, v17

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    if-ge v12, v5, :cond_5

    .line 819
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v5

    add-int/2addr v11, v5

    .line 818
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 821
    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v11, v5

    .line 823
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    .line 824
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v13

    .line 825
    .local v13, "lastDate":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcn/nubia/calendar/util/ChineseCalendar;->nextChineseMonth(II)I

    move-result v14

    .line 826
    .local v14, "nextMonth":I
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-le v5, v13, :cond_7

    .line 827
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_6

    .line 828
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    .line 829
    :cond_6
    move-object/from16 v0, p0

    iput v14, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 830
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    sub-int/2addr v5, v13

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    .line 831
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v13

    .line 832
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcn/nubia/calendar/util/ChineseCalendar;->nextChineseMonth(II)I

    move-result v14

    goto :goto_3

    .line 834
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->stemNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x4

    rem-int/lit8 v21, v21, 0xa

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->branchNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x4

    rem-int/lit8 v21, v21, 0xc

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->yearGZ:Ljava/lang/String;

    .line 836
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->animalNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, -0x11f5

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0xc

    aget-object v5, v5, v20

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->animal:Ljava/lang/String;

    .line 838
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-gez v5, :cond_9

    .line 839
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 840
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-gt v5, v0, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v5, v0, :cond_8

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->run:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, "day":Ljava/lang/String;
    :goto_4
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 858
    .local v19, "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 859
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 860
    .local v6, "start":J
    move-wide v8, v6

    .line 861
    .local v8, "end":J
    const v10, 0x10016

    .line 863
    .local v10, "flags":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v15

    .line 864
    .local v15, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->yearGZ:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->animal:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDisplay:Ljava/lang/String;

    .line 865
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/calendar/util/ChineseCalendar;->setLunarDayFullName(Ljava/lang/String;)V

    .line 866
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 844
    .end local v4    # "day":Ljava/lang/String;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "flags":I
    .end local v15    # "s":Ljava/lang/String;
    .end local v19    # "time":Landroid/text/format/Time;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->run:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "day":Ljava/lang/String;
    goto/16 :goto_4

    .line 848
    .end local v4    # "day":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-gt v5, v0, :cond_a

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v5, v0, :cond_a

    .line 849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "day":Ljava/lang/String;
    goto/16 :goto_4

    .line 852
    .end local v4    # "day":Ljava/lang/String;
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "day":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public daysInChineseMonth(II)I
    .locals 8
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    const/4 v7, 0x1

    .line 876
    add-int/lit16 v5, p1, -0x11f5

    add-int/lit8 v2, v5, 0x0

    .line 877
    .local v2, "index":I
    const/4 v4, 0x0

    .line 878
    .local v4, "v":I
    const/4 v3, 0x0

    .line 879
    .local v3, "l":I
    const/16 v0, 0x1e

    .line 880
    .local v0, "d":I
    if-gt v7, p2, :cond_1

    const/16 v5, 0x8

    if-gt p2, v5, :cond_1

    .line 881
    iget-object v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v4, v5, v6

    .line 882
    add-int/lit8 v3, p2, -0x1

    .line 883
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 884
    const/16 v0, 0x1d

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 885
    :cond_1
    const/16 v5, 0x9

    if-gt v5, p2, :cond_2

    const/16 v5, 0xc

    if-gt p2, v5, :cond_2

    .line 886
    iget-object v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 887
    add-int/lit8 v3, p2, -0x9

    .line 888
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 889
    const/16 v0, 0x1d

    goto :goto_0

    .line 891
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 892
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 893
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 894
    const/4 v0, 0x0

    goto :goto_0

    .line 896
    :cond_3
    const/16 v0, 0x1d

    .line 897
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->bigLeapMonthYears:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 898
    iget-object v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->bigLeapMonthYears:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_4

    .line 899
    const/16 v0, 0x1e

    .line 900
    goto :goto_0

    .line 897
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public daysInGregorianMonth(II)I
    .locals 3
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->daysInGregorianMonth:[C

    add-int/lit8 v2, p2, -0x1

    aget-char v0, v1, v2

    .line 163
    .local v0, "d":I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_0
    return v0
.end method

.method public formateChineseDate()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 961
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-gez v2, :cond_0

    .line 962
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 965
    :cond_0
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "m":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "d":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-ge v2, v4, :cond_1

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 970
    :cond_1
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-ge v2, v4, :cond_2

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
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

.method public formateChineseDate1()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 1005
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-gez v3, :cond_0

    .line 1006
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 1008
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, "y":Ljava/lang/String;
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "m":Ljava/lang/String;
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "d":Ljava/lang/String;
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-ge v3, v5, :cond_1

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    :cond_1
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-ge v3, v5, :cond_2

    .line 1015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public formateGregorianDate()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 947
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "m":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "d":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    if-ge v2, v4, :cond_0

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 952
    :cond_0
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ge v2, v4, :cond_1

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
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

.method public formateGregorianDate1()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 979
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "y":Ljava/lang/String;
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "m":Ljava/lang/String;
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "d":Ljava/lang/String;
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    if-ge v3, v5, :cond_0

    .line 983
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ge v3, v5, :cond_1

    .line 986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public formateLauncher()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 993
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "m":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "d":Ljava/lang/String;
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    if-ge v2, v4, :cond_0

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 998
    :cond_0
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ge v2, v4, :cond_1

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
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

.method public getAll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseAndWesternHoliday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1138
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnimalYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->animal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->year:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseAndWesternHoliday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseHoliday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1148
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getWesternHoliday()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChineseDate()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    return v0
.end method

.method public getChineseDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getChineseHoliday()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1082
    invoke-direct {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseWSFestival()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseZHFestival()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1084
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1085
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    const-string v1, "\u8282"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1087
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getChineseHolidayAndLunar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseHoliday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1118
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChineseMonth()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    return v0
.end method

.method public getChineseMonthAndDay()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 1331
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-gez v1, :cond_1

    .line 1332
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 1333
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-lt v1, v2, :cond_0

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->run:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, "day":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1337
    .end local v0    # "day":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->run:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "day":Ljava/lang/String;
    goto :goto_0

    .line 1341
    .end local v0    # "day":Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-gt v1, v3, :cond_2

    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-lt v1, v2, :cond_2

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "day":Ljava/lang/String;
    goto :goto_0

    .line 1345
    .end local v0    # "day":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "day":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getChineseStringMonth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseYear()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    return v0
.end method

.method public getHoliday()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "holiday":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ws"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->formateGregorianDate1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, "key2":Ljava/lang/String;
    sget-object v1, Lcn/nubia/calendar/util/Constants;->chineseHolidayMap:Ljava/util/HashMap;

    .line 1030
    .local v1, "holidayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1032
    .local v3, "key2value":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 1033
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1036
    :cond_0
    return-object v0
.end method

.method getLMonthDays(II)I
    .locals 10
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const-wide/16 v8, 0x0

    const v6, 0x8000

    const/16 v2, 0x1e

    const/16 v1, 0x1d

    .line 1531
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarLeapMonth(I)I

    move-result v0

    .line 1532
    .local v0, "leapMonth":I
    const/16 v3, 0xc

    if-le p2, v3, :cond_0

    add-int/lit8 v3, p2, -0xc

    if-ne v3, v0, :cond_1

    :cond_0
    if-gez p2, :cond_3

    .line 1534
    :cond_1
    const/4 v1, -0x1

    .line 1550
    :cond_2
    :goto_0
    return v1

    .line 1536
    :cond_3
    add-int/lit8 v3, p2, -0xc

    if-ne v3, v0, :cond_4

    .line 1537
    sget-object v3, Lcn/nubia/calendar/util/ChineseCalendar;->lunarInfo:[J

    add-int/lit16 v4, p1, -0x76c

    aget-wide v4, v3, v4

    shr-int v3, v6, v0

    int-to-long v6, v3

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    move v1, v2

    .line 1540
    goto :goto_0

    .line 1543
    :cond_4
    if-lez v0, :cond_5

    if-le p2, v0, :cond_5

    .line 1544
    add-int/lit8 p2, p2, 0x1

    .line 1546
    :cond_5
    sget-object v3, Lcn/nubia/calendar/util/ChineseCalendar;->lunarInfo:[J

    add-int/lit16 v4, p1, -0x76c

    aget-wide v4, v3, v4

    add-int/lit8 v3, p2, -0x1

    shr-int v3, v6, v3

    int-to-long v6, v3

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    move v1, v2

    .line 1550
    goto :goto_0
.end method

.method getLNewYearOffsetDays(III)I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 1493
    const/4 v2, 0x0

    .line 1495
    .local v2, "offsetDays":I
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarLeapMonth(I)I

    move-result v1

    .line 1497
    .local v1, "leapMonth":I
    if-lez v1, :cond_0

    add-int/lit8 v3, p2, -0xc

    if-ne v1, v3, :cond_0

    .line 1498
    move p2, v1

    .line 1499
    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/util/ChineseCalendar;->getLMonthDays(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1503
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1504
    invoke-virtual {p0, p1, v0}, Lcn/nubia/calendar/util/ChineseCalendar;->getLMonthDays(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1505
    if-ne v0, v1, :cond_1

    .line 1506
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, p1, v3}, Lcn/nubia/calendar/util/ChineseCalendar;->getLMonthDays(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1503
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1509
    :cond_2
    add-int/lit8 v3, p3, -0x1

    add-int/2addr v2, v3

    .line 1510
    return v2
.end method

.method public getLunar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getSolarDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1129
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunarDay()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLunarDay()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, "day":Ljava/lang/String;
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    if-gez v1, :cond_2

    .line 1294
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 1295
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-ne v1, v2, :cond_0

    .line 1296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    :goto_0
    return-object v0

    .line 1297
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-lt v1, v2, :cond_1

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1300
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    goto :goto_0

    .line 1303
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-ne v1, v2, :cond_3

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1305
    :cond_3
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-gt v1, v3, :cond_4

    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    if-lt v1, v2, :cond_4

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1308
    :cond_4
    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public getLunarDayFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->lunarDayFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarDayInWeek()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1315
    const/4 v0, 0x0

    .line 1316
    .local v0, "day":Ljava/lang/String;
    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1321
    :goto_0
    return-object v0

    .line 1319
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method getLunarLeapMonth(I)I
    .locals 3
    .param p1, "year"    # I

    .prologue
    .line 1515
    add-int/lit16 v2, p1, -0x76d

    div-int/lit8 v1, v2, 0x2

    .line 1516
    .local v1, "index":I
    if-ltz v1, :cond_0

    sget-object v2, Lcn/nubia/calendar/util/ChineseCalendar;->lunarLeapMonthTable:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 1518
    :cond_0
    const/4 v2, -0x1

    .line 1526
    :goto_0
    return v2

    .line 1522
    :cond_1
    sget-object v2, Lcn/nubia/calendar/util/ChineseCalendar;->lunarLeapMonthTable:[C

    aget-char v0, v2, v1

    .line 1523
    .local v0, "iMonth":C
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_2

    .line 1524
    and-int/lit8 v2, v0, 0xf

    goto :goto_0

    .line 1526
    :cond_2
    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    goto :goto_0
.end method

.method public getRepeatLunaryMonth(JJLcn/nubia/calendar/model/CalendarEventModel;)Ljava/lang/String;
    .locals 23
    .param p1, "startmillis"    # J
    .param p3, "endmillis"    # J
    .param p5, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1613
    .local v5, "calen":Ljava/util/Calendar;
    const-wide/32 v18, 0x5265c00

    add-long v18, v18, p1

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1614
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/calendar/util/ChineseCalendar;->toUtcTime(Ljava/util/Calendar;)V

    .line 1615
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 1616
    .local v15, "t":Landroid/text/format/Time;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Landroid/text/format/Time;->year:I

    .line 1617
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Landroid/text/format/Time;->month:I

    .line 1618
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    .line 1619
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1620
    .local v8, "hh":I
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1621
    .local v12, "mm":I
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 1622
    .local v14, "ss":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1623
    .local v7, "endcalen":Ljava/util/Calendar;
    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1624
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 1626
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseYear()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xa89

    move/from16 v16, v0

    .line 1627
    .local v16, "y":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonth()I

    move-result v11

    .line 1628
    .local v11, "m":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseDate()I

    move-result v6

    .line 1629
    .local v6, "d":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v17, 0x18

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    .line 1632
    add-int/lit8 v17, v11, -0x1

    div-int/lit8 v17, v17, 0xc

    add-int v17, v17, v16

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xa89

    move/from16 v17, v0

    add-int/lit8 v18, v11, -0x1

    rem-int/lit8 v18, v18, 0xc

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v10

    .line 1634
    .local v10, "lastDay":I
    if-ge v10, v6, :cond_1

    .line 1635
    add-int/lit8 v11, v11, 0x1

    .line 1630
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1638
    :cond_1
    const/4 v4, 0x0

    .line 1639
    .local v4, "a":Ljava/lang/String;
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1640
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v18, v11, -0x1

    div-int/lit8 v18, v18, 0xc

    add-int v18, v18, v16

    add-int/lit8 v19, v11, -0x1

    rem-int/lit8 v19, v19, 0xc

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Lcn/nubia/calendar/util/ChineseCalendar;->createEventlunarToSolar(III)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "T000000"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1654
    :goto_2
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    add-int/lit8 v11, v11, 0x1

    .line 1656
    const/16 v17, 0x18

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    .line 1657
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1645
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v18, v11, -0x1

    div-int/lit8 v18, v18, 0xc

    add-int v18, v18, v16

    add-int/lit8 v19, v11, -0x1

    rem-int/lit8 v19, v19, 0xc

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Lcn/nubia/calendar/util/ChineseCalendar;->createEventlunarToSolar(III)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "T"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v17, 0xc

    move/from16 v0, v17

    if-le v8, v0, :cond_3

    const-string v17, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int/lit8 v21, v8, -0xc

    .line 1648
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1649
    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 1650
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v17, 0xc

    move/from16 v0, v17

    if-le v8, v0, :cond_4

    const-string v17, "01"

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 1648
    :cond_3
    const-string v17, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 1649
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 1650
    :cond_4
    const-string v17, "00"

    goto :goto_4

    .line 1660
    .end local v4    # "a":Ljava/lang/String;
    .end local v10    # "lastDay":I
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17
.end method

.method public getRepeatLunaryYear(JLcn/nubia/calendar/model/CalendarEventModel;)Ljava/lang/String;
    .locals 21
    .param p1, "millis"    # J
    .param p3, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 1555
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1556
    .local v3, "calen":Ljava/util/Calendar;
    const-wide/32 v16, 0x5265c00

    add-long v16, v16, p1

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1557
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/util/ChineseCalendar;->toUtcTime(Ljava/util/Calendar;)V

    .line 1559
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1560
    .local v13, "t":Landroid/text/format/Time;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    iput v15, v13, Landroid/text/format/Time;->year:I

    .line 1561
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    iput v15, v13, Landroid/text/format/Time;->month:I

    .line 1562
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    iput v15, v13, Landroid/text/format/Time;->monthDay:I

    .line 1563
    const/16 v15, 0xb

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1564
    .local v5, "hh":I
    const/16 v15, 0xc

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1565
    .local v10, "mm":I
    const/16 v15, 0xd

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1566
    .local v12, "ss":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 1568
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseYear()I

    move-result v15

    add-int/lit16 v14, v15, -0xa89

    .line 1569
    .local v14, "y":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonth()I

    move-result v9

    .line 1570
    .local v9, "m":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseDate()I

    move-result v4

    .line 1571
    .local v4, "d":I
    rsub-int v7, v14, 0x7f6

    .line 1572
    .local v7, "index":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1573
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 1574
    add-int v15, v14, v6

    add-int/lit16 v15, v15, 0xa89

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v8

    .line 1575
    .local v8, "lastday":I
    if-ge v8, v4, :cond_0

    .line 1573
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1578
    :cond_0
    const/4 v2, 0x0

    .line 1579
    .local v2, "a":Ljava/lang/String;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget-boolean v15, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eqz v15, :cond_1

    .line 1580
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int v16, v14, v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v9, v4}, Lcn/nubia/calendar/util/ChineseCalendar;->createEventlunarToSolar(III)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "T000000"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1591
    :goto_2
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    const-string v15, ","

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1584
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int v16, v14, v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v9, v4}, Lcn/nubia/calendar/util/ChineseCalendar;->createEventlunarToSolar(III)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "T"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v15, 0xc

    if-le v5, v15, :cond_2

    const-string v15, "%02d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v19, v5, -0xc

    .line 1586
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1587
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%02d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v15, 0xc

    if-le v5, v15, :cond_3

    const-string v15, "01"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1586
    :cond_2
    const-string v15, "%02d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 1587
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_3
    const-string v15, "00"

    goto :goto_4

    .line 1594
    .end local v2    # "a":Ljava/lang/String;
    .end local v8    # "lastday":I
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method

.method public getSolarDisplay()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x800

    .line 742
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x76d

    if-lt v4, v5, :cond_0

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x834

    if-le v4, v5, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-object v3

    .line 746
    :cond_1
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_8

    .line 747
    const/4 v0, 0x0

    .line 750
    .local v0, "a":I
    :goto_1
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v4, v4, 0x4

    shl-int/lit8 v4, v4, 0x1

    add-int v1, v4, v0

    .line 751
    .local v1, "baseday":I
    const/16 v4, 0x80

    shr-int v1, v4, v1

    .line 752
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    add-int/lit16 v4, v4, -0x76d

    mul-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x4

    add-int v2, v4, v5

    .line 753
    .local v2, "id":I
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolDay:[C

    aget-char v4, v4, v2

    and-int/2addr v1, v4

    .line 754
    if-lez v1, :cond_9

    .line 755
    const/4 v2, 0x1

    .line 759
    :goto_2
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v4, v4, -0x1

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 760
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x798

    if-ge v4, v5, :cond_2

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x76c

    if-le v4, v5, :cond_2

    .line 761
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay1:[C

    aget-char v1, v4, v0

    .line 762
    :cond_2
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x7bf

    if-ge v4, v5, :cond_3

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x797

    if-le v4, v5, :cond_3

    .line 763
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay2:[C

    aget-char v1, v4, v0

    .line 764
    :cond_3
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x7e4

    if-ge v4, v5, :cond_4

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x7be

    if-le v4, v5, :cond_4

    .line 765
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay3:[C

    aget-char v1, v4, v0

    .line 766
    :cond_4
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    if-ge v4, v6, :cond_5

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x7e3

    if-le v4, v5, :cond_5

    .line 767
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay4:[C

    aget-char v1, v4, v0

    .line 768
    :cond_5
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x824

    if-ge v4, v5, :cond_6

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x7ff

    if-le v4, v5, :cond_6

    .line 769
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay5:[C

    aget-char v1, v4, v0

    .line 770
    :cond_6
    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    const/16 v5, 0x835

    if-ge v4, v5, :cond_7

    iget v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    if-le v4, v6, :cond_7

    .line 771
    iget-object v4, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gLunarHolBaseDay6:[C

    aget-char v1, v4, v0

    .line 772
    :cond_7
    add-int v4, v1, v2

    iget v5, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ne v4, v5, :cond_0

    .line 774
    iget-object v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->solarNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 775
    iget-object v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    goto/16 :goto_0

    .line 749
    .end local v0    # "a":I
    .end local v1    # "baseday":I
    .end local v2    # "id":I
    :cond_8
    const/4 v0, 0x1

    .restart local v0    # "a":I
    goto/16 :goto_1

    .line 757
    .restart local v1    # "baseday":I
    .restart local v2    # "id":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public getWesternHoliday()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ws"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->formateGregorianDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1095
    .local v1, "keyvalue":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1096
    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1101
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->isMontherDay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1102
    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMotherDay:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1108
    :cond_0
    :goto_1
    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    return-object v2

    .line 1098
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    goto :goto_0

    .line 1103
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->isFatherDay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1104
    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mFatherDay:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    goto :goto_1

    .line 1105
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->isThanksgiving()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    iget-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mThanksgiving:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    goto :goto_1
.end method

.method public getWesternHolidayAndLunar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getWesternHoliday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMonthDayDisplay:Ljava/lang/String;

    .line 1158
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->getLunar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getYearGZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->yearGZ:Ljava/lang/String;

    return-object v0
.end method

.method public getYearGZ1(J)Ljava/lang/String;
    .locals 13
    .param p1, "milliseconds"    # J

    .prologue
    .line 1357
    const/4 v3, 0x0

    .line 1358
    .local v3, "leapMonth":I
    const-wide v8, -0x201b93c2f00L

    sub-long v8, p1, v8

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 1359
    .local v6, "offset":I
    add-int/lit8 v0, v6, 0x28

    .line 1360
    .local v0, "dayCyl":I
    const/16 v4, 0xe

    .line 1361
    .local v4, "monCyl":I
    const/4 v1, 0x0

    .line 1362
    .local v1, "daysOfYear":I
    const/16 v2, 0x76c

    .local v2, "iYear":I
    :goto_0
    const/16 v7, 0x802

    if-ge v2, v7, :cond_0

    if-lez v6, :cond_0

    .line 1363
    invoke-static {v2}, Lcn/nubia/calendar/util/ChineseCalendar;->yearDays(I)I

    move-result v1

    .line 1364
    sub-int/2addr v6, v1

    .line 1365
    add-int/lit8 v4, v4, 0xc

    .line 1362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1367
    :cond_0
    if-gez v6, :cond_1

    .line 1368
    add-int/2addr v6, v1

    .line 1369
    add-int/lit8 v2, v2, -0x1

    .line 1370
    add-int/lit8 v4, v4, -0xc

    .line 1372
    :cond_1
    add-int/lit16 v7, v2, -0x76c

    add-int/lit8 v5, v7, 0x24

    .line 1373
    .local v5, "num":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/calendar/util/ChineseCalendar;->stemNames:[Ljava/lang/String;

    rem-int/lit8 v9, v5, 0xa

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/calendar/util/ChineseCalendar;->branchNames:[Ljava/lang/String;

    rem-int/lit8 v9, v5, 0xc

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method initFieldsNames()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 106
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 107
    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 108
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayNames:[Ljava/lang/String;

    .line 109
    const v1, 0x7f0a0025

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthNamesMonthView:[Ljava/lang/String;

    .line 111
    const v1, 0x7f0c0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->monthName:Ljava/lang/String;

    .line 112
    const v1, 0x7f0c0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->dayName:Ljava/lang/String;

    .line 113
    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chu:Ljava/lang/String;

    .line 114
    const v1, 0x7f0c01ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->run:Ljava/lang/String;

    .line 116
    const v1, 0x7f0c0247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->year:Ljava/lang/String;

    .line 124
    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->solarNames:[Ljava/lang/String;

    .line 126
    const v1, 0x7f0c0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mMotherDay:Ljava/lang/String;

    .line 127
    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mFatherDay:Ljava/lang/String;

    .line 128
    const v1, 0x7f0c022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mThanksgiving:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public isFatherDay()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1242
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return v1

    .line 1245
    :cond_1
    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-direct {p0, v3, v2, v4}, Lcn/nubia/calendar/util/ChineseCalendar;->getFestival(III)I

    move-result v0

    .line 1247
    .local v0, "day":I
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ne v3, v0, :cond_0

    move v1, v2

    .line 1248
    goto :goto_0
.end method

.method public isGregorianLeapYear(I)Z
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "isLeap":Z
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 154
    :cond_0
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_1

    .line 155
    const/4 v0, 0x0

    .line 156
    :cond_1
    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_2

    .line 157
    const/4 v0, 0x1

    .line 158
    :cond_2
    return v0
.end method

.method public isLaborDay()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1216
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return v1

    .line 1219
    :cond_1
    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, v2}, Lcn/nubia/calendar/util/ChineseCalendar;->getFestival(III)I

    move-result v0

    .line 1221
    .local v0, "day":I
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ne v3, v0, :cond_0

    move v1, v2

    .line 1222
    goto :goto_0
.end method

.method public isMemorialDay()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1186
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v1

    .line 1189
    :cond_1
    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/util/ChineseCalendar;->getMemorialFestival(II)I

    move-result v0

    .line 1191
    .local v0, "day":I
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ne v2, v0, :cond_0

    .line 1192
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMontherDay()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1255
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return v1

    .line 1258
    :cond_1
    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcn/nubia/calendar/util/ChineseCalendar;->getFestival(III)I

    move-result v0

    .line 1259
    .local v0, "day":I
    iget v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ne v3, v0, :cond_0

    move v1, v2

    .line 1260
    goto :goto_0
.end method

.method public isOfficalHoliday()Z
    .locals 5

    .prologue
    .line 1165
    const/4 v0, 0x0

    .line 1166
    .local v0, "holiday":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ws"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->formateGregorianDate1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, "key2":Ljava/lang/String;
    sget-object v3, Lcn/nubia/calendar/util/Constants;->chineseHolidayMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1169
    .local v2, "key2Value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 1170
    iget-object v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    :cond_0
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isThanksgiving()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1229
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return v1

    .line 1232
    :cond_1
    const/16 v2, 0xa

    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/calendar/util/ChineseCalendar;->getFestival(III)I

    move-result v0

    .line 1234
    .local v0, "day":I
    iget v2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    if-ne v2, v0, :cond_0

    .line 1235
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWeekendOnWork()Z
    .locals 2

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcn/nubia/calendar/util/ChineseCalendar;->formateGregorianDate1()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "weekendOnWorkDate":Ljava/lang/String;
    sget-object v1, Lcn/nubia/calendar/util/Constants;->WeekendOnWorkList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public nextChineseMonth(II)I
    .locals 5
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    .line 909
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 910
    .local v1, "n":I
    if-lez p2, :cond_0

    .line 911
    add-int/lit16 v3, p1, -0x11f5

    add-int/lit8 v0, v3, 0x0

    .line 912
    .local v0, "index":I
    iget-object v3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v2, v3, v4

    .line 913
    .local v2, "v":I
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 914
    if-ne v2, p2, :cond_0

    .line 915
    neg-int v1, p2

    .line 917
    .end local v0    # "index":I
    .end local v2    # "v":I
    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 918
    const/4 v1, 0x1

    .line 919
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

    .line 138
    iput p1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianYear:I

    .line 139
    iput p2, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianMonth:I

    .line 140
    iput p3, p0, Lcn/nubia/calendar/util/ChineseCalendar;->gregorianDate:I

    .line 141
    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseYear:I

    .line 142
    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseMonth:I

    .line 143
    iput v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->chineseDate:I

    .line 144
    return-void
.end method

.method public setGregorian(Landroid/text/format/Time;)V
    .locals 4
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 133
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(III)V

    .line 134
    iget-object v0, p0, Lcn/nubia/calendar/util/ChineseCalendar;->cal:Ljava/util/Calendar;

    iget v1, p1, Landroid/text/format/Time;->year:I

    iget v2, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 135
    return-void
.end method

.method public setLunarDayFullName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lunarDayFullName"    # Ljava/lang/String;

    .prologue
    .line 789
    iput-object p1, p0, Lcn/nubia/calendar/util/ChineseCalendar;->lunarDayFullName:Ljava/lang/String;

    .line 790
    return-void
.end method
