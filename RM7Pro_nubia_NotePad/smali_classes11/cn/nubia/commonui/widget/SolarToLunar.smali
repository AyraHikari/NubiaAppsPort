.class public Lcn/nubia/commonui/widget/SolarToLunar;
.super Ljava/lang/Object;
.source "SolarToLunar.java"


# static fields
.field private static final LunarLeapMonthTable:[C

.field private static final LunarMonthDaysTable:[I

.field private static final SolarLunarOffsetTable:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 4
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/commonui/widget/SolarToLunar;->LunarMonthDaysTable:[I

    .line 23
    const/16 v0, 0x4b

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/commonui/widget/SolarToLunar;->LunarLeapMonthTable:[C

    .line 43
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/commonui/widget/SolarToLunar;->SolarLunarOffsetTable:[C

    return-void

    .line 4
    :array_0
    .array-data 4
        0x4ae0
        0xa570
        0x5268
        0xd260
        0xd950
        0x6aa8
        0x56a0
        0x9ad0
        0x4ae8
        0x4ae0
        0xa4d8
        0xa4d0
        0xd250
        0xd548
        0xb550
        0x56a0
        0x96d0
        0x95b0
        0x49b8
        0x49b0
        0xa4b0
        0xb258
        0x6a50
        0x6d40
        0xada8
        0x2b60
        0x9570
        0x4978
        0x4970
        0x64b0
        0xd4a0
        0xea50
        0x6d48
        0x5ad0
        0x2b60
        0x9370
        0x92e0
        0xc968
        0xc950
        0xd4a0
        0xda50
        0xb550
        0x56a0
        0xaad8
        0x25d0
        0x92d0
        0xc958
        0xa950
        0xb4a8
        0x6ca0
        0xb550
        0x55a8
        0x4da0
        0xa5b0
        0x52b8
        0x52b0
        0xa950
        0xe950
        0x6aa0
        0xad50
        0xab50
        0x4b60
        0xa570
        0xa570
        0x5260
        0xe930
        0xd950
        0x5aa8
        0x56a0
        0x96d0
        0x4ae8
        0x4ad0
        0xa4d0
        0xd268
        0xd250
        0xd528
        0xb540
        0xb6a0
        0x96d0
        0x95b0
        0x49b0
        0xa4b8
        0xa4b0
        0xb258
        0x6a50
        0x6d40
        0xada0
        0xab60
        0x9570
        0x4978
        0x4970
        0x64b0
        0x6a50
        0xea50
        0x6b28
        0x5ac0
        0xab60
        0x9368
        0x92e0
        0xc960
        0xd4a8
        0xd4a0
        0xda50
        0x5aa8
        0x56a0
        0xaad8
        0x25d0
        0x92d0
        0xc958
        0xa950
        0xb4a0
        0xb550
        0xb550
        0x55a8
        0x4ba0
        0xa5b0
        0x52b8
        0x52b0
        0xa930
        0x74a8
        0x6aa0
        0xad50
        0x4da8
        0x4b60
        0x9570
        0xa4e0
        0xd260
        0xe930
        0xd530
        0x5aa0
        0x6b50
        0x96d0
        0x4ae8
        0x4ad0
        0xa4d0
        0xd258
        0xd250
        0xd520
        0xdaa0
        0xb5a0
        0x56d0
        0x4ad8
        0x49b0
        0xa4b8
        0xa4b0
        0xaa50
        0xb528
        0x6d20
        0xada0
        0x55b0
    .end array-data

    .line 23
    :array_1
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

    .line 43
    nop

    :array_2
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
        0x21s
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
        0x16s
        0x28s
        0x1es
        0x31s
        0x26s
        0x1bs
        0x2es
        0x23s
        0x18s
        0x2as
        0x1fs
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
        0x26s
        0x1bs
        0x2ds
        0x22s
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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calendarSolarToLundar(III)Ljava/lang/String;
    .locals 10
    .param p0, "solarYear"    # I
    .param p1, "solarMonth"    # I
    .param p2, "solarDay"    # I

    .prologue
    const/16 v9, 0x9

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "isLeapMonth":Z
    invoke-static {p0, p1, p2}, Lcn/nubia/commonui/widget/SolarToLunar;->getSolarNewYearOffsetDays(III)I

    move-result v5

    .line 66
    .local v5, "offsetDays":I
    invoke-static {p0}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarLeapMonth(I)I

    move-result v0

    .line 67
    .local v0, "iLeapMonth":I
    sget-object v6, Lcn/nubia/commonui/widget/SolarToLunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v7, p0, -0x76d

    aget-char v6, v6, v7

    if-ge v5, v6, :cond_3

    .line 68
    add-int/lit8 v4, p0, -0x1

    .line 69
    .local v4, "lunarYear":I
    sget-object v6, Lcn/nubia/commonui/widget/SolarToLunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v7, p0, -0x76d

    aget-char v6, v6, v7

    sub-int v5, v6, v5

    .line 70
    move v2, v5

    .line 72
    .local v2, "lunarDay":I
    const/16 v3, 0xc

    .local v3, "lunarMonth":I
    :goto_0
    invoke-static {v4, v3}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 73
    move v2, v5

    .line 74
    invoke-static {v4, v3}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v6

    sub-int/2addr v5, v6

    .line 72
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 76
    :cond_0
    if-nez v2, :cond_2

    .line 77
    const/4 v2, 0x1

    .line 103
    :goto_1
    const/16 v6, 0xc

    if-le v3, v6, :cond_1

    .line 104
    const/4 v1, 0x1

    .line 105
    add-int/lit8 v3, v3, -0xc

    .line 107
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    const-string v6, "0"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-le v3, v9, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-le v2, v9, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 79
    :cond_2
    invoke-static {v4, v3}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v2, v6, 0x1

    goto :goto_1

    .line 82
    .end local v2    # "lunarDay":I
    .end local v3    # "lunarMonth":I
    .end local v4    # "lunarYear":I
    :cond_3
    move v4, p0

    .line 83
    .restart local v4    # "lunarYear":I
    sget-object v6, Lcn/nubia/commonui/widget/SolarToLunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v7, p0, -0x76d

    aget-char v6, v6, v7

    sub-int/2addr v5, v6

    .line 84
    add-int/lit8 v2, v5, 0x1

    .line 86
    .restart local v2    # "lunarDay":I
    const/4 v3, 0x1

    .restart local v3    # "lunarMonth":I
    :goto_5
    if-ltz v5, :cond_4

    .line 87
    add-int/lit8 v2, v5, 0x1

    .line 88
    invoke-static {v4, v3}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v6

    sub-int/2addr v5, v6

    .line 89
    if-ne v0, v3, :cond_6

    if-ltz v5, :cond_6

    .line 90
    add-int/lit8 v2, v5, 0x1

    .line 91
    add-int/lit8 v6, v3, 0xc

    invoke-static {v4, v6}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v6

    sub-int/2addr v5, v6

    .line 92
    if-gtz v5, :cond_5

    .line 93
    add-int/lit8 v3, v3, 0xd

    .line 100
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 95
    :cond_5
    if-nez v5, :cond_6

    .line 96
    const/4 v2, 0x1

    .line 86
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 107
    :cond_7
    const-string v6, ""

    goto :goto_2

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method static getLunarLeapMonth(I)I
    .locals 3
    .param p0, "solarYear"    # I

    .prologue
    .line 125
    sget-object v1, Lcn/nubia/commonui/widget/SolarToLunar;->LunarLeapMonthTable:[C

    add-int/lit16 v2, p0, -0x76d

    div-int/lit8 v2, v2, 0x2

    aget-char v0, v1, v2

    .line 127
    .local v0, "month":C
    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_0

    .line 128
    and-int/lit8 v1, v0, 0xf

    .line 131
    :goto_0
    return v1

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method static getLunarMonthDays(II)I
    .locals 6
    .param p0, "solarYear"    # I
    .param p1, "solarMonth"    # I

    .prologue
    const v5, 0x8000

    const/16 v2, 0x1e

    const/16 v1, 0x1d

    .line 136
    invoke-static {p0}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarLeapMonth(I)I

    move-result v0

    .line 138
    .local v0, "leapMonth":I
    const/16 v3, 0xc

    if-le p1, v3, :cond_0

    add-int/lit8 v3, p1, -0xc

    if-ne v3, v0, :cond_1

    :cond_0
    if-gez p1, :cond_3

    .line 139
    :cond_1
    const/4 v1, -0x1

    .line 157
    :cond_2
    :goto_0
    return v1

    .line 142
    :cond_3
    add-int/lit8 v3, p1, -0xc

    if-ne v3, v0, :cond_4

    if-lez v0, :cond_4

    .line 143
    sget-object v3, Lcn/nubia/commonui/widget/SolarToLunar;->LunarMonthDaysTable:[I

    add-int/lit16 v4, p0, -0x76d

    aget v3, v3, v4

    shr-int v4, v5, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v1, v2

    .line 146
    goto :goto_0

    .line 150
    :cond_4
    if-lez v0, :cond_5

    if-le p1, v0, :cond_5

    .line 151
    add-int/lit8 p1, p1, 0x1

    .line 154
    :cond_5
    sget-object v3, Lcn/nubia/commonui/widget/SolarToLunar;->LunarMonthDaysTable:[I

    add-int/lit16 v4, p0, -0x76d

    aget v3, v3, v4

    add-int/lit8 v4, p1, -0x1

    shr-int v4, v5, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v1, v2

    .line 157
    goto :goto_0
.end method

.method static getSolarNewYearOffsetDays(III)I
    .locals 3
    .param p0, "solarYear"    # I
    .param p1, "solarMonth"    # I
    .param p2, "solarDay"    # I

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "offsetDays":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 118
    invoke-static {p0, v0}, Lcn/nubia/commonui/widget/SolarToLunar;->getSolarYearMonthDays(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    add-int/lit8 v2, p2, -0x1

    add-int/2addr v1, v2

    .line 121
    return v1
.end method

.method static getSolarYearMonthDays(II)I
    .locals 1
    .param p0, "solarYear"    # I
    .param p1, "solarMonth"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 168
    :cond_0
    const/16 v0, 0x1f

    .line 179
    :goto_0
    return v0

    .line 169
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 171
    :cond_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 173
    invoke-static {p0}, Lcn/nubia/commonui/widget/SolarToLunar;->isSolarLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    const/16 v0, 0x1d

    goto :goto_0

    .line 176
    :cond_4
    const/16 v0, 0x1c

    goto :goto_0

    .line 179
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSolarLeapYear(I)Z
    .locals 1
    .param p0, "solarYear"    # I

    .prologue
    .line 184
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
