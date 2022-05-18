.class public Lcn/nubia/calendar/util/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field public static final mLeapMonthTable:[C

.field public static final mLunarMonthTable:[I

.field public static final mSolarLunarOffsetTable:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 7
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/calendar/util/Lunar;->mLunarMonthTable:[I

    .line 124
    const/16 v0, 0x4b

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/calendar/util/Lunar;->mLeapMonthTable:[C

    .line 142
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/calendar/util/Lunar;->mSolarLunarOffsetTable:[C

    return-void

    .line 7
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
        0x9370
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

    .line 124
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

    .line 142
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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDaysForLunar(II)I
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    const v5, 0x8000

    const/16 v2, 0x1e

    const/16 v1, 0x1d

    .line 208
    invoke-static {p0}, Lcn/nubia/calendar/util/Lunar;->getLeapMonth(I)I

    move-result v0

    .line 209
    .local v0, "leapMonth":I
    const/16 v3, 0xc

    if-le p1, v3, :cond_0

    add-int/lit8 v3, p1, -0xc

    if-ne v3, v0, :cond_1

    :cond_0
    if-gez p1, :cond_3

    .line 210
    :cond_1
    const/4 v1, -0x1

    .line 223
    :cond_2
    :goto_0
    return v1

    .line 212
    :cond_3
    add-int/lit8 v3, p1, -0xc

    if-ne v3, v0, :cond_4

    .line 213
    sget-object v3, Lcn/nubia/calendar/util/Lunar;->mLunarMonthTable:[I

    add-int/lit16 v4, p0, -0x76d

    aget v3, v3, v4

    shr-int v4, v5, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_4
    if-lez v0, :cond_5

    if-le p1, v0, :cond_5

    .line 219
    add-int/lit8 p1, p1, 0x1

    .line 220
    :cond_5
    sget-object v3, Lcn/nubia/calendar/util/Lunar;->mLunarMonthTable:[I

    add-int/lit16 v4, p0, -0x76d

    aget v3, v3, v4

    add-int/lit8 v4, p1, -0x1

    shr-int v4, v5, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v1, v2

    .line 223
    goto :goto_0
.end method

.method static getDaysForSolar(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 161
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

    .line 163
    :cond_0
    const/16 v0, 0x1f

    .line 172
    :goto_0
    return v0

    .line 164
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 165
    :cond_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 166
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 167
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_4

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_5

    :cond_4
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_6

    .line 168
    :cond_5
    const/16 v0, 0x1d

    goto :goto_0

    .line 170
    :cond_6
    const/16 v0, 0x1c

    goto :goto_0

    .line 172
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getLeapMonth(I)I
    .locals 3
    .param p0, "year"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "month":C
    const/16 v1, 0x76c

    if-le p0, v1, :cond_0

    const/16 v1, 0x803

    if-ge p0, v1, :cond_0

    .line 178
    sget-object v1, Lcn/nubia/calendar/util/Lunar;->mLeapMonthTable:[C

    add-int/lit16 v2, p0, -0x76d

    div-int/lit8 v2, v2, 0x2

    aget-char v0, v1, v2

    .line 183
    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_1

    .line 184
    and-int/lit8 v1, v0, 0xf

    .line 186
    :goto_0
    return v1

    .line 180
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 186
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method static getMaxDayForMonth(II)I
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "maxDay":I
    const/4 v2, 0x0

    .line 192
    .local v2, "tempDay":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Lunar;->getLeapMonth(I)I

    move-result v0

    .line 194
    .local v0, "leapMonth":I
    if-eq p1, v0, :cond_1

    .line 195
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v1

    .line 198
    add-int/lit8 v3, v0, 0xc

    invoke-static {p0, v3}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v2

    .line 199
    if-le v2, v1, :cond_0

    .line 200
    move v1, v2

    goto :goto_0
.end method

.method static getNewYearOffsetDays(IIIZ)I
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "secondMonth"    # Z

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "offsetDays":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Lunar;->getLeapMonth(I)I

    move-result v1

    .line 231
    .local v1, "leapMonth":I
    if-eqz p3, :cond_2

    .line 232
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_5

    .line 233
    if-eq v0, v1, :cond_0

    .line 234
    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 236
    :cond_0
    if-ne v0, v1, :cond_1

    .line 237
    invoke-static {p0, v1}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 232
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p1, :cond_5

    .line 242
    if-eq v0, v1, :cond_3

    .line 243
    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 245
    :cond_3
    if-ne v0, v1, :cond_4

    if-ge v1, p1, :cond_4

    .line 246
    invoke-static {p0, v1}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 247
    add-int/lit8 v3, v1, 0xc

    invoke-static {p0, v3}, Lcn/nubia/calendar/util/Lunar;->getDaysForLunar(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 241
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_5
    add-int/lit8 v3, p2, -0x1

    add-int/2addr v2, v3

    .line 253
    return v2
.end method

.method static getSolarDay(IIIZ)I
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "secondMonth"    # Z

    .prologue
    .line 335
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getNewYearOffsetDays(IIIZ)I

    move-result v5

    sget-object v6, Lcn/nubia/calendar/util/Lunar;->mSolarLunarOffsetTable:[C

    add-int/lit16 v7, p0, -0x76d

    aget-char v6, v6, v7

    add-int v0, v5, v6

    .line 338
    .local v0, "offsetDays":I
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_0

    rem-int/lit8 v5, p0, 0x64

    if-nez v5, :cond_1

    :cond_0
    rem-int/lit16 v5, p0, 0x190

    if-nez v5, :cond_2

    :cond_1
    const/16 v4, 0x16e

    .line 341
    .local v4, "yearDays":I
    :goto_0
    if-lt v0, v4, :cond_3

    .line 342
    add-int/lit8 v3, p0, 0x1

    .line 343
    .local v3, "solarYear":I
    sub-int/2addr v0, v4

    .line 347
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 348
    .local v1, "solarDay":I
    const/4 v2, 0x1

    .local v2, "solarMonth":I
    :goto_2
    if-ltz v0, :cond_4

    .line 349
    add-int/lit8 v1, v0, 0x1

    .line 350
    invoke-static {v3, v2}, Lcn/nubia/calendar/util/Lunar;->getDaysForSolar(II)I

    move-result v5

    sub-int/2addr v0, v5

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 338
    .end local v1    # "solarDay":I
    .end local v2    # "solarMonth":I
    .end local v3    # "solarYear":I
    .end local v4    # "yearDays":I
    :cond_2
    const/16 v4, 0x16d

    goto :goto_0

    .line 345
    .restart local v4    # "yearDays":I
    :cond_3
    move v3, p0

    .restart local v3    # "solarYear":I
    goto :goto_1

    .line 352
    .restart local v1    # "solarDay":I
    .restart local v2    # "solarMonth":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 354
    return v1
.end method

.method public static getSolarFromLunar(IIIZ)Ljava/lang/String;
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "secondMonth"    # Z

    .prologue
    .line 259
    const/16 v5, 0x7dd

    if-ne p0, v5, :cond_0

    const/4 v5, 0x5

    if-ne p1, v5, :cond_0

    .line 260
    add-int/lit8 p2, p2, -0x1

    .line 263
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getNewYearOffsetDays(IIIZ)I

    move-result v5

    sget-object v6, Lcn/nubia/calendar/util/Lunar;->mSolarLunarOffsetTable:[C

    add-int/lit16 v7, p0, -0x76d

    aget-char v6, v6, v7

    add-int v0, v5, v6

    .line 266
    .local v0, "offsetDays":I
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_1

    rem-int/lit8 v5, p0, 0x64

    if-nez v5, :cond_2

    :cond_1
    rem-int/lit16 v5, p0, 0x190

    if-nez v5, :cond_3

    :cond_2
    const/16 v4, 0x16e

    .line 269
    .local v4, "yearDays":I
    :goto_0
    if-lt v0, v4, :cond_4

    .line 270
    add-int/lit8 v3, p0, 0x1

    .line 271
    .local v3, "solarYear":I
    sub-int/2addr v0, v4

    .line 275
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 276
    .local v1, "solarDay":I
    const/4 v2, 0x1

    .local v2, "solarMonth":I
    :goto_2
    if-ltz v0, :cond_5

    .line 277
    add-int/lit8 v1, v0, 0x1

    .line 278
    invoke-static {v3, v2}, Lcn/nubia/calendar/util/Lunar;->getDaysForSolar(II)I

    move-result v5

    sub-int/2addr v0, v5

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 266
    .end local v1    # "solarDay":I
    .end local v2    # "solarMonth":I
    .end local v3    # "solarYear":I
    .end local v4    # "yearDays":I
    :cond_3
    const/16 v4, 0x16d

    goto :goto_0

    .line 273
    .restart local v4    # "yearDays":I
    :cond_4
    move v3, p0

    .restart local v3    # "solarYear":I
    goto :goto_1

    .line 280
    .restart local v1    # "solarDay":I
    .restart local v2    # "solarMonth":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static getSolarMonth(IIIZ)I
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "secondMonth"    # Z

    .prologue
    .line 311
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getNewYearOffsetDays(IIIZ)I

    move-result v5

    sget-object v6, Lcn/nubia/calendar/util/Lunar;->mSolarLunarOffsetTable:[C

    add-int/lit16 v7, p0, -0x76d

    aget-char v6, v6, v7

    add-int v0, v5, v6

    .line 314
    .local v0, "offsetDays":I
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_0

    rem-int/lit8 v5, p0, 0x64

    if-nez v5, :cond_1

    :cond_0
    rem-int/lit16 v5, p0, 0x190

    if-nez v5, :cond_2

    :cond_1
    const/16 v4, 0x16e

    .line 317
    .local v4, "yearDays":I
    :goto_0
    if-lt v0, v4, :cond_3

    .line 318
    add-int/lit8 v3, p0, 0x1

    .line 319
    .local v3, "solarYear":I
    sub-int/2addr v0, v4

    .line 323
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 324
    .local v1, "solarDay":I
    const/4 v2, 0x1

    .local v2, "solarMonth":I
    :goto_2
    if-ltz v0, :cond_4

    .line 325
    add-int/lit8 v1, v0, 0x1

    .line 326
    invoke-static {v3, v2}, Lcn/nubia/calendar/util/Lunar;->getDaysForSolar(II)I

    move-result v5

    sub-int/2addr v0, v5

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 314
    .end local v1    # "solarDay":I
    .end local v2    # "solarMonth":I
    .end local v3    # "solarYear":I
    .end local v4    # "yearDays":I
    :cond_2
    const/16 v4, 0x16d

    goto :goto_0

    .line 321
    .restart local v4    # "yearDays":I
    :cond_3
    move v3, p0

    .restart local v3    # "solarYear":I
    goto :goto_1

    .line 328
    .restart local v1    # "solarDay":I
    .restart local v2    # "solarMonth":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 330
    return v2
.end method

.method static getSolarYear(IIIZ)I
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "secondMonth"    # Z

    .prologue
    .line 287
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getNewYearOffsetDays(IIIZ)I

    move-result v5

    sget-object v6, Lcn/nubia/calendar/util/Lunar;->mSolarLunarOffsetTable:[C

    add-int/lit16 v7, p0, -0x76d

    aget-char v6, v6, v7

    add-int v0, v5, v6

    .line 290
    .local v0, "offsetDays":I
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_0

    rem-int/lit8 v5, p0, 0x64

    if-nez v5, :cond_1

    :cond_0
    rem-int/lit16 v5, p0, 0x190

    if-nez v5, :cond_2

    :cond_1
    const/16 v4, 0x16e

    .line 293
    .local v4, "yearDays":I
    :goto_0
    if-lt v0, v4, :cond_3

    .line 294
    add-int/lit8 v3, p0, 0x1

    .line 295
    .local v3, "solarYear":I
    sub-int/2addr v0, v4

    .line 299
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 300
    .local v1, "solarDay":I
    const/4 v2, 0x1

    .local v2, "solarMonth":I
    :goto_2
    if-ltz v0, :cond_4

    .line 301
    add-int/lit8 v1, v0, 0x1

    .line 302
    invoke-static {v3, v2}, Lcn/nubia/calendar/util/Lunar;->getDaysForSolar(II)I

    move-result v5

    sub-int/2addr v0, v5

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 290
    .end local v1    # "solarDay":I
    .end local v2    # "solarMonth":I
    .end local v3    # "solarYear":I
    .end local v4    # "yearDays":I
    :cond_2
    const/16 v4, 0x16d

    goto :goto_0

    .line 297
    .restart local v4    # "yearDays":I
    :cond_3
    move v3, p0

    .restart local v3    # "solarYear":I
    goto :goto_1

    .line 304
    .restart local v1    # "solarDay":I
    .restart local v2    # "solarMonth":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 306
    return v3
.end method

.method public static isComingForBritday(IIIZZ)Z
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "secondMonth"    # Z
    .param p4, "isSolar"    # Z

    .prologue
    .line 359
    const/4 v3, 0x0

    .line 360
    .local v3, "isBrithday":Z
    const/4 v7, 0x0

    .line 361
    .local v7, "yearSolar":I
    const/4 v5, 0x0

    .line 362
    .local v5, "monthSolar":I
    const/4 v2, 0x0

    .line 364
    .local v2, "daySolar":I
    const/4 v6, 0x0

    .line 365
    .local v6, "yearCurrent":I
    const/4 v4, 0x0

    .line 366
    .local v4, "monthCurrent":I
    const/4 v1, 0x0

    .line 368
    .local v1, "dayCurrent":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 369
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 370
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 371
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 373
    if-nez p4, :cond_2

    .line 374
    if-lez p0, :cond_1

    .line 375
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getSolarYear(IIIZ)I

    move-result v7

    .line 380
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getSolarMonth(IIIZ)I

    move-result v5

    .line 381
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getSolarDay(IIIZ)I

    move-result v2

    .line 392
    :goto_1
    add-int/lit8 v8, v7, -0x1

    if-lt v6, v8, :cond_10

    .line 393
    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    const/16 v8, 0xc

    if-ne v4, v8, :cond_5

    .line 394
    rsub-int/lit8 v8, v1, 0x1f

    add-int/2addr v8, v2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_4

    .line 395
    const/4 v3, 0x1

    .line 438
    :cond_0
    :goto_2
    return v3

    .line 377
    :cond_1
    move p0, v6

    .line 378
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendar/util/Lunar;->getSolarYear(IIIZ)I

    move-result v7

    goto :goto_0

    .line 383
    :cond_2
    if-lez p0, :cond_3

    .line 384
    move v7, p0

    .line 388
    :goto_3
    move v5, p1

    .line 389
    move v2, p2

    goto :goto_1

    .line 386
    :cond_3
    move v7, v6

    goto :goto_3

    .line 397
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 399
    :cond_5
    add-int/lit8 v8, v4, 0x1

    if-ne v8, v5, :cond_e

    .line 400
    const/4 v8, 0x2

    if-ne v4, v8, :cond_9

    .line 401
    invoke-static {v4}, Lcn/nubia/calendar/util/Lunar;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 402
    rsub-int/lit8 v8, v1, 0x1d

    add-int/2addr v8, v2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    .line 403
    const/4 v3, 0x1

    goto :goto_2

    .line 405
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 408
    :cond_7
    rsub-int/lit8 v8, v1, 0x1c

    add-int/2addr v8, v2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_8

    .line 409
    const/4 v3, 0x1

    goto :goto_2

    .line 411
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 414
    :cond_9
    const/4 v8, 0x4

    if-eq v4, v8, :cond_a

    const/4 v8, 0x6

    if-eq v4, v8, :cond_a

    const/16 v8, 0x9

    if-eq v4, v8, :cond_a

    const/16 v8, 0xb

    if-ne v4, v8, :cond_c

    .line 416
    :cond_a
    rsub-int/lit8 v8, v1, 0x1e

    add-int/2addr v8, v2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_b

    .line 417
    const/4 v3, 0x1

    goto :goto_2

    .line 419
    :cond_b
    const/4 v3, 0x0

    goto :goto_2

    .line 422
    :cond_c
    rsub-int/lit8 v8, v1, 0x1f

    add-int/2addr v8, v2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_d

    .line 423
    const/4 v3, 0x1

    goto :goto_2

    .line 425
    :cond_d
    const/4 v3, 0x0

    goto :goto_2

    .line 428
    :cond_e
    if-ne v4, v5, :cond_0

    .line 429
    sub-int v8, v2, v1

    if-ltz v8, :cond_f

    sub-int v8, v2, v1

    const/4 v9, 0x3

    if-ge v8, v9, :cond_f

    .line 430
    const/4 v3, 0x1

    goto :goto_2

    .line 432
    :cond_f
    const/4 v3, 0x0

    goto :goto_2

    .line 436
    :cond_10
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static isLeapYear(I)Z
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "isLeap":Z
    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    .line 444
    const/4 v0, 0x1

    .line 445
    :cond_0
    rem-int/lit8 v1, p0, 0x64

    if-nez v1, :cond_1

    .line 446
    const/4 v0, 0x0

    .line 447
    :cond_1
    rem-int/lit16 v1, p0, 0x190

    if-nez v1, :cond_2

    .line 448
    const/4 v0, 0x1

    .line 449
    :cond_2
    return v0
.end method
