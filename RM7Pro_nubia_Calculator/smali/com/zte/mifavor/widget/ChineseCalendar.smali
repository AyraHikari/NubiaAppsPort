.class public final Lcom/zte/mifavor/widget/ChineseCalendar;
.super Ljava/util/GregorianCalendar;
.source "ChineseCalendar.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation


# static fields
.field public static final CHINESE_DATE:I = 0x323

.field public static final CHINESE_EARTHLY_BRANCH:I = 0x327

.field public static final CHINESE_HEAVENLY_STEM:I = 0x326

.field public static final CHINESE_MONTH:I = 0x322

.field public static final CHINESE_PRINCIPLE_TERM:I = 0x325

.field public static final CHINESE_SECTIONAL_TERM:I = 0x324

.field public static final CHINESE_TERM_OR_DATE:I = 0x378

.field public static final CHINESE_YEAR:I = 0x321

.field public static final CHINESE_ZODIAC:I = 0x328

.field private static final animalNames:[Ljava/lang/String;

.field private static final baseChineseDate:I = 0xb

.field private static final baseChineseMonth:I = 0xb

.field private static final baseChineseYear:I = 0x76c

.field private static final baseDate:I = 0x1

.field private static final baseIndex:I = 0x0

.field private static final baseMonth:I = 0x1

.field private static final baseYear:I = 0x76d

.field private static final bigLeapMonthYears:[I

.field private static final branchNames:[Ljava/lang/String;

.field private static final chineseDateNames:[Ljava/lang/String;

.field private static final chineseMonthNames:[Ljava/lang/String;

.field private static final chineseMonths:[C

.field private static final chineseWeekNames:[Ljava/lang/String;

.field private static final daysInGregorianMonth:[C

.field private static final principleTermMap:[[C

.field private static final principleTermNames:[Ljava/lang/String;

.field private static final principleTermYear:[[C

.field private static final sectionalTermMap:[[C

.field private static final sectionalTermNames:[Ljava/lang/String;

.field private static final sectionalTermYear:[[C

.field private static final serialVersionUID:J = 0x8L

.field private static final stemNames:[Ljava/lang/String;


# instance fields
.field private areChineseFieldsComputed:Z

.field private areSolarTermsComputed:Z

.field private chineseDate:I

.field private chineseMonth:I

.field private chineseYear:I

.field private lastSetChinese:Z

.field private principleTerm:I

.field private sectionalTerm:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const-string v0, ""

    const-string v1, "\u661f\u671f\u65e5"

    const-string v2, "\u661f\u671f\u4e00"

    const-string v3, "\u661f\u671f\u4e8c"

    const-string v4, "\u661f\u671f\u4e09"

    const-string v5, "\u661f\u671f\u56db"

    const-string v6, "\u661f\u671f\u4e94"

    const-string v7, "\u661f\u671f\u516d"

    .line 29
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\u6b63"

    const-string v3, "\u4e8c"

    const-string v4, "\u4e09"

    const-string v5, "\u56db"

    const-string v6, "\u4e94"

    const-string v7, "\u516d"

    const-string v8, "\u4e03"

    const-string v9, "\u516b"

    const-string v10, "\u4e5d"

    const-string v11, "\u5341"

    const-string v12, "\u5341\u4e00"

    const-string v13, "\u5341\u4e8c"

    .line 31
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\u521d\u4e00"

    const-string v3, "\u521d\u4e8c"

    const-string v4, "\u521d\u4e09"

    const-string v5, "\u521d\u56db"

    const-string v6, "\u521d\u4e94"

    const-string v7, "\u521d\u516d"

    const-string v8, "\u521d\u4e03"

    const-string v9, "\u521d\u516b"

    const-string v10, "\u521d\u4e5d"

    const-string v11, "\u521d\u5341"

    const-string v12, "\u5341\u4e00"

    const-string v13, "\u5341\u4e8c"

    const-string v14, "\u5341\u4e09"

    const-string v15, "\u5341\u56db"

    const-string v16, "\u5341\u4e94"

    const-string v17, "\u5341\u516d"

    const-string v18, "\u5341\u4e03"

    const-string v19, "\u5341\u516b"

    const-string v20, "\u5341\u4e5d"

    const-string v21, "\u4e8c\u5341"

    const-string v22, "\u5eff\u4e00"

    const-string v23, "\u5eff\u4e8c"

    const-string v24, "\u5eff\u4e09"

    const-string v25, "\u5eff\u56db"

    const-string v26, "\u5eff\u4e94"

    const-string v27, "\u5eff\u516d"

    const-string v28, "\u5eff\u4e03"

    const-string v29, "\u5eff\u516b"

    const-string v30, "\u5eff\u4e5d"

    const-string v31, "\u4e09\u5341"

    .line 33
    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    const-string v1, "\u5927\u5bd2"

    const-string v2, "\u96e8\u6c34"

    const-string v3, "\u6625\u5206"

    const-string v4, "\u8c37\u96e8"

    const-string v5, "\u590f\u6ee1"

    const-string v6, "\u590f\u81f3"

    const-string v7, "\u5927\u6691"

    const-string v8, "\u5904\u6691"

    const-string v9, "\u79cb\u5206"

    const-string v10, "\u971c\u964d"

    const-string v11, "\u5c0f\u96ea"

    const-string v12, "\u51ac\u81f3"

    .line 37
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    const-string v1, "\u5c0f\u5bd2"

    const-string v2, "\u7acb\u6625"

    const-string v3, "\u60ca\u86f0"

    const-string v4, "\u6e05\u660e"

    const-string v5, "\u7acb\u590f"

    const-string v6, "\u8292\u79cd"

    const-string v7, "\u5c0f\u6691"

    const-string v8, "\u7acb\u79cb"

    const-string v9, "\u767d\u9732"

    const-string v10, "\u5bd2\u9732"

    const-string v11, "\u7acb\u51ac"

    const-string v12, "\u5927\u96ea"

    .line 39
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\u7532"

    const-string v3, "\u4e59"

    const-string v4, "\u4e19"

    const-string v5, "\u4e01"

    const-string v6, "\u620a"

    const-string v7, "\u5df1"

    const-string v8, "\u5e9a"

    const-string v9, "\u8f9b"

    const-string v10, "\u58ec"

    const-string v11, "\u7678"

    .line 41
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->stemNames:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\u5b50"

    const-string v3, "\u4e11"

    const-string v4, "\u5bc5"

    const-string v5, "\u536f"

    const-string v6, "\u8fb0"

    const-string v7, "\u5df3"

    const-string v8, "\u5348"

    const-string v9, "\u672a"

    const-string v10, "\u7533"

    const-string v11, "\u9149"

    const-string v12, "\u620c"

    const-string v13, "\u4ea5"

    .line 43
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->branchNames:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\u9f20"

    const-string v3, "\u725b"

    const-string v4, "\u864e"

    const-string v5, "\u5154"

    const-string v6, "\u9f99"

    const-string v7, "\u86c7"

    const-string v8, "\u9a6c"

    const-string v9, "\u7f8a"

    const-string v10, "\u7334"

    const-string v11, "\u9e21"

    const-string v12, "\u72d7"

    const-string v13, "\u732a"

    .line 45
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->animalNames:[Ljava/lang/String;

    const/16 v0, 0x14

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->bigLeapMonthYears:[I

    const/16 v0, 0xc

    .line 49
    new-array v1, v0, [[C

    const/16 v2, 0x1c

    new-array v3, v2, [C

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [C

    fill-array-data v3, :array_2

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/16 v3, 0x1d

    new-array v6, v3, [C

    fill-array-data v6, :array_3

    const/4 v7, 0x2

    aput-object v6, v1, v7

    new-array v6, v3, [C

    fill-array-data v6, :array_4

    const/4 v8, 0x3

    aput-object v6, v1, v8

    new-array v6, v3, [C

    fill-array-data v6, :array_5

    const/4 v9, 0x4

    aput-object v6, v1, v9

    const/16 v6, 0x21

    new-array v6, v6, [C

    fill-array-data v6, :array_6

    const/4 v10, 0x5

    aput-object v6, v1, v10

    new-array v6, v3, [C

    fill-array-data v6, :array_7

    const/4 v11, 0x6

    aput-object v6, v1, v11

    const/16 v6, 0x21

    new-array v6, v6, [C

    fill-array-data v6, :array_8

    const/4 v12, 0x7

    aput-object v6, v1, v12

    new-array v6, v3, [C

    fill-array-data v6, :array_9

    const/16 v13, 0x8

    aput-object v6, v1, v13

    new-array v6, v3, [C

    fill-array-data v6, :array_a

    const/16 v14, 0x9

    aput-object v6, v1, v14

    new-array v6, v3, [C

    fill-array-data v6, :array_b

    const/16 v15, 0xa

    aput-object v6, v1, v15

    new-array v6, v3, [C

    fill-array-data v6, :array_c

    const/16 v16, 0xb

    aput-object v6, v1, v16

    sput-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermMap:[[C

    .line 74
    new-array v1, v0, [[C

    new-array v6, v14, [C

    fill-array-data v6, :array_d

    aput-object v6, v1, v4

    new-array v6, v14, [C

    fill-array-data v6, :array_e

    aput-object v6, v1, v5

    new-array v6, v14, [C

    fill-array-data v6, :array_f

    aput-object v6, v1, v7

    new-array v6, v14, [C

    fill-array-data v6, :array_10

    aput-object v6, v1, v8

    new-array v6, v14, [C

    fill-array-data v6, :array_11

    aput-object v6, v1, v9

    new-array v6, v14, [C

    fill-array-data v6, :array_12

    aput-object v6, v1, v10

    new-array v6, v14, [C

    fill-array-data v6, :array_13

    aput-object v6, v1, v11

    new-array v6, v14, [C

    fill-array-data v6, :array_14

    aput-object v6, v1, v12

    new-array v6, v14, [C

    fill-array-data v6, :array_15

    aput-object v6, v1, v13

    new-array v6, v14, [C

    fill-array-data v6, :array_16

    aput-object v6, v1, v14

    new-array v6, v14, [C

    fill-array-data v6, :array_17

    aput-object v6, v1, v15

    new-array v6, v14, [C

    fill-array-data v6, :array_18

    aput-object v6, v1, v16

    sput-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermYear:[[C

    .line 87
    new-array v1, v0, [[C

    new-array v6, v2, [C

    fill-array-data v6, :array_19

    aput-object v6, v1, v4

    new-array v2, v2, [C

    fill-array-data v2, :array_1a

    aput-object v2, v1, v5

    new-array v2, v3, [C

    fill-array-data v2, :array_1b

    aput-object v2, v1, v7

    new-array v2, v3, [C

    fill-array-data v2, :array_1c

    aput-object v2, v1, v8

    new-array v2, v3, [C

    fill-array-data v2, :array_1d

    aput-object v2, v1, v9

    new-array v2, v3, [C

    fill-array-data v2, :array_1e

    aput-object v2, v1, v10

    new-array v2, v3, [C

    fill-array-data v2, :array_1f

    aput-object v2, v1, v11

    new-array v2, v3, [C

    fill-array-data v2, :array_20

    aput-object v2, v1, v12

    new-array v2, v3, [C

    fill-array-data v2, :array_21

    aput-object v2, v1, v13

    new-array v2, v3, [C

    fill-array-data v2, :array_22

    aput-object v2, v1, v14

    new-array v2, v3, [C

    fill-array-data v2, :array_23

    aput-object v2, v1, v15

    new-array v2, v3, [C

    fill-array-data v2, :array_24

    aput-object v2, v1, v16

    sput-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermMap:[[C

    .line 112
    new-array v1, v0, [[C

    new-array v2, v12, [C

    fill-array-data v2, :array_25

    aput-object v2, v1, v4

    new-array v2, v12, [C

    fill-array-data v2, :array_26

    aput-object v2, v1, v5

    new-array v2, v13, [C

    fill-array-data v2, :array_27

    aput-object v2, v1, v7

    new-array v2, v13, [C

    fill-array-data v2, :array_28

    aput-object v2, v1, v8

    new-array v2, v13, [C

    fill-array-data v2, :array_29

    aput-object v2, v1, v9

    new-array v2, v13, [C

    fill-array-data v2, :array_2a

    aput-object v2, v1, v10

    new-array v2, v13, [C

    fill-array-data v2, :array_2b

    aput-object v2, v1, v11

    new-array v2, v13, [C

    fill-array-data v2, :array_2c

    aput-object v2, v1, v12

    new-array v2, v13, [C

    fill-array-data v2, :array_2d

    aput-object v2, v1, v13

    new-array v2, v13, [C

    fill-array-data v2, :array_2e

    aput-object v2, v1, v14

    new-array v2, v13, [C

    fill-array-data v2, :array_2f

    aput-object v2, v1, v15

    new-array v2, v13, [C

    fill-array-data v2, :array_30

    aput-object v2, v1, v16

    sput-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermYear:[[C

    .line 125
    new-array v0, v0, [C

    fill-array-data v0, :array_31

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth:[C

    const/16 v0, 0x192

    .line 127
    new-array v0, v0, [C

    fill-array-data v0, :array_32

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    return-void

    :array_0
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

    :array_1
    .array-data 2
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
    .end array-data

    :array_2
    .array-data 2
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x3s
        0x4s
        0x4s
        0x4s
        0x3s
        0x3s
        0x4s
        0x4s
        0x3s
        0x3s
        0x3s
    .end array-data

    :array_3
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x5s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x9s
        0x9s
        0x9s
        0x9s
        0x8s
        0x9s
        0x9s
        0x9s
        0x8s
        0x8s
        0x9s
        0x9s
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x8s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    nop

    :array_d
    .array-data 2
        0xds
        0x31s
        0x55s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_e
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_f
    .array-data 2
        0xds
        0x30s
        0x54s
        0x70s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_10
    .array-data 2
        0xds
        0x2ds
        0x4cs
        0x6cs
        0x8cs
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_11
    .array-data 2
        0xds
        0x2cs
        0x48s
        0x68s
        0x84s
        0xa8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_12
    .array-data 2
        0x5s
        0x21s
        0x44s
        0x60s
        0x7cs
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_13
    .array-data 2
        0x1ds
        0x39s
        0x55s
        0x78s
        0x94s
        0xb0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_14
    .array-data 2
        0xds
        0x30s
        0x4cs
        0x68s
        0x84s
        0xa8s
        0xc4s
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_15
    .array-data 2
        0x19s
        0x3cs
        0x58s
        0x78s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_16
    .array-data 2
        0x10s
        0x2cs
        0x4cs
        0x6cs
        0x90s
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_17
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_18
    .array-data 2
        0x11s
        0x35s
        0x55s
        0x7cs
        0x9cs
        0xbcs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_19
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
    .end array-data

    :array_1a
    .array-data 2
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x12s
        0x13s
        0x13s
        0x13s
        0x12s
        0x12s
        0x13s
        0x13s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
    .end array-data

    :array_1b
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1c
    .array-data 2
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1d
    .array-data 2
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1e
    .array-data 2
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1f
    .array-data 2
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x17s
    .end array-data

    nop

    :array_20
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_21
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_22
    .array-data 2
        0x18s
        0x18s
        0x18s
        0x18s
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x17s
    .end array-data

    nop

    :array_23
    .array-data 2
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x16s
    .end array-data

    nop

    :array_24
    .array-data 2
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x16s
    .end array-data

    nop

    :array_25
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x71s
        0x95s
        0xb9s
        0xc9s
    .end array-data

    nop

    :array_26
    .array-data 2
        0x15s
        0x39s
        0x5ds
        0x7ds
        0xa1s
        0xc1s
        0xc9s
    .end array-data

    nop

    :array_27
    .array-data 2
        0x15s
        0x38s
        0x58s
        0x78s
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    :array_28
    .array-data 2
        0x15s
        0x31s
        0x51s
        0x74s
        0x90s
        0xb0s
        0xc8s
        0xc9s
    .end array-data

    :array_29
    .array-data 2
        0x11s
        0x31s
        0x4ds
        0x70s
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2a
    .array-data 2
        0x1cs
        0x3cs
        0x58s
        0x74s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2b
    .array-data 2
        0x19s
        0x35s
        0x54s
        0x70s
        0x90s
        0xacs
        0xc8s
        0xc9s
    .end array-data

    :array_2c
    .array-data 2
        0x1ds
        0x39s
        0x59s
        0x78s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2d
    .array-data 2
        0x11s
        0x2ds
        0x49s
        0x6cs
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2e
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
    .end array-data

    :array_2f
    .array-data 2
        0x10s
        0x2cs
        0x50s
        0x70s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_30
    .array-data 2
        0x11s
        0x35s
        0x58s
        0x78s
        0x9cs
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    :array_31
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

    :array_32
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
.end method

.method public constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 183
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 179
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(ZIII)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    if-eqz p1, :cond_0

    const/16 p1, 0x321

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    const/16 p1, 0x322

    .line 193
    invoke-virtual {p0, p1, p3}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    const/16 p1, 0x323

    .line 194
    invoke-virtual {p0, p1, p4}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    :goto_0
    return-void
.end method

.method private computeChineseFields()V
    .locals 7

    const/4 v0, 0x1

    .line 727
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v1

    const/4 v2, 0x2

    .line 728
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x5

    .line 729
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v3

    const/16 v4, 0x76d

    if-lt v1, v4, :cond_7

    const/16 v5, 0x834

    if-le v1, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v5, 0x7d0

    const/16 v6, 0xb

    if-ge v1, v5, :cond_1

    const/16 v5, 0x76c

    .line 740
    iput v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 741
    iput v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 742
    iput v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    goto :goto_0

    :cond_1
    const/16 v4, 0x7cf

    .line 748
    iput v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 749
    iput v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    const/16 v4, 0x19

    .line 750
    iput v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    move v4, v5

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 756
    invoke-static {v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit16 v5, v5, 0x16e

    goto :goto_2

    :cond_2
    add-int/lit16 v5, v5, 0x16d

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_3
    if-ge v4, v2, :cond_4

    add-int/lit8 v6, v4, -0x1

    .line 764
    invoke-static {v1, v6}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    sub-int/2addr v3, v0

    add-int/2addr v5, v3

    .line 768
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 769
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    .line 770
    :goto_4
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le v2, v1, :cond_6

    .line 771
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 772
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 773
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v1, v0, :cond_5

    .line 774
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 776
    :cond_5
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    goto :goto_4

    :cond_6
    return-void

    :cond_7
    :goto_5
    return-void
.end method

.method private computeGregorianFields()V
    .locals 9

    .line 601
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 602
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 603
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    const/4 v3, 0x1

    .line 604
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 605
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    const/4 v4, 0x0

    .line 606
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    const/16 v5, 0x834

    const/16 v6, 0x76c

    if-ge v0, v6, :cond_0

    const/16 v0, 0x76b

    goto :goto_0

    :cond_0
    if-le v0, v5, :cond_1

    const/16 v0, 0x835

    :cond_1
    :goto_0
    const/16 v6, -0xc

    const/16 v7, 0xc

    if-ge v1, v6, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    if-le v1, v7, :cond_3

    move v1, v7

    :cond_3
    :goto_1
    const/16 v6, 0x1e

    if-ge v2, v3, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    if-le v2, v6, :cond_5

    move v2, v6

    :cond_5
    :goto_2
    mul-int/lit16 v6, v0, 0x2710

    .line 623
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v6, v8

    add-int/2addr v6, v2

    const v8, 0x121ef17

    if-ge v6, v8, :cond_6

    const/16 v0, 0x76d

    .line 625
    invoke-virtual {p0, v0, v4, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 626
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_4

    :cond_6
    const v8, 0x14073f1

    if-le v6, v8, :cond_7

    const/16 v0, 0xb

    const/16 v1, 0x1f

    .line 628
    invoke-virtual {p0, v5, v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 629
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_4

    .line 631
    :cond_7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v7, :cond_8

    move v1, v7

    .line 634
    :cond_8
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v5

    if-nez v5, :cond_9

    neg-int v1, v1

    .line 637
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v5

    :cond_9
    if-le v2, v5, :cond_a

    move v2, v5

    .line 642
    :cond_a
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0, v0, v5, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 643
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    .line 646
    :cond_b
    :goto_3
    iget v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    if-ne v5, v0, :cond_d

    iget v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-eq v5, v1, :cond_c

    goto :goto_5

    .line 653
    :cond_c
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int/2addr v2, v0

    add-int/2addr v4, v2

    const/4 v0, 0x5

    .line 655
    invoke-super {p0, v0, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 657
    :goto_4
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    return-void

    .line 647
    :cond_d
    :goto_5
    iget v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v5, v6}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 648
    iget v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v5, v6}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 649
    iget v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v5, v3, :cond_b

    .line 650
    iget v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    goto :goto_3
.end method

.method private computeIfNeed(I)V
    .locals 3

    .line 577
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 578
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    if-nez v0, :cond_0

    .line 579
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 580
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    .line 581
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 582
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 583
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    .line 585
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseTermsField(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    if-nez p1, :cond_2

    .line 586
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeSolarTerms()V

    .line 587
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    goto :goto_0

    .line 590
    :cond_1
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    if-nez p1, :cond_2

    .line 591
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeGregorianFields()V

    .line 592
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 593
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 594
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 595
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private computeSolarTerms()V
    .locals 3

    const/4 v0, 0x1

    .line 846
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v0

    const/4 v1, 0x2

    .line 847
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v1

    const/16 v2, 0x76d

    if-lt v0, v2, :cond_1

    const/16 v2, 0x834

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTerm(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTerm:I

    .line 853
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTerm(II)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTerm:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static daysInChineseMonth(II)I
    .locals 6

    add-int/lit16 p0, p0, -0x76c

    const/4 v0, 0x0

    add-int/2addr p0, v0

    const/16 v1, 0x1e

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-gt v3, p1, :cond_0

    const/16 v4, 0x8

    if-gt p1, v4, :cond_0

    .line 279
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 p0, p0, 0x2

    aget-char p0, v0, p0

    sub-int/2addr p1, v3

    shr-int/2addr p0, p1

    and-int/2addr p0, v3

    if-ne p0, v3, :cond_1

    goto :goto_2

    :cond_0
    const/16 v4, 0x9

    if-gt v4, p1, :cond_2

    const/16 v5, 0xc

    if-gt p1, v5, :cond_2

    .line 285
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v3

    aget-char p0, v0, p0

    sub-int/2addr p1, v4

    shr-int/2addr p0, p1

    and-int/2addr p0, v3

    if-ne p0, v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    move v2, v1

    goto :goto_2

    .line 291
    :cond_2
    sget-object v4, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v5, p0, 0x2

    add-int/2addr v5, v3

    aget-char v3, v4, v5

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 293
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eq v3, p1, :cond_3

    move v2, v0

    goto :goto_2

    .line 297
    :cond_3
    :goto_1
    sget-object p1, Lcom/zte/mifavor/widget/ChineseCalendar;->bigLeapMonthYears:[I

    array-length p1, p1

    if-ge v0, p1, :cond_5

    .line 298
    sget-object p1, Lcom/zte/mifavor/widget/ChineseCalendar;->bigLeapMonthYears:[I

    aget p1, p1, v0

    if-ne p1, p0, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v2
.end method

.method public static daysInGregorianMonth(II)I
    .locals 2

    .line 215
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth:[C

    aget-char v0, v0, p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 216
    invoke-static {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public static getMonthLeapByYear(I)I
    .locals 1

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x0

    .line 268
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    aget-char p0, v0, p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    neg-int p0, p0

    return p0
.end method

.method private isChineseField(I)Z
    .locals 0

    const/16 p0, 0x378

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isChineseTermsField(I)Z
    .locals 0

    const/16 p0, 0x378

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x324
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isGregorianLeapYear(I)Z
    .locals 4

    .line 202
    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 205
    :goto_0
    rem-int/lit8 v3, p0, 0x64

    if-nez v3, :cond_1

    move v0, v2

    .line 208
    :cond_1
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static nextChineseMonth(II)I
    .locals 3

    .line 309
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-lez p1, :cond_0

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x0

    .line 312
    sget-object v2, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v1

    aget-char p0, v2, p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    if-ne p0, p1, :cond_0

    neg-int p0, p1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 p1, 0xd

    if-ne p0, p1, :cond_1

    move p0, v1

    :cond_1
    return p0
.end method

.method public static principleTerm(II)I
    .locals 3

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x76d

    if-lt p0, v1, :cond_4

    const/16 v2, 0x834

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    .line 252
    :goto_0
    sget-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermYear:[[C

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    aget-char v1, v1, v0

    if-lt p0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    sget-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermMap:[[C

    aget-object v1, v1, v2

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v2, p0, 0x4

    add-int/2addr v0, v2

    aget-char v0, v1, v0

    const/16 v1, 0xab

    const/16 v2, 0x15

    if-ne p0, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    move v0, v2

    :cond_2
    const/16 v1, 0xb5

    if-ne p0, v1, :cond_3

    const/4 p0, 0x5

    if-ne p1, p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public static sectionalTerm(II)I
    .locals 4

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x76d

    if-lt p0, v1, :cond_5

    const/16 v2, 0x834

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    .line 229
    :goto_0
    sget-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermYear:[[C

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    aget-char v1, v1, v0

    if-lt p0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    sget-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermMap:[[C

    aget-object v1, v1, v2

    const/4 v2, 0x4

    mul-int/2addr v0, v2

    rem-int/lit8 v3, p0, 0x4

    add-int/2addr v0, v3

    aget-char v0, v1, v0

    const/16 v1, 0x79

    const/4 v3, 0x5

    if-ne p0, v1, :cond_2

    if-ne p1, v2, :cond_2

    move v0, v3

    :cond_2
    const/16 v1, 0x84

    if-ne p0, v1, :cond_3

    if-ne p1, v2, :cond_3

    move v0, v3

    :cond_3
    const/16 v1, 0xc2

    const/4 v2, 0x6

    if-ne p0, v1, :cond_4

    if-ne p1, v2, :cond_4

    move v0, v2

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public add(II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 395
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 397
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 398
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 399
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 400
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 401
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 432
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0d\u652f\u6301\u7684field\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :pswitch_0
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {p1, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result p1

    move v2, p1

    move p1, v1

    :goto_0
    if-ge p1, p2, :cond_4

    .line 420
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 421
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le v3, v2, :cond_2

    .line 422
    iput v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 423
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 424
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v2, v0, :cond_1

    .line 425
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 427
    :cond_1
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_1
    move p1, v1

    :goto_1
    if-ge p1, p2, :cond_4

    .line 411
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 412
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v2, v0, :cond_3

    .line 413
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 407
    :pswitch_2
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 435
    :cond_4
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 436
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 437
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 438
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public computeChineseFields(III)Lcom/zte/mifavor/widget/ChineseCalendar;
    .locals 5

    .line 782
    new-instance v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    const/16 v1, 0x76d

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    const/16 v2, 0x834

    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    const/16 v2, 0x7d0

    const/16 v3, 0xb

    if-ge p1, v2, :cond_2

    const/16 v2, 0x76c

    .line 797
    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 798
    iput v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 799
    iput v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x7cf

    .line 805
    iput v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 806
    iput v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    const/16 v1, 0x19

    .line 807
    iput v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    move v1, v2

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v1, p1, :cond_4

    .line 813
    invoke-static {v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit16 v2, v2, 0x16e

    goto :goto_2

    :cond_3
    add-int/lit16 v2, v2, 0x16d

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    move v3, v2

    move v2, v1

    :goto_3
    if-ge v2, p2, :cond_5

    add-int/lit8 v4, v2, -0x1

    .line 821
    invoke-static {p1, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    sub-int/2addr p3, v1

    add-int/2addr v3, p3

    .line 826
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 828
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result p1

    .line 829
    :goto_4
    iget p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le p2, p1, :cond_7

    .line 830
    iget p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 831
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 832
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne p1, v1, :cond_6

    .line 833
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 835
    :cond_6
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result p1

    goto :goto_4

    :cond_7
    const/16 p1, 0x321

    .line 838
    iget p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    const/16 p1, 0x322

    .line 839
    iget p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    const/16 p1, 0x323

    .line 840
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    invoke-virtual {v0, p1, p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    return-object v0
.end method

.method public computeGregorianFields(III)Ljava/util/Calendar;
    .locals 9

    .line 661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x76c

    const/16 v2, 0x834

    if-ge p1, v1, :cond_0

    const/16 p1, 0x76b

    goto :goto_0

    :cond_0
    if-le p1, v2, :cond_1

    const/16 p1, 0x835

    :cond_1
    :goto_0
    const/16 v3, -0xc

    const/16 v4, 0xc

    if-ge p2, v3, :cond_2

    move p2, v3

    goto :goto_1

    :cond_2
    if-le p2, v4, :cond_3

    move p2, v4

    :cond_3
    :goto_1
    const/16 v3, 0x1e

    const/4 v5, 0x1

    if-ge p3, v5, :cond_4

    move p3, v5

    goto :goto_2

    :cond_4
    if-le p3, v3, :cond_5

    move p3, v3

    :cond_5
    :goto_2
    const-string v3, "wweer"

    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chinese: y:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  m:   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "     d:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v3, p1, 0x2710

    .line 677
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v3, v6

    add-int/2addr v3, p3

    const v6, 0x121ef17

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-ge v3, v6, :cond_6

    const/16 p1, 0x76d

    .line 679
    invoke-virtual {p0, p1, v7, v5}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 680
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_5

    :cond_6
    const v6, 0x14073f1

    if-le v3, v6, :cond_7

    const/16 p1, 0xb

    const/16 p2, 0x1f

    .line 682
    invoke-virtual {p0, v2, p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 683
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_5

    .line 685
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v4, :cond_8

    move p2, v4

    .line 688
    :cond_8
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    if-nez v3, :cond_9

    neg-int p2, p2

    .line 691
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    :cond_9
    if-le p3, v3, :cond_a

    move p3, v3

    .line 696
    :cond_a
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p0, p1, v3, p3}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 697
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    .line 700
    :cond_b
    :goto_3
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    if-ne v3, p1, :cond_c

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-eq v3, p2, :cond_e

    .line 701
    :cond_c
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    if-lt v3, v1, :cond_e

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    if-le v3, v2, :cond_d

    goto :goto_4

    .line 704
    :cond_d
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v3, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    add-int/2addr v7, v3

    .line 705
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v3, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 706
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v3, v5, :cond_b

    .line 707
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    goto :goto_3

    .line 710
    :cond_e
    :goto_4
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int/2addr p3, p1

    add-int/2addr v7, p3

    .line 711
    invoke-super {p0, v8, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 714
    :goto_5
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result p1

    const/4 p2, 0x2

    .line 715
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result p3

    .line 716
    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result p0

    .line 719
    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 720
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 721
    invoke-virtual {v0, v8, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public get(I)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 356
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x378

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 389
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u652f\u6301\u7684field\u83b7\u53d6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :pswitch_0
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 p0, p0, -0x4

    rem-int/lit8 p0, p0, 0xc

    add-int/2addr p0, v1

    return p0

    .line 372
    :pswitch_1
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 p0, p0, -0x4

    rem-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v1

    return p0

    .line 370
    :pswitch_2
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTerm:I

    return p0

    .line 368
    :pswitch_3
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTerm:I

    return p0

    .line 366
    :pswitch_4
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    return p0

    .line 364
    :pswitch_5
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    return p0

    .line 362
    :pswitch_6
    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    return p0

    :cond_1
    const/4 p1, 0x5

    .line 378
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    const/16 v2, 0x324

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x323

    const/16 v5, 0x325

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    move v2, v5

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    if-ne p0, v1, :cond_4

    const/16 v2, 0x322

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getChinese(I)Ljava/lang/String;
    .locals 2

    .line 482
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x378

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    .line 510
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u652f\u6301\u7684field\u4e2d\u6587\u83b7\u53d6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 504
    :pswitch_0
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->animalNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 502
    :pswitch_1
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->branchNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 500
    :pswitch_2
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->stemNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 498
    :pswitch_3
    sget-object p1, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    aget-object p0, p1, p0

    return-object p0

    .line 496
    :pswitch_4
    sget-object p1, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    aget-object p0, p1, p0

    return-object p0

    .line 494
    :pswitch_5
    sget-object p1, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    aget-object p0, p1, p0

    return-object p0

    .line 489
    :pswitch_6
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-lez p1, :cond_0

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u6708"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u95f0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget p0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    neg-int p0, p0

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u6708"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 486
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x326

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x327

    .line 487
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 508
    :cond_1
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 506
    :cond_2
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChineseDateString()Ljava/lang/String;
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x321

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x322

    .line 531
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x323

    .line 532
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimpleChineseDateString()Ljava/lang/String;
    .locals 4

    .line 521
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x321

    .line 522
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x322

    .line 524
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x323

    .line 526
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimpleGregorianDateString()Ljava/lang/String;
    .locals 3

    .line 515
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    .line 516
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public roll(II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 443
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 445
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 446
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 447
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 448
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 449
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 472
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0d\u652f\u6301\u7684field\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :pswitch_0
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {p1, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result p1

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    .line 465
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 466
    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le v3, p1, :cond_1

    .line 467
    iput v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    move p1, v1

    :goto_1
    if-ge p1, p2, :cond_2

    .line 459
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 455
    :pswitch_2
    iget p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 475
    :cond_2
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 476
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 477
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 478
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public set(II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 326
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 328
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 340
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0d\u652f\u6301\u7684field\u8bbe\u7f6e\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :pswitch_0
    iput p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 334
    :pswitch_1
    iput p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    goto :goto_0

    .line 331
    :pswitch_2
    iput p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    :goto_0
    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    goto :goto_1

    .line 344
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 345
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 347
    :goto_1
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 348
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 349
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 536
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 537
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getSimpleGregorianDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x7

    .line 538
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " | [\u519c\u5386]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChineseDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x328

    .line 540
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\u5e74 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x324

    .line 541
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\u65e5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x325

    .line 543
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\u65e5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
