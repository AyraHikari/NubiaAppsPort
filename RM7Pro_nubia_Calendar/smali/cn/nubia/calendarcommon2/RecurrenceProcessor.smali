.class public Lcn/nubia/calendarcommon2/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I

.field private static final MAX_ALLOWED_ITERATIONS:I = 0x7d0

.field private static final SPEW:Z = true

.field private static final TAG:Ljava/lang/String; = "RecurrenceProcessor"

.field private static final USE_BYLIST:I = 0x1

.field private static final USE_ITERATOR:I


# instance fields
.field private mDays:Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1453
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1455
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1453
    nop

    :array_0
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

    .line 1455
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb4
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 33
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 34
    new-instance v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mDays:Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;

    .line 40
    const-string v0, "RecurrenceProcessor"

    const-string v1, "RecurrenceProcessor constrcut...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private static filter(Lcn/nubia/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I
    .locals 10
    .param p0, "r"    # Lcn/nubia/calendarcommon2/EventRecurrence;
    .param p1, "iterator"    # Landroid/text/format/Time;

    .prologue
    .line 201
    iget v3, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    .line 203
    .local v3, "freq":I
    const/4 v6, 0x6

    if-lt v6, v3, :cond_0

    .line 205
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_0

    .line 206
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    .line 208
    .local v2, "found":Z
    if-nez v2, :cond_0

    .line 209
    const/4 v6, 0x1

    .line 333
    .end local v2    # "found":Z
    :goto_0
    return v6

    .line 213
    :cond_0
    const/4 v6, 0x5

    if-lt v6, v3, :cond_1

    .line 216
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_1

    .line 217
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byweeknoCount:I

    .line 218
    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    .line 219
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 217
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 220
    .restart local v2    # "found":Z
    if-nez v2, :cond_1

    .line 221
    const/4 v6, 0x2

    goto :goto_0

    .line 225
    .end local v2    # "found":Z
    :cond_1
    const/4 v6, 0x4

    if-lt v6, v3, :cond_6

    .line 227
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_2

    .line 228
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    .line 229
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 228
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 230
    .restart local v2    # "found":Z
    if-nez v2, :cond_2

    .line 231
    const/4 v6, 0x3

    goto :goto_0

    .line 235
    .end local v2    # "found":Z
    :cond_2
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_3

    .line 236
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    .line 238
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 236
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 239
    .restart local v2    # "found":Z
    if-nez v2, :cond_3

    .line 240
    const/4 v6, 0x4

    goto :goto_0

    .line 245
    .end local v2    # "found":Z
    :cond_3
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthdayCount:I

    if-lez v6, :cond_4

    .line 246
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthday:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    .line 248
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 246
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 249
    .restart local v2    # "found":Z
    if-nez v2, :cond_4

    .line 250
    const/4 v6, 0x4

    goto :goto_0

    .line 254
    .end local v2    # "found":Z
    :cond_4
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    if-lez v6, :cond_5

    .line 255
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryearday:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    .line 257
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 255
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 258
    .restart local v2    # "found":Z
    if-nez v2, :cond_5

    .line 259
    const/4 v6, 0x4

    goto :goto_0

    .line 266
    .end local v2    # "found":Z
    :cond_5
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_6

    .line 267
    iget-object v1, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    .line 268
    .local v1, "a":[I
    iget v0, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 269
    .local v0, "N":I
    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcn/nubia/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    .line 270
    .local v5, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_8

    .line 271
    aget v6, v1, v4

    if-ne v6, v5, :cond_7

    .line 278
    .end local v0    # "N":I
    .end local v1    # "a":[I
    .end local v4    # "i":I
    .end local v5    # "v":I
    :cond_6
    const/4 v6, 0x3

    if-lt v6, v3, :cond_9

    .line 280
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byhour:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    .line 282
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 280
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 283
    .restart local v2    # "found":Z
    if-nez v2, :cond_9

    .line 284
    const/4 v6, 0x6

    goto/16 :goto_0

    .line 270
    .end local v2    # "found":Z
    .restart local v0    # "N":I
    .restart local v1    # "a":[I
    .restart local v4    # "i":I
    .restart local v5    # "v":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 275
    :cond_8
    const/4 v6, 0x5

    goto/16 :goto_0

    .line 287
    .end local v0    # "N":I
    .end local v1    # "a":[I
    .end local v4    # "i":I
    .end local v5    # "v":I
    :cond_9
    const/4 v6, 0x2

    if-lt v6, v3, :cond_a

    .line 289
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byminute:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    .line 291
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 289
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 292
    .restart local v2    # "found":Z
    if-nez v2, :cond_a

    .line 293
    const/4 v6, 0x7

    goto/16 :goto_0

    .line 296
    .end local v2    # "found":Z
    :cond_a
    const/4 v6, 0x1

    if-lt v6, v3, :cond_b

    .line 298
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    .line 300
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 298
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 301
    .restart local v2    # "found":Z
    if-nez v2, :cond_b

    .line 302
    const/16 v6, 0x8

    goto/16 :goto_0

    .line 306
    .end local v2    # "found":Z
    :cond_b
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bysetposCount:I

    if-lez v6, :cond_c

    .line 309
    const/4 v6, 0x6

    if-ne v3, v6, :cond_f

    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_f

    .line 311
    iget v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    add-int/lit8 v4, v6, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_e

    .line 312
    iget-object v6, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v6, v6, v4

    if-eqz v6, :cond_d

    .line 313
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 314
    const-string v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v4    # "i":I
    :cond_c
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 311
    .restart local v4    # "i":I
    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 319
    :cond_e
    invoke-static {p0, p1}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->filterMonthlySetPos(Lcn/nubia/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 321
    const/16 v6, 0x9

    goto/16 :goto_0

    .line 324
    .end local v4    # "i":I
    :cond_f
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 325
    const-string v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static filterMonthlySetPos(Lcn/nubia/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z
    .locals 13
    .param p0, "r"    # Lcn/nubia/calendarcommon2/EventRecurrence;
    .param p1, "instance"    # Landroid/text/format/Time;

    .prologue
    const/4 v10, 0x1

    .line 352
    iget v11, p1, Landroid/text/format/Time;->weekDay:I

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x24

    rem-int/lit8 v5, v11, 0x7

    .line 358
    .local v5, "dotw":I
    const/4 v0, 0x0

    .line 359
    .local v0, "bydayMask":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v11, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v6, v11, :cond_0

    .line 360
    iget-object v11, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    aget v11, v11, v6

    or-int/2addr v0, v11

    .line 359
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    :cond_0
    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 368
    .local v8, "maxDay":I
    new-array v2, v8, [I

    .line 369
    .local v2, "daySet":[I
    const/4 v3, 0x0

    .line 371
    .local v3, "daySetLength":I
    const/4 v9, 0x1

    .local v9, "md":I
    move v4, v3

    .end local v3    # "daySetLength":I
    .local v4, "daySetLength":I
    :goto_1
    if-gt v9, v8, :cond_2

    .line 374
    const/high16 v11, 0x10000

    shl-int v1, v11, v5

    .line 375
    .local v1, "dayBit":I
    and-int v11, v0, v1

    if-eqz v11, :cond_8

    .line 376
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "daySetLength":I
    .restart local v3    # "daySetLength":I
    aput v9, v2, v4

    .line 379
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 380
    const/4 v11, 0x7

    if-ne v5, v11, :cond_1

    .line 381
    const/4 v5, 0x0

    .line 371
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3    # "daySetLength":I
    .restart local v4    # "daySetLength":I
    goto :goto_1

    .line 388
    .end local v1    # "dayBit":I
    :cond_2
    iget v11, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bysetposCount:I

    add-int/lit8 v6, v11, -0x1

    :goto_3
    if-ltz v6, :cond_7

    .line 389
    iget-object v11, p0, Lcn/nubia/calendarcommon2/EventRecurrence;->bysetpos:[I

    aget v7, v11, v6

    .line 390
    .local v7, "index":I
    if-lez v7, :cond_5

    .line 391
    if-le v7, v4, :cond_4

    .line 388
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 394
    :cond_4
    add-int/lit8 v11, v7, -0x1

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    .line 410
    .end local v7    # "index":I
    :goto_4
    return v10

    .line 397
    .restart local v7    # "index":I
    :cond_5
    if-gez v7, :cond_6

    .line 398
    add-int v11, v4, v7

    if-ltz v11, :cond_3

    .line 401
    add-int v11, v4, v7

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    goto :goto_4

    .line 406
    :cond_6
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "invalid bysetpos value"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 410
    .end local v7    # "index":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .restart local v1    # "dayBit":I
    :cond_8
    move v3, v4

    .end local v4    # "daySetLength":I
    .restart local v3    # "daySetLength":I
    goto :goto_2
.end method

.method static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 1440
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "N"    # I
    .param p2, "v"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 157
    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 158
    const/4 v1, 0x1

    .line 161
    :goto_1
    return v1

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static listContains([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "N"    # I
    .param p2, "v"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v2, 0x1

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 175
    aget v1, p0, v0

    .line 176
    .local v1, "w":I
    if-lez v1, :cond_1

    .line 177
    if-ne v1, p2, :cond_2

    .line 187
    .end local v1    # "w":I
    :cond_0
    :goto_1
    return v2

    .line 181
    .restart local v1    # "w":I
    :cond_1
    add-int/2addr p3, v1

    .line 182
    if-eq p3, p2, :cond_0

    .line 174
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "w":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    const/16 v1, 0x1c

    .line 1466
    sget-object v2, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    .line 1467
    .local v0, "n":I
    if-eq v0, v1, :cond_0

    .line 1470
    .end local v0    # "n":I
    :goto_0
    return v0

    .restart local v0    # "n":I
    :cond_0
    invoke-static {p0}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1d

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4
    .param p0, "normalized"    # Landroid/text/format/Time;

    .prologue
    .line 1521
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 3
    .param p0, "date"    # Landroid/text/format/Time;
    .param p1, "val"    # J

    .prologue
    .line 1527
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1528
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1529
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1530
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1531
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1532
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1533
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 15
    .param p0, "date"    # Landroid/text/format/Time;

    .prologue
    const/16 v14, 0xc

    .line 1357
    iget v9, p0, Landroid/text/format/Time;->second:I

    .line 1358
    .local v9, "second":I
    iget v5, p0, Landroid/text/format/Time;->minute:I

    .line 1359
    .local v5, "minute":I
    iget v4, p0, Landroid/text/format/Time;->hour:I

    .line 1360
    .local v4, "hour":I
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1361
    .local v7, "monthDay":I
    iget v6, p0, Landroid/text/format/Time;->month:I

    .line 1362
    .local v6, "month":I
    iget v10, p0, Landroid/text/format/Time;->year:I

    .line 1364
    .local v10, "year":I
    if-gez v9, :cond_0

    add-int/lit8 v13, v9, -0x3b

    :goto_0
    div-int/lit8 v2, v13, 0x3c

    .line 1365
    .local v2, "addMinutes":I
    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    .line 1366
    add-int/2addr v5, v2

    .line 1367
    if-gez v5, :cond_1

    add-int/lit8 v13, v5, -0x3b

    :goto_1
    div-int/lit8 v1, v13, 0x3c

    .line 1368
    .local v1, "addHours":I
    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    .line 1369
    add-int/2addr v4, v1

    .line 1370
    if-gez v4, :cond_2

    add-int/lit8 v13, v4, -0x17

    :goto_2
    div-int/lit8 v0, v13, 0x18

    .line 1371
    .local v0, "addDays":I
    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    .line 1372
    add-int/2addr v7, v0

    .line 1377
    :goto_3
    if-gtz v7, :cond_4

    .line 1385
    const/4 v13, 0x1

    if-le v6, v13, :cond_3

    invoke-static {v10}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    .line 1386
    .local v3, "days":I
    :goto_4
    add-int/2addr v7, v3

    .line 1387
    add-int/lit8 v10, v10, -0x1

    .line 1388
    goto :goto_3

    .end local v0    # "addDays":I
    .end local v1    # "addHours":I
    .end local v2    # "addMinutes":I
    .end local v3    # "days":I
    :cond_0
    move v13, v9

    .line 1364
    goto :goto_0

    .restart local v2    # "addMinutes":I
    :cond_1
    move v13, v5

    .line 1367
    goto :goto_1

    .restart local v1    # "addHours":I
    :cond_2
    move v13, v4

    .line 1370
    goto :goto_2

    .line 1385
    .restart local v0    # "addDays":I
    :cond_3
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_4

    .line 1390
    :cond_4
    if-gez v6, :cond_7

    .line 1391
    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    .line 1392
    .local v12, "years":I
    add-int/2addr v10, v12

    .line 1393
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    .line 1403
    .end local v12    # "years":I
    :cond_5
    :goto_5
    if-nez v6, :cond_6

    .line 1404
    invoke-static {v10}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    .line 1405
    .local v11, "yearLength":I
    if-le v7, v11, :cond_6

    .line 1406
    add-int/lit8 v10, v10, 0x1

    .line 1407
    sub-int/2addr v7, v11

    .line 1410
    .end local v11    # "yearLength":I
    :cond_6
    invoke-static {v10, v6}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    .line 1411
    .local v8, "monthLength":I
    if-le v7, v8, :cond_8

    .line 1412
    sub-int/2addr v7, v8

    .line 1413
    add-int/lit8 v6, v6, 0x1

    .line 1414
    if-lt v6, v14, :cond_5

    .line 1415
    add-int/lit8 v6, v6, -0xc

    .line 1416
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1394
    .end local v8    # "monthLength":I
    :cond_7
    if-lt v6, v14, :cond_5

    .line 1395
    div-int/lit8 v12, v6, 0xc

    .line 1396
    .restart local v12    # "years":I
    add-int/2addr v10, v12

    .line 1397
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_5

    .line 1423
    .end local v12    # "years":I
    .restart local v8    # "monthLength":I
    :cond_8
    iput v9, p0, Landroid/text/format/Time;->second:I

    .line 1424
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 1425
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1426
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1427
    iput v6, p0, Landroid/text/format/Time;->month:I

    .line 1428
    iput v10, p0, Landroid/text/format/Time;->year:I

    .line 1429
    invoke-static {v10, v6, v7}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    .line 1430
    invoke-static {v10, v6, v7}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    .line 1431
    return-void
.end method

.method private static useBYX(III)Z
    .locals 1
    .param p0, "freq"    # I
    .param p1, "freqConstant"    # I
    .param p2, "count"    # I

    .prologue
    .line 436
    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 1483
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1484
    add-int/lit8 p1, p1, 0xc

    .line 1485
    add-int/lit8 p0, p0, -0x1

    .line 1487
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 1499
    sget-object v1, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 1500
    .local v0, "yearDay":I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    add-int/lit8 v0, v0, 0x1

    .line 1503
    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 1450
    invoke-static {p0}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 59
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "r"    # Lcn/nubia/calendarcommon2/EventRecurrence;
    .param p3, "rangeStartDateValue"    # J
    .param p5, "rangeEndDateValue"    # J
    .param p7, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcn/nubia/calendarcommon2/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 934
    .local p8, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 935
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    .line 936
    .local v18, "dtstartDateValue":J
    const/4 v15, 0x0

    .line 947
    .local v15, "count":I
    if-eqz p7, :cond_0

    cmp-long v56, v18, p3

    if-ltz v56, :cond_0

    cmp-long v56, v18, p5

    if-gez v56, :cond_0

    .line 949
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 950
    add-int/lit8 v15, v15, 0x1

    .line 953
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v31, v0

    .line 954
    .local v31, "iterator":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v45, v0

    .line 955
    .local v45, "until":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    .line 956
    .local v42, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 957
    .local v4, "generated":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mDays:Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;

    move-object/from16 v17, v0

    .line 961
    .local v17, "days":Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->setRecurrence(Lcn/nubia/calendarcommon2/EventRecurrence;)V

    .line 962
    const-wide v56, 0x7fffffffffffffffL

    cmp-long v56, p5, v56

    if-nez v56, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v56, v0

    if-nez v56, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    move/from16 v56, v0

    if-nez v56, :cond_1

    .line 963
    new-instance v56, Lcn/nubia/calendarcommon2/DateException;

    const-string v57, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v56 .. v57}, Lcn/nubia/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v56
    :try_end_0
    .catch Lcn/nubia/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1333
    :catch_0
    move-exception v20

    .line 1334
    .local v20, "e":Lcn/nubia/calendarcommon2/DateException;
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "DateException with r="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    throw v20

    .line 969
    .end local v20    # "e":Lcn/nubia/calendarcommon2/DateException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->interval:I

    move/from16 v26, v0

    .line 970
    .local v26, "freqAmount":I
    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    move/from16 v25, v0

    .line 971
    .local v25, "freq":I
    packed-switch v25, :pswitch_data_0

    .line 999
    new-instance v56, Lcn/nubia/calendarcommon2/DateException;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "bad freq="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Lcn/nubia/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v56
    :try_end_1
    .catch Lcn/nubia/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1338
    .end local v25    # "freq":I
    .end local v26    # "freqAmount":I
    :catch_1
    move-exception v44

    .line 1339
    .local v44, "t":Ljava/lang/RuntimeException;
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "RuntimeException with r="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    throw v44

    .line 974
    .end local v44    # "t":Ljava/lang/RuntimeException;
    .restart local v25    # "freq":I
    .restart local v26    # "freqAmount":I
    :pswitch_0
    const/16 v27, 0x1

    .line 1001
    .local v27, "freqField":I
    :cond_2
    :goto_0
    if-gtz v26, :cond_3

    .line 1002
    const/16 v26, 0x1

    .line 1005
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v13, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthCount:I

    .line 1006
    .local v13, "bymonthCount":I
    const/16 v56, 0x6

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v13}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 1007
    .local v52, "usebymonth":Z
    const/16 v56, 0x5

    move/from16 v0, v25

    move/from16 v1, v56

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    if-gtz v56, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    move/from16 v56, v0

    if-gtz v56, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthdayCount:I

    move/from16 v56, v0

    if-gtz v56, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    move/from16 v56, v0

    if-lez v56, :cond_7

    :cond_4
    const/16 v49, 0x1

    .line 1013
    .local v49, "useDays":Z
    :goto_1
    const-string v56, "TAG"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "useDays:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " r.bylunaryeardayCount:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    move-object/from16 v0, p2

    iget v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->byhourCount:I

    .line 1015
    .local v11, "byhourCount":I
    const/16 v56, 0x3

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v11}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 1016
    .local v50, "usebyhour":Z
    move-object/from16 v0, p2

    iget v12, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->byminuteCount:I

    .line 1017
    .local v12, "byminuteCount":I
    const/16 v56, 0x2

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v12}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 1018
    .local v51, "usebyminute":Z
    move-object/from16 v0, p2

    iget v14, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bysecondCount:I

    .line 1019
    .local v14, "bysecondCount":I
    const/16 v56, 0x1

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v14}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    .line 1022
    .local v53, "usebysecond":Z
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1023
    const/16 v56, 0x5

    move/from16 v0, v27

    move/from16 v1, v56

    if-ne v0, v1, :cond_5

    .line 1024
    if-eqz v49, :cond_5

    .line 1030
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1035
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_8

    .line 1037
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 1041
    .local v48, "untilStr":Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v56

    const/16 v57, 0xf

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_6

    .line 1042
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const/16 v57, 0x5a

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1045
    :cond_6
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1050
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1051
    invoke-static/range {v45 .. v45}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v46

    .line 1056
    .end local v48    # "untilStr":Ljava/lang/String;
    .local v46, "untilDateValue":J
    :goto_2
    const/16 v56, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 1057
    const/16 v56, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1061
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "expand called w/ rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/16 v21, 0x0

    .line 1067
    .local v21, "eventEnded":Z
    const/16 v22, 0x0

    .local v22, "failsafe":I
    move/from16 v23, v22

    .line 1070
    .end local v22    # "failsafe":I
    .local v23, "failsafe":I
    :goto_3
    const/16 v39, 0x0

    .line 1071
    .local v39, "monthIndex":I
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "failsafe":I
    .restart local v22    # "failsafe":I
    const/16 v56, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v56

    if-le v0, v1, :cond_9

    .line 1072
    new-instance v56, Lcn/nubia/calendarcommon2/DateException;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Recurrence processing stuck: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Lcn/nubia/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v56

    .line 977
    .end local v11    # "byhourCount":I
    .end local v12    # "byminuteCount":I
    .end local v13    # "bymonthCount":I
    .end local v14    # "bysecondCount":I
    .end local v21    # "eventEnded":Z
    .end local v22    # "failsafe":I
    .end local v27    # "freqField":I
    .end local v39    # "monthIndex":I
    .end local v46    # "untilDateValue":J
    .end local v49    # "useDays":Z
    .end local v50    # "usebyhour":Z
    .end local v51    # "usebyminute":Z
    .end local v52    # "usebymonth":Z
    .end local v53    # "usebysecond":Z
    :pswitch_1
    const/16 v27, 0x2

    .line 978
    .restart local v27    # "freqField":I
    goto/16 :goto_0

    .line 980
    .end local v27    # "freqField":I
    :pswitch_2
    const/16 v27, 0x3

    .line 981
    .restart local v27    # "freqField":I
    goto/16 :goto_0

    .line 983
    .end local v27    # "freqField":I
    :pswitch_3
    const/16 v27, 0x4

    .line 984
    .restart local v27    # "freqField":I
    goto/16 :goto_0

    .line 986
    .end local v27    # "freqField":I
    :pswitch_4
    const/16 v27, 0x4

    .line 987
    .restart local v27    # "freqField":I
    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->interval:I

    move/from16 v56, v0

    mul-int/lit8 v26, v56, 0x7

    .line 988
    if-gtz v26, :cond_2

    .line 989
    const/16 v26, 0x7

    goto/16 :goto_0

    .line 993
    .end local v27    # "freqField":I
    :pswitch_5
    const/16 v27, 0x5

    .line 994
    .restart local v27    # "freqField":I
    goto/16 :goto_0

    .line 996
    .end local v27    # "freqField":I
    :pswitch_6
    const/16 v27, 0x6

    .line 997
    .restart local v27    # "freqField":I
    goto/16 :goto_0

    .line 1007
    .restart local v13    # "bymonthCount":I
    .restart local v52    # "usebymonth":Z
    :cond_7
    const/16 v49, 0x0

    goto/16 :goto_1

    .line 1053
    .restart local v11    # "byhourCount":I
    .restart local v12    # "byminuteCount":I
    .restart local v14    # "bysecondCount":I
    .restart local v49    # "useDays":Z
    .restart local v50    # "usebyhour":Z
    .restart local v51    # "usebyminute":Z
    .restart local v53    # "usebysecond":Z
    :cond_8
    const-wide v46, 0x7fffffffffffffffL

    .restart local v46    # "untilDateValue":J
    goto/16 :goto_2

    .line 1075
    .restart local v21    # "eventEnded":Z
    .restart local v22    # "failsafe":I
    .restart local v39    # "monthIndex":I
    :cond_9
    invoke-static/range {v31 .. v31}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1077
    move-object/from16 v0, v31

    iget v10, v0, Landroid/text/format/Time;->year:I

    .line 1078
    .local v10, "iteratorYear":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    add-int/lit8 v35, v56, 0x1

    .line 1079
    .local v35, "iteratorMonth":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v32, v0

    .line 1080
    .local v32, "iteratorDay":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v33, v0

    .line 1081
    .local v33, "iteratorHour":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v34, v0

    .line 1082
    .local v34, "iteratorMinute":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v36, v0

    .line 1085
    .local v36, "iteratorSecond":I
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1087
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "year="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    iget v0, v4, Landroid/text/format/Time;->year:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_a
    if-eqz v52, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonth:[I

    move-object/from16 v56, v0

    aget v9, v56, v39

    .line 1093
    .local v9, "month":I
    :goto_4
    add-int/lit8 v9, v9, -0x1

    .line 1094
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "  month="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/16 v16, 0x1

    .line 1097
    .local v16, "dayIndex":I
    const/16 v37, 0x0

    .line 1102
    .local v37, "lastDayToExamine":I
    if-eqz v49, :cond_b

    .line 1106
    const/16 v56, 0x5

    move/from16 v0, v25

    move/from16 v1, v56

    if-ne v0, v1, :cond_f

    .line 1124
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v56, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->wkst:I

    move/from16 v57, v0

    .line 1125
    invoke-static/range {v57 .. v57}, Lcn/nubia/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v57

    sub-int v56, v56, v57

    add-int/lit8 v56, v56, 0x7

    rem-int/lit8 v55, v56, 0x7

    .line 1126
    .local v55, "weekStartAdj":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    sub-int v16, v56, v55

    .line 1127
    add-int/lit8 v37, v16, 0x6

    .line 1132
    .end local v55    # "weekStartAdj":I
    :goto_5
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "dayIndex="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " lastDayToExamine="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " days="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_b
    if-eqz v49, :cond_1b

    .line 1141
    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    move/from16 v56, v0

    if-lez v56, :cond_17

    .line 1142
    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->getLunarYearDay(Landroid/text/format/Time;I)Z

    move-result v56

    if-nez v56, :cond_10

    .line 1143
    add-int/lit8 v16, v16, 0x1

    .line 1278
    :goto_6
    if-eqz v49, :cond_c

    move/from16 v0, v16

    move/from16 v1, v37

    if-le v0, v1, :cond_b

    .line 1279
    :cond_c
    add-int/lit8 v39, v39, 0x1

    .line 1280
    if-eqz v52, :cond_d

    move/from16 v0, v39

    if-lt v0, v13, :cond_a

    .line 1286
    :cond_d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v41, v0

    .line 1287
    .local v41, "oldDay":I
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1288
    const/16 v40, 0x1

    .line 1290
    .local v40, "n":I
    :goto_7
    mul-int v54, v26, v40

    .line 1291
    .local v54, "value":I
    packed-switch v27, :pswitch_data_1

    .line 1317
    new-instance v56, Ljava/lang/RuntimeException;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "bad field="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v56

    .end local v9    # "month":I
    .end local v16    # "dayIndex":I
    .end local v37    # "lastDayToExamine":I
    .end local v40    # "n":I
    .end local v41    # "oldDay":I
    .end local v54    # "value":I
    :cond_e
    move/from16 v9, v35

    .line 1090
    goto/16 :goto_4

    .line 1129
    .restart local v9    # "month":I
    .restart local v16    # "dayIndex":I
    .restart local v37    # "lastDayToExamine":I
    :cond_f
    const/16 v56, 0x4

    .line 1130
    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v37

    goto/16 :goto_5

    .line 1146
    :cond_10
    move/from16 v8, v16

    .line 1169
    .local v8, "day":I
    :goto_8
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "    day="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/16 v30, 0x0

    .line 1174
    .local v30, "hourIndex":I
    :cond_11
    if-eqz v50, :cond_1c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->byhour:[I

    move-object/from16 v56, v0

    aget v7, v56, v30

    .line 1177
    .local v7, "hour":I
    :goto_9
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "      hour="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " usebyhour="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/16 v38, 0x0

    .line 1182
    .local v38, "minuteIndex":I
    :cond_12
    if-eqz v51, :cond_1d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->byminute:[I

    move-object/from16 v56, v0

    aget v6, v56, v38

    .line 1185
    .local v6, "minute":I
    :goto_a
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "        minute="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/16 v43, 0x0

    .line 1190
    .local v43, "secondIndex":I
    :cond_13
    if-eqz v53, :cond_1e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bysecond:[I

    move-object/from16 v56, v0

    aget v5, v56, v43

    .line 1193
    .local v5, "second":I
    :goto_b
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "          second="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-virtual/range {v4 .. v10}, Landroid/text/format/Time;->set(IIIIII)V

    .line 1199
    invoke-static {v4}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1201
    invoke-static {v4}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v28

    .line 1205
    .local v28, "genDateValue":J
    cmp-long v56, v28, v18

    if-ltz v56, :cond_22

    .line 1210
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->filter(Lcn/nubia/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I

    move-result v24

    .line 1211
    .local v24, "filtered":I
    if-nez v24, :cond_22

    .line 1227
    cmp-long v56, v18, v28

    if-nez v56, :cond_14

    if-eqz p7, :cond_14

    cmp-long v56, v18, p3

    if-ltz v56, :cond_14

    cmp-long v56, v18, p5

    if-ltz v56, :cond_15

    .line 1231
    :cond_14
    add-int/lit8 v15, v15, 0x1

    .line 1235
    :cond_15
    cmp-long v56, v28, v46

    if-lez v56, :cond_1f

    .line 1237
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "stopping b/c until="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " generated="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_16
    :goto_c
    return-void

    .line 1148
    .end local v5    # "second":I
    .end local v6    # "minute":I
    .end local v7    # "hour":I
    .end local v8    # "day":I
    .end local v24    # "filtered":I
    .end local v28    # "genDateValue":J
    .end local v30    # "hourIndex":I
    .end local v38    # "minuteIndex":I
    .end local v43    # "secondIndex":I
    :cond_17
    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthdayCount:I

    move/from16 v56, v0

    if-lez v56, :cond_19

    .line 1149
    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->getLunarMonthDay(Landroid/text/format/Time;I)Z

    move-result v56

    if-nez v56, :cond_18

    .line 1150
    add-int/lit8 v16, v16, 0x1

    .line 1151
    goto/16 :goto_6

    .line 1153
    :cond_18
    move/from16 v8, v16

    .restart local v8    # "day":I
    goto/16 :goto_8

    .line 1157
    .end local v8    # "day":I
    :cond_19
    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v56

    if-nez v56, :cond_1a

    .line 1158
    add-int/lit8 v16, v16, 0x1

    .line 1159
    goto/16 :goto_6

    .line 1161
    :cond_1a
    move/from16 v8, v16

    .restart local v8    # "day":I
    goto/16 :goto_8

    .line 1167
    .end local v8    # "day":I
    :cond_1b
    move/from16 v8, v32

    .restart local v8    # "day":I
    goto/16 :goto_8

    .restart local v30    # "hourIndex":I
    :cond_1c
    move/from16 v7, v33

    .line 1174
    goto/16 :goto_9

    .restart local v7    # "hour":I
    .restart local v38    # "minuteIndex":I
    :cond_1d
    move/from16 v6, v34

    .line 1182
    goto/16 :goto_a

    .restart local v6    # "minute":I
    .restart local v43    # "secondIndex":I
    :cond_1e
    move/from16 v5, v36

    .line 1190
    goto/16 :goto_b

    .line 1245
    .restart local v5    # "second":I
    .restart local v24    # "filtered":I
    .restart local v28    # "genDateValue":J
    :cond_1f
    cmp-long v56, v28, p5

    if-ltz v56, :cond_20

    .line 1247
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "stopping b/c rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " generated="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1254
    :cond_20
    cmp-long v56, v28, p3

    if-ltz v56, :cond_21

    .line 1256
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "adding date="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " filtered="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    if-eqz p7, :cond_26

    .line 1259
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1265
    :cond_21
    :goto_d
    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    move/from16 v56, v0

    if-lez v56, :cond_22

    move-object/from16 v0, p2

    iget v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    move/from16 v56, v0

    move/from16 v0, v56

    if-eq v0, v15, :cond_16

    .line 1271
    .end local v24    # "filtered":I
    :cond_22
    add-int/lit8 v43, v43, 0x1

    .line 1272
    if-eqz v53, :cond_23

    move/from16 v0, v43

    if-lt v0, v14, :cond_13

    .line 1273
    :cond_23
    add-int/lit8 v38, v38, 0x1

    .line 1274
    if-eqz v51, :cond_24

    move/from16 v0, v38

    if-lt v0, v12, :cond_12

    .line 1275
    :cond_24
    add-int/lit8 v30, v30, 0x1

    .line 1276
    if-eqz v50, :cond_25

    move/from16 v0, v30

    if-lt v0, v11, :cond_11

    .line 1277
    :cond_25
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 1261
    .restart local v24    # "filtered":I
    :cond_26
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1293
    .end local v5    # "second":I
    .end local v6    # "minute":I
    .end local v7    # "hour":I
    .end local v8    # "day":I
    .end local v24    # "filtered":I
    .end local v28    # "genDateValue":J
    .end local v30    # "hourIndex":I
    .end local v38    # "minuteIndex":I
    .end local v43    # "secondIndex":I
    .restart local v40    # "n":I
    .restart local v41    # "oldDay":I
    .restart local v54    # "value":I
    :pswitch_7
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1320
    :goto_e
    invoke-static/range {v31 .. v31}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1321
    const/16 v56, 0x6

    move/from16 v0, v27

    move/from16 v1, v56

    if-eq v0, v1, :cond_28

    const/16 v56, 0x5

    move/from16 v0, v27

    move/from16 v1, v56

    if-eq v0, v1, :cond_28

    :cond_27
    move/from16 v23, v22

    .line 1330
    .end local v22    # "failsafe":I
    .restart local v23    # "failsafe":I
    goto/16 :goto_3

    .line 1296
    .end local v23    # "failsafe":I
    .restart local v22    # "failsafe":I
    :pswitch_8
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_e

    .line 1299
    :pswitch_9
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_e

    .line 1302
    :pswitch_a
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_e

    .line 1305
    :pswitch_b
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_e

    .line 1308
    :pswitch_c
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_e

    .line 1311
    :pswitch_d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_e

    .line 1314
    :pswitch_e
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_e

    .line 1324
    :cond_28
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    move/from16 v0, v56

    move/from16 v1, v41

    if-eq v0, v1, :cond_27

    .line 1327
    add-int/lit8 v40, v40, 0x1

    .line 1328
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcn/nubia/calendarcommon2/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1291
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/RecurrenceSet;JJ)[J
    .locals 31
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "recur"    # Lcn/nubia/calendarcommon2/RecurrenceSet;
    .param p3, "rangeStartMillis"    # J
    .param p5, "rangeEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 835
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 836
    .local v28, "timezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v3}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v6

    .line 847
    .local v6, "rangeStartDateValue":J
    const-wide/16 v16, -0x1

    cmp-long v3, p5, v16

    if-eqz v3, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v3}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v8

    .line 854
    .local v8, "rangeEndDateValue":J
    :goto_0
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 856
    .local v11, "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    if-eqz v3, :cond_1

    .line 857
    move-object/from16 v0, p2

    iget-object v14, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    array-length v0, v14

    move/from16 v16, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget-object v5, v14, v13

    .line 858
    .local v5, "rrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 857
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_1

    .line 851
    .end local v5    # "rrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    .end local v8    # "rangeEndDateValue":J
    .end local v11    # "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    .restart local v8    # "rangeEndDateValue":J
    goto :goto_0

    .line 862
    .restart local v11    # "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v3, :cond_2

    .line 863
    move-object/from16 v0, p2

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    array-length v10, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_2

    aget-wide v22, v4, v3

    .line 866
    .local v22, "dt":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v13}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 868
    .local v24, "dtvalue":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 863
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 871
    .end local v22    # "dt":J
    .end local v24    # "dtvalue":J
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    if-eqz v3, :cond_3

    .line 872
    move-object/from16 v0, p2

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    array-length v10, v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_3

    aget-object v15, v4, v3

    .line 873
    .local v15, "exrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v21, v11

    invoke-virtual/range {v13 .. v21}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 877
    .end local v15    # "exrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exdates:[J

    if-eqz v3, :cond_4

    .line 878
    move-object/from16 v0, p2

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exdates:[J

    array-length v10, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_4

    aget-wide v22, v4, v3

    .line 881
    .restart local v22    # "dt":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 882
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v13}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 883
    .restart local v24    # "dtvalue":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 878
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 886
    .end local v22    # "dt":J
    .end local v24    # "dtvalue":J
    :cond_4
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 889
    const/4 v3, 0x0

    new-array v2, v3, [J

    .line 903
    :cond_5
    return-object v2

    .line 896
    :cond_6
    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v27

    .line 897
    .local v27, "len":I
    move/from16 v0, v27

    new-array v2, v0, [J

    .line 898
    .local v2, "dates":[J
    const/4 v12, 0x0

    .line 899
    .local v12, "i":I
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 900
    .local v29, "val":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 901
    add-int/lit8 v26, v12, 0x1

    .end local v12    # "i":I
    .local v26, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    aput-wide v16, v2, v12

    move/from16 v12, v26

    .line 902
    .end local v26    # "i":I
    .restart local v12    # "i":I
    goto :goto_5
.end method

.method generateByList(III)I
    .locals 1
    .param p1, "count"    # I
    .param p2, "freq"    # I
    .param p3, "byFreq"    # I

    .prologue
    const/4 v0, 0x0

    .line 423
    if-lt p3, p2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    if-eqz p1, :cond_0

    .line 429
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcn/nubia/calendarcommon2/RecurrenceSet;)J
    .locals 18
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "maxtime"    # Landroid/text/format/Time;
    .param p3, "recur"    # Lcn/nubia/calendarcommon2/RecurrenceSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 87
    const-wide/16 v14, -0x1

    .line 88
    .local v14, "lastTime":J
    const/4 v12, 0x0

    .line 92
    .local v12, "hasCount":Z
    move-object/from16 v0, p3

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    if-eqz v3, :cond_5

    .line 93
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v13, v4, v3

    .line 94
    .local v13, "rrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    iget v6, v13, Lcn/nubia/calendarcommon2/EventRecurrence;->count:I

    if-eqz v6, :cond_1

    .line 95
    const/4 v12, 0x1

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v6, v13, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    iget-object v7, v13, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 99
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 100
    .local v16, "untilTime":J
    cmp-long v6, v16, v14

    if-lez v6, :cond_0

    .line 101
    move-wide/from16 v14, v16

    goto :goto_1

    .line 105
    .end local v13    # "rrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    .end local v16    # "untilTime":J
    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v3, v14, v4

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v3, :cond_4

    .line 106
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_4

    aget-wide v10, v4, v3

    .line 107
    .local v10, "dt":J
    cmp-long v6, v10, v14

    if-lez v6, :cond_3

    .line 108
    move-wide v14, v10

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 115
    .end local v10    # "dt":J
    :cond_4
    const-wide/16 v4, -0x1

    cmp-long v3, v14, v4

    if-eqz v3, :cond_8

    if-nez v12, :cond_8

    move-wide v4, v14

    .line 146
    :goto_3
    return-wide v4

    .line 118
    :cond_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v3, :cond_8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    if-nez v3, :cond_8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exdates:[J

    if-nez v3, :cond_8

    .line 121
    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    array-length v5, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    aget-wide v10, v4, v3

    .line 122
    .restart local v10    # "dt":J
    cmp-long v6, v10, v14

    if-lez v6, :cond_6

    .line 123
    move-wide v14, v10

    .line 121
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v10    # "dt":J
    :cond_7
    move-wide v4, v14

    .line 126
    goto :goto_3

    .line 131
    :cond_8
    if-nez v12, :cond_9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    if-nez v3, :cond_9

    if-eqz p2, :cond_c

    .line 134
    :cond_9
    const/4 v3, 0x0

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    if-eqz p2, :cond_a

    const/4 v3, 0x0

    .line 137
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    .line 134
    invoke-virtual/range {v3 .. v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/RecurrenceSet;JJ)[J

    move-result-object v2

    .line 141
    .local v2, "dates":[J
    array-length v3, v2

    if-nez v3, :cond_b

    .line 142
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 137
    .end local v2    # "dates":[J
    :cond_a
    const-wide/16 v8, -0x1

    goto :goto_5

    .line 144
    .restart local v2    # "dates":[J
    :cond_b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v2, v3

    goto :goto_3

    .line 146
    .end local v2    # "dates":[J
    :cond_c
    const-wide/16 v4, -0x1

    goto :goto_3
.end method

.method public getLastOccurence(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/RecurrenceSet;)J
    .locals 2
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "recur"    # Lcn/nubia/calendarcommon2/RecurrenceSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcn/nubia/calendarcommon2/RecurrenceSet;)J

    move-result-wide v0

    return-wide v0
.end method
