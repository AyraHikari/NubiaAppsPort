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

    .prologue
    const/16 v3, 0xc

    const/16 v8, 0x9

    const/4 v4, 0x1

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static {p0, p1, p2}, Lcn/nubia/commonui/widget/SolarToLunar;->getSolarNewYearOffsetDays(III)I

    move-result v0

    .line 66
    invoke-static {p0}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarLeapMonth(I)I

    move-result v6

    .line 67
    sget-object v1, Lcn/nubia/commonui/widget/SolarToLunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v2, p0, -0x76d

    aget-char v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 68
    add-int/lit8 v6, p0, -0x1

    .line 69
    sget-object v1, Lcn/nubia/commonui/widget/SolarToLunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v2, p0, -0x76d

    aget-char v1, v1, v2

    sub-int v0, v1, v0

    move v2, v3

    move v1, v0

    .line 72
    :goto_0
    invoke-static {v6, v2}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v7

    if-le v0, v7, :cond_0

    .line 74
    invoke-static {v6, v2}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v1

    sub-int v1, v0, v1

    .line 72
    add-int/lit8 v2, v2, -0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0

    .line 76
    :cond_0
    if-nez v1, :cond_1

    move p0, v6

    move v0, v2

    move v2, v4

    .line 103
    :goto_1
    if-le v0, v3, :cond_8

    .line 105
    add-int/lit8 v0, v0, -0xc

    move v1, v0

    move v0, v4

    .line 107
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v4, :cond_5

    const-string v0, "0"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le v1, v8, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-le v2, v8, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    invoke-static {v6, v2}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v1, v0, 0x1

    move p0, v6

    move v0, v2

    move v2, v1

    goto :goto_1

    .line 83
    :cond_2
    sget-object v1, Lcn/nubia/commonui/widget/SolarToLunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v2, p0, -0x76d

    aget-char v1, v1, v2

    sub-int/2addr v0, v1

    .line 84
    add-int/lit8 v1, v0, 0x1

    move v2, v4

    .line 86
    :goto_6
    if-ltz v0, :cond_9

    .line 87
    add-int/lit8 v1, v0, 0x1

    .line 88
    invoke-static {p0, v2}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v7

    sub-int/2addr v0, v7

    .line 89
    if-ne v6, v2, :cond_4

    if-ltz v0, :cond_4

    .line 90
    add-int/lit8 v1, v0, 0x1

    .line 91
    add-int/lit8 v7, v2, 0xc

    invoke-static {p0, v7}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v7

    sub-int/2addr v0, v7

    .line 92
    if-gtz v0, :cond_3

    .line 93
    add-int/lit8 v0, v2, 0xd

    .line 100
    :goto_7
    add-int/lit8 v2, v0, -0x1

    move v0, v2

    move v2, v1

    goto/16 :goto_1

    .line 95
    :cond_3
    if-nez v0, :cond_4

    move v1, v4

    .line 86
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 107
    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    move v1, v0

    move v0, v5

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto :goto_7
.end method

.method static getLunarLeapMonth(I)I
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcn/nubia/commonui/widget/SolarToLunar;->LunarLeapMonthTable:[C

    add-int/lit16 v1, p0, -0x76d

    div-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    .line 127
    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_0

    .line 128
    and-int/lit8 v0, v0, 0xf

    .line 131
    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method static getLunarMonthDays(II)I
    .locals 6

    .prologue
    const v5, 0x8000

    const/16 v1, 0x1e

    const/16 v0, 0x1d

    .line 136
    invoke-static {p0}, Lcn/nubia/commonui/widget/SolarToLunar;->getLunarLeapMonth(I)I

    move-result v2

    .line 138
    const/16 v3, 0xc

    if-le p1, v3, :cond_0

    add-int/lit8 v3, p1, -0xc

    if-ne v3, v2, :cond_1

    :cond_0
    if-gez p1, :cond_3

    .line 139
    :cond_1
    const/4 v0, -0x1

    .line 157
    :cond_2
    :goto_0
    return v0

    .line 142
    :cond_3
    add-int/lit8 v3, p1, -0xc

    if-ne v3, v2, :cond_4

    if-lez v2, :cond_4

    .line 143
    sget-object v3, Lcn/nubia/commonui/widget/SolarToLunar;->LunarMonthDaysTable:[I

    add-int/lit16 v4, p0, -0x76d

    aget v3, v3, v4

    shr-int v2, v5, v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 150
    :cond_4
    if-lez v2, :cond_5

    if-le p1, v2, :cond_5

    .line 151
    add-int/lit8 p1, p1, 0x1

    .line 154
    :cond_5
    sget-object v2, Lcn/nubia/commonui/widget/SolarToLunar;->LunarMonthDaysTable:[I

    add-int/lit16 v3, p0, -0x76d

    aget v2, v2, v3

    add-int/lit8 v3, p1, -0x1

    shr-int v3, v5, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v0, v1

    .line 157
    goto :goto_0
.end method

.method static getSolarNewYearOffsetDays(III)I
    .locals 3

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x1

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
    add-int/lit8 v0, p2, -0x1

    add-int/2addr v0, v1

    .line 121
    return v0
.end method

.method static getSolarYearMonthDays(II)I
    .locals 1

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
