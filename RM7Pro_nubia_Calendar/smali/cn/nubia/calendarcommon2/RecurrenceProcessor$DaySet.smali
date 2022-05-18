.class public Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/RecurrenceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySet"
.end annotation


# instance fields
.field private mDays:I

.field private mMonth:I

.field private mR:Lcn/nubia/calendarcommon2/EventRecurrence;

.field private mTime:Landroid/text/format/Time;

.field private mYear:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "zulu"    # Z

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 444
    return-void
.end method

.method private static generateDaysList(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/EventRecurrence;)I
    .locals 18
    .param p0, "generated"    # Landroid/text/format/Time;
    .param p1, "r"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    .line 651
    const/4 v7, 0x0

    .line 664
    .local v7, "days":I
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v11

    .line 667
    .local v11, "lastDayThisMonth":I
    move-object/from16 v0, p1

    iget v6, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 668
    .local v6, "count":I
    if-lez v6, :cond_7

    .line 670
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/format/Time;->monthDay:I

    .line 671
    .local v10, "j":I
    :goto_0
    const/16 v15, 0x8

    if-lt v10, v15, :cond_0

    .line 672
    add-int/lit8 v10, v10, -0x7

    goto :goto_0

    .line 674
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/format/Time;->weekDay:I

    .line 675
    .local v8, "first":I
    if-lt v8, v10, :cond_2

    .line 676
    sub-int v15, v8, v10

    add-int/lit8 v8, v15, 0x1

    .line 685
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    .line 686
    .local v1, "byday":[I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 687
    .local v2, "bydayNum":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v6, :cond_7

    .line 688
    aget v14, v2, v9

    .line 689
    .local v14, "v":I
    aget v15, v1, v9

    invoke-static {v15}, Lcn/nubia/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v15

    sub-int/2addr v15, v8

    add-int/lit8 v10, v15, 0x1

    .line 690
    if-gtz v10, :cond_1

    .line 691
    add-int/lit8 v10, v10, 0x7

    .line 693
    :cond_1
    if-nez v14, :cond_3

    .line 695
    :goto_3
    if-gt v10, v11, :cond_4

    .line 696
    const-string v15, "RecurrenceProcessor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setting "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for rule "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget v17, v1, v9

    .line 697
    invoke-static/range {v17 .. v17}, Lcn/nubia/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 696
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v15, 0x1

    shl-int/2addr v15, v10

    or-int/2addr v7, v15

    .line 695
    add-int/lit8 v10, v10, 0x7

    goto :goto_3

    .line 678
    .end local v1    # "byday":[I
    .end local v2    # "bydayNum":[I
    .end local v9    # "i":I
    .end local v14    # "v":I
    :cond_2
    sub-int v15, v8, v10

    add-int/lit8 v8, v15, 0x8

    goto :goto_1

    .line 701
    .restart local v1    # "byday":[I
    .restart local v2    # "bydayNum":[I
    .restart local v9    # "i":I
    .restart local v14    # "v":I
    :cond_3
    if-lez v14, :cond_5

    .line 704
    add-int/lit8 v15, v14, -0x1

    mul-int/lit8 v15, v15, 0x7

    add-int/2addr v10, v15

    .line 705
    if-gt v10, v11, :cond_4

    .line 706
    const-string v15, "RecurrenceProcessor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setting "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for rule "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget v17, v1, v9

    .line 707
    invoke-static/range {v17 .. v17}, Lcn/nubia/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 706
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v15, 0x1

    shl-int/2addr v15, v10

    or-int/2addr v7, v15

    .line 687
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 715
    :cond_5
    :goto_5
    if-gt v10, v11, :cond_6

    add-int/lit8 v10, v10, 0x7

    goto :goto_5

    .line 721
    :cond_6
    mul-int/lit8 v15, v14, 0x7

    add-int/2addr v10, v15

    .line 722
    const/4 v15, 0x1

    if-lt v10, v15, :cond_4

    .line 723
    const-string v15, "RecurrenceProcessor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setting "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for rule "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget v17, v1, v9

    .line 724
    invoke-static/range {v17 .. v17}, Lcn/nubia/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 723
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v15, 0x1

    shl-int/2addr v15, v10

    or-int/2addr v7, v15

    goto :goto_4

    .line 735
    .end local v1    # "byday":[I
    .end local v2    # "bydayNum":[I
    .end local v8    # "first":I
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v14    # "v":I
    :cond_7
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-le v15, v0, :cond_13

    .line 736
    move-object/from16 v0, p1

    iget v6, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 738
    move-object/from16 v0, p1

    iget v12, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthdayCount:I

    .line 739
    .local v12, "lunarcount":I
    move-object/from16 v0, p1

    iget v13, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    .line 741
    .local v13, "lunaryeardaycount":I
    if-eqz v6, :cond_e

    .line 742
    move-object/from16 v0, p1

    iget-object v5, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthday:[I

    .line 743
    .local v5, "bymonthday":[I
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v15, :cond_a

    .line 744
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    if-ge v9, v6, :cond_e

    .line 745
    aget v14, v5, v9

    .line 746
    .restart local v14    # "v":I
    if-ltz v14, :cond_9

    .line 747
    const/4 v15, 0x1

    shl-int/2addr v15, v14

    or-int/2addr v7, v15

    .line 744
    :cond_8
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 749
    :cond_9
    add-int v15, v11, v14

    add-int/lit8 v10, v15, 0x1

    .line 750
    .restart local v10    # "j":I
    const/4 v15, 0x1

    if-lt v10, v15, :cond_8

    if-gt v10, v11, :cond_8

    .line 751
    const/4 v15, 0x1

    shl-int/2addr v15, v10

    or-int/2addr v7, v15

    goto :goto_7

    .line 758
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v14    # "v":I
    :cond_a
    const/4 v10, 0x1

    .restart local v10    # "j":I
    :goto_8
    if-gt v10, v11, :cond_e

    .line 760
    const/4 v15, 0x1

    shl-int/2addr v15, v10

    and-int/2addr v15, v7

    if-eqz v15, :cond_b

    .line 761
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    if-ge v9, v6, :cond_d

    .line 762
    aget v15, v5, v9

    if-ne v15, v10, :cond_c

    .line 758
    .end local v9    # "i":I
    :cond_b
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 761
    .restart local v9    # "i":I
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 766
    :cond_d
    const/4 v15, 0x1

    shl-int/2addr v15, v10

    xor-int/lit8 v15, v15, -0x1

    and-int/2addr v7, v15

    goto :goto_a

    .line 773
    .end local v5    # "bymonthday":[I
    .end local v9    # "i":I
    .end local v10    # "j":I
    :cond_e
    if-eqz v12, :cond_11

    .line 774
    move-object/from16 v0, p1

    iget-object v3, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunarmonthday:[I

    .line 775
    .local v3, "bylunarmonthday":[I
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v15, :cond_11

    .line 776
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    if-ge v9, v12, :cond_11

    .line 777
    aget v14, v3, v9

    .line 778
    .restart local v14    # "v":I
    if-ltz v14, :cond_10

    .line 779
    const/4 v15, 0x1

    shl-int/2addr v15, v14

    or-int/2addr v7, v15

    .line 776
    :cond_f
    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 781
    :cond_10
    add-int v15, v11, v14

    add-int/lit8 v10, v15, 0x1

    .line 782
    .restart local v10    # "j":I
    const/4 v15, 0x1

    if-lt v10, v15, :cond_f

    if-gt v10, v11, :cond_f

    .line 783
    const/4 v15, 0x1

    shl-int/2addr v15, v10

    or-int/2addr v7, v15

    goto :goto_c

    .line 790
    .end local v3    # "bylunarmonthday":[I
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v14    # "v":I
    :cond_11
    if-eqz v13, :cond_13

    .line 791
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryearday:[I

    .line 792
    .local v4, "bylunaryearday":[I
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v15, :cond_13

    .line 793
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d
    if-ge v9, v13, :cond_13

    .line 794
    aget v14, v4, v9

    .line 795
    .restart local v14    # "v":I
    if-ltz v14, :cond_12

    .line 796
    move v7, v14

    .line 793
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 804
    .end local v4    # "bylunaryearday":[I
    .end local v9    # "i":I
    .end local v12    # "lunarcount":I
    .end local v13    # "lunaryeardaycount":I
    .end local v14    # "v":I
    :cond_13
    return v7
.end method


# virtual methods
.method get(Landroid/text/format/Time;I)Z
    .locals 7
    .param p1, "iterator"    # Landroid/text/format/Time;
    .param p2, "day"    # I

    .prologue
    const/4 v3, 0x1

    .line 455
    iget v1, p1, Landroid/text/format/Time;->year:I

    .line 456
    .local v1, "realYear":I
    iget v0, p1, Landroid/text/format/Time;->month:I

    .line 458
    .local v0, "realMonth":I
    const/4 v2, 0x0

    .line 461
    .local v2, "t":Landroid/text/format/Time;
    const-string v4, "RecurrenceProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get called with iterator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " day="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-lt p2, v3, :cond_0

    const/16 v4, 0x1c

    if-le p2, v4, :cond_1

    .line 468
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 469
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 470
    invoke-static {v2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 471
    iget v1, v2, Landroid/text/format/Time;->year:I

    .line 472
    iget v0, v2, Landroid/text/format/Time;->month:I

    .line 473
    iget p2, v2, Landroid/text/format/Time;->monthDay:I

    .line 475
    const-string v4, "RecurrenceProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normalized t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    iget v4, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v1, v4, :cond_2

    iget v4, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v0, v4, :cond_4

    .line 487
    :cond_2
    if-nez v2, :cond_3

    .line 488
    iget-object v2, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 489
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 490
    invoke-static {v2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 492
    const-string v4, "RecurrenceProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " realMonth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMonth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_3
    iput v1, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    .line 499
    iput v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    .line 500
    iget-object v4, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mR:Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-static {v2, v4}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/EventRecurrence;)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    .line 502
    const-string v4, "RecurrenceProcessor"

    const-string v5, "generated days list"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_4
    iget v4, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    shl-int v5, v3, p2

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    :goto_0
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getLunarMonthDay(Landroid/text/format/Time;I)Z
    .locals 8
    .param p1, "iterator"    # Landroid/text/format/Time;
    .param p2, "day"    # I

    .prologue
    const/4 v4, 0x1

    .line 510
    iget v1, p1, Landroid/text/format/Time;->year:I

    .line 511
    .local v1, "realYear":I
    iget v0, p1, Landroid/text/format/Time;->month:I

    .line 513
    .local v0, "realMonth":I
    const/4 v2, 0x0

    .line 516
    .local v2, "t":Landroid/text/format/Time;
    const-string v5, "RecurrenceProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get called with iterator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " day="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-lt p2, v4, :cond_0

    const/16 v5, 0x1c

    if-le p2, v5, :cond_1

    .line 523
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 524
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 525
    invoke-static {v2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 526
    iget v1, v2, Landroid/text/format/Time;->year:I

    .line 527
    iget v0, v2, Landroid/text/format/Time;->month:I

    .line 528
    iget p2, v2, Landroid/text/format/Time;->monthDay:I

    .line 530
    const-string v5, "RecurrenceProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "normalized t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1
    iget v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v1, v5, :cond_2

    iget v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v0, v5, :cond_4

    .line 542
    :cond_2
    if-nez v2, :cond_3

    .line 543
    iget-object v2, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 544
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 545
    invoke-static {v2}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 547
    const-string v5, "RecurrenceProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " realMonth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMonth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_3
    iput v1, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    .line 554
    iput v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    .line 555
    iget-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mR:Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-static {v2, v5}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/EventRecurrence;)I

    move-result v5

    iput v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    .line 557
    const-string v5, "RecurrenceProcessor"

    const-string v6, "generated days list"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_4
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 561
    .local v3, "time":Landroid/text/format/Time;
    iget v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    iget v6, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    invoke-virtual {v3, p2, v5, v6}, Landroid/text/format/Time;->set(III)V

    .line 562
    new-instance v5, Lcn/nubia/calendarcommon2/ChineseCalendar;

    invoke-direct {v5, v3}, Lcn/nubia/calendarcommon2/ChineseCalendar;-><init>(Landroid/text/format/Time;)V

    invoke-virtual {v5}, Lcn/nubia/calendarcommon2/ChineseCalendar;->getChineseDate()I

    move-result p2

    .line 564
    iget v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    shl-int v6, v4, p2

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    :goto_0
    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method getLunarYearDay(Landroid/text/format/Time;I)Z
    .locals 12
    .param p1, "iterator"    # Landroid/text/format/Time;
    .param p2, "day"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 569
    iget v4, p1, Landroid/text/format/Time;->year:I

    .line 570
    .local v4, "realYear":I
    iget v3, p1, Landroid/text/format/Time;->month:I

    .line 572
    .local v3, "realMonth":I
    const/4 v5, 0x0

    .line 575
    .local v5, "t":Landroid/text/format/Time;
    const-string v9, "RecurrenceProcessor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get called with iterator="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " day="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-lt p2, v7, :cond_0

    const/16 v9, 0x1c

    if-le p2, v9, :cond_1

    .line 582
    :cond_0
    iget-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 583
    invoke-virtual {v5, p2, v3, v4}, Landroid/text/format/Time;->set(III)V

    .line 584
    invoke-static {v5}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 585
    iget v4, v5, Landroid/text/format/Time;->year:I

    .line 586
    iget v3, v5, Landroid/text/format/Time;->month:I

    .line 587
    iget p2, v5, Landroid/text/format/Time;->monthDay:I

    .line 589
    const-string v9, "RecurrenceProcessor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "normalized t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/text/format/Time;->month:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/text/format/Time;->year:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    iget v9, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v4, v9, :cond_2

    iget v9, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v3, v9, :cond_4

    .line 601
    :cond_2
    if-nez v5, :cond_3

    .line 602
    iget-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 603
    invoke-virtual {v5, p2, v3, v4}, Landroid/text/format/Time;->set(III)V

    .line 604
    invoke-static {v5}, Lcn/nubia/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 606
    const-string v9, "RecurrenceProcessor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/text/format/Time;->month:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/text/format/Time;->year:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " realMonth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mMonth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_3
    iput v4, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    .line 613
    iput v3, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    .line 614
    iget-object v9, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mR:Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-static {v5, v9}, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/EventRecurrence;)I

    move-result v9

    iput v9, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    .line 616
    const-string v9, "RecurrenceProcessor"

    const-string v10, "generated days list"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_4
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 620
    .local v6, "time":Landroid/text/format/Time;
    iget v9, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    iget v10, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    invoke-virtual {v6, p2, v9, v10}, Landroid/text/format/Time;->set(III)V

    .line 622
    new-instance v1, Lcn/nubia/calendarcommon2/ChineseCalendar;

    invoke-direct {v1, v6}, Lcn/nubia/calendarcommon2/ChineseCalendar;-><init>(Landroid/text/format/Time;)V

    .line 623
    .local v1, "mChineseCalendar":Lcn/nubia/calendarcommon2/ChineseCalendar;
    invoke-virtual {v1}, Lcn/nubia/calendarcommon2/ChineseCalendar;->getChineseMonth()I

    move-result v0

    .line 624
    .local v0, "lunarMonth":I
    invoke-virtual {v1}, Lcn/nubia/calendarcommon2/ChineseCalendar;->getChineseDate()I

    move-result p2

    .line 625
    if-lt p2, v7, :cond_5

    const/16 v9, 0x9

    if-gt p2, v9, :cond_5

    .line 626
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "monthAndDay":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 631
    const-string v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget v9, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mDays:I

    if-ne v9, p2, :cond_6

    .line 635
    :goto_1
    return v7

    .line 628
    .end local v2    # "monthAndDay":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "monthAndDay":Ljava/lang/String;
    goto :goto_0

    :cond_6
    move v7, v8

    .line 635
    goto :goto_1
.end method

.method setRecurrence(Lcn/nubia/calendarcommon2/EventRecurrence;)V
    .locals 1
    .param p1, "r"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mYear:I

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mMonth:I

    .line 450
    iput-object p1, p0, Lcn/nubia/calendarcommon2/RecurrenceProcessor$DaySet;->mR:Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 451
    return-void
.end method
