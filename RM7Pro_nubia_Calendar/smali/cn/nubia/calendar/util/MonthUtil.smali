.class public Lcn/nubia/calendar/util/MonthUtil;
.super Ljava/lang/Object;
.source "MonthUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/util/MonthUtil$DNASegment;,
        Lcn/nubia/calendar/util/MonthUtil$DNAStrand;,
        Lcn/nubia/calendar/util/MonthUtil$LocationXY;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"

.field private static final TAG:Ljava/lang/String; = "MonthUtils"


# instance fields
.field CONFLICT_COLOR:I

.field private final DAY_IN_MINUTES:I

.field private final WEEK_IN_MINUTES:I

.field private WORK_DAY_END_LENGTH:I

.field private WORK_DAY_END_MINUTES:I

.field private WORK_DAY_MINUTES:I

.field private WORK_DAY_START_MINUTES:I

.field private final defaultMinutes:I

.field private mMinutesLoaded:Z

.field private final mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x5a0

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->DAY_IN_MINUTES:I

    .line 31
    const/16 v0, 0x2760

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->WEEK_IN_MINUTES:I

    .line 33
    const/16 v0, 0x348

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_MINUTES:I

    .line 34
    const/16 v0, 0x168

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    .line 35
    const/16 v0, 0x4b0

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    .line 36
    iget v0, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    rsub-int v0, v0, 0x5a0

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_LENGTH:I

    .line 37
    const/16 v0, 0x3ca

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->defaultMinutes:I

    .line 38
    const/high16 v0, -0x1000000

    iput v0, p0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    .line 39
    new-instance v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "cn.nubia.calendar.preset_preferences"

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/util/MonthUtil;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/util/MonthUtil;->mMinutesLoaded:Z

    return-void
.end method

.method private addAllDayToStrands(Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;II)V
    .locals 5
    .param p1, "event"    # Lcn/nubia/calendar/model/Event;
    .param p3, "firstJulianDay"    # I
    .param p4, "numDays"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/calendar/model/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 921
    .local p2, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    iget v3, p0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    invoke-direct {p0, p2, v3}, Lcn/nubia/calendar/util/MonthUtil;->getOrCreateStrand(Ljava/util/HashMap;I)Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    move-result-object v2

    .line 923
    .local v2, "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iget-object v3, v2, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    if-nez v3, :cond_0

    .line 924
    new-array v3, p4, [I

    iput-object v3, v2, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    .line 928
    :cond_0
    iget v3, p1, Lcn/nubia/calendar/model/Event;->endDay:I

    sub-int/2addr v3, p3

    add-int/lit8 v4, p4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 929
    .local v0, "end":I
    iget v3, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int/2addr v3, p3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 930
    iget-object v3, v2, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    aget v3, v3, v1

    if-eqz v3, :cond_1

    .line 932
    iget-object v3, v2, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    iget v4, p0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    aput v4, v3, v1

    .line 929
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 935
    :cond_1
    iget-object v3, v2, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    iget v4, p1, Lcn/nubia/calendar/model/Event;->color:I

    aput v4, v3, v1

    goto :goto_1

    .line 938
    :cond_2
    return-void
.end method

.method private addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V
    .locals 13
    .param p2, "event"    # Lcn/nubia/calendar/model/Event;
    .param p4, "firstJulianDay"    # I
    .param p5, "minStart"    # I
    .param p6, "minMinutes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendar/util/MonthUtil$DNASegment;",
            ">;",
            "Lcn/nubia/calendar/model/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 982
    .local p1, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/MonthUtil$DNASegment;>;"
    .local p3, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v2, p2, Lcn/nubia/calendar/model/Event;->endDay:I

    if-le v1, v2, :cond_0

    .line 983
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v1, p2, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 984
    const-string v1, "MonthUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event starts after it ends: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_0
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v2, p2, Lcn/nubia/calendar/model/Event;->endDay:I

    if-eq v1, v2, :cond_2

    .line 988
    new-instance v3, Lcn/nubia/calendar/model/Event;

    invoke-direct {v3}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 989
    .local v3, "lhs":Lcn/nubia/calendar/model/Event;
    iget v1, p2, Lcn/nubia/calendar/model/Event;->color:I

    iput v1, v3, Lcn/nubia/calendar/model/Event;->color:I

    .line 990
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v1, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 992
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startTime:I

    iput v1, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 993
    iget v1, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v1, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 994
    const/16 v1, 0x59f

    iput v1, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 996
    :goto_0
    iget v1, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v2, p2, Lcn/nubia/calendar/model/Event;->endDay:I

    if-eq v1, v2, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 997
    invoke-direct/range {v1 .. v7}, Lcn/nubia/calendar/util/MonthUtil;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    .line 1001
    iget v1, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 1002
    iget v1, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v1, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 1003
    const/4 v1, 0x0

    iput v1, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 1004
    const/16 p5, 0x0

    goto :goto_0

    .line 1007
    :cond_1
    iget v1, p2, Lcn/nubia/calendar/model/Event;->endTime:I

    iput v1, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 1008
    move-object p2, v3

    .line 1011
    .end local v3    # "lhs":Lcn/nubia/calendar/model/Event;
    :cond_2
    new-instance v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcn/nubia/calendar/util/MonthUtil$DNASegment;-><init>(Lcn/nubia/calendar/util/MonthUtil$1;)V

    .line 1012
    .local v11, "segment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int v1, v1, p4

    mul-int/lit16 v8, v1, 0x5a0

    .line 1013
    .local v8, "dayOffset":I
    add-int/lit16 v1, v8, 0x5a0

    add-int/lit8 v9, v1, -0x1

    .line 1015
    .local v9, "endOfDay":I
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int/2addr v1, v8

    move/from16 v0, p5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 1018
    iget v1, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    add-int v1, v1, p6

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1019
    .local v10, "minEnd":I
    iget v1, p2, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int/2addr v1, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 1020
    iget v1, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    if-le v1, v9, :cond_3

    .line 1021
    iput v9, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 1024
    :cond_3
    iget v1, p2, Lcn/nubia/calendar/model/Event;->color:I

    iput v1, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    .line 1025
    iget v1, p2, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v1, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    .line 1026
    invoke-virtual {p1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1029
    iget v1, v11, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/util/MonthUtil;->getOrCreateStrand(Ljava/util/HashMap;I)Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    move-result-object v12

    .line 1030
    .local v12, "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iget v1, v12, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v12, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 1031
    return-void
.end method

.method private getOrCreateStrand(Ljava/util/HashMap;I)Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    .locals 2
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;I)",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .line 946
    .local v0, "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    if-nez v0, :cond_0

    .line 947
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .end local v0    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;-><init>()V

    .line 948
    .restart local v0    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iput p2, v0, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->color:I

    .line 949
    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 950
    iget v1, v0, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_0
    return-object v0
.end method

.method private getPixelOffsetFromMinutes(III)I
    .locals 4
    .param p1, "minute"    # I
    .param p2, "workDayHeight"    # I
    .param p3, "remainderHeight"    # I

    .prologue
    .line 962
    iget v1, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    if-ge p1, v1, :cond_0

    .line 963
    mul-int v1, p1, p3

    iget v2, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    div-int v0, v1, v2

    .line 972
    .local v0, "y":I
    :goto_0
    return v0

    .line 964
    .end local v0    # "y":I
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    if-ge p1, v1, :cond_1

    .line 965
    iget v1, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    sub-int v1, p1, v1

    mul-int/2addr v1, p2

    iget v2, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_MINUTES:I

    div-int/2addr v1, v2

    add-int v0, p3, v1

    .restart local v0    # "y":I
    goto :goto_0

    .line 968
    .end local v0    # "y":I
    :cond_1
    add-int v1, p3, p2

    iget v2, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    sub-int v2, p1, v2

    mul-int/2addr v2, p3

    iget v3, p0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_LENGTH:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .restart local v0    # "y":I
    goto :goto_0
.end method

.method private weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V
    .locals 17
    .param p2, "firstJulianDay"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dayXs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendar/util/MonthUtil$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/MonthUtil$DNASegment;>;"
    .local p3, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 599
    .local v8, "strandIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 600
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .line 601
    .local v7, "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iget v13, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_0

    iget-object v13, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    if-nez v13, :cond_0

    .line 602
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 605
    :cond_0
    iget v13, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    mul-int/lit8 v13, v13, 0x4

    new-array v13, v13, [F

    iput-object v13, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    .line 606
    const/4 v13, 0x0

    iput v13, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    goto :goto_0

    .line 609
    .end local v7    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 611
    .local v6, "segment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    iget v14, v6, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .line 612
    .restart local v7    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iget v14, v6, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    sub-int v2, v14, p2

    .line 613
    .local v2, "dayIndex":I
    iget v14, v6, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    rem-int/lit16 v3, v14, 0x5a0

    .line 614
    .local v3, "dayStartMinute":I
    iget v14, v6, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    rem-int/lit16 v1, v14, 0x5a0

    .line 615
    .local v1, "dayEndMinute":I
    sub-int v4, p5, p4

    .line 616
    .local v4, "height":I
    mul-int/lit8 v14, v4, 0x3

    div-int/lit8 v9, v14, 0x4

    .line 617
    .local v9, "workDayHeight":I
    sub-int v14, v4, v9

    div-int/lit8 v5, v14, 0x2

    .line 618
    .local v5, "remainderHeight":I
    aget v10, p6, v2

    .line 619
    .local v10, "x":I
    const/4 v11, 0x0

    .line 620
    .local v11, "y0":I
    const/4 v12, 0x0

    .line 621
    .local v12, "y1":I
    const/16 v14, 0x3ca

    .line 622
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v5}, Lcn/nubia/calendar/util/MonthUtil;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v11, p4, v14

    .line 624
    const/16 v14, 0x3ca

    .line 625
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v5}, Lcn/nubia/calendar/util/MonthUtil;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v12, p4, v14

    .line 632
    iget-object v14, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    int-to-float v0, v10

    move/from16 v16, v0

    aput v16, v14, v15

    .line 633
    iget-object v14, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 634
    iget-object v14, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    int-to-float v0, v10

    move/from16 v16, v0

    aput v16, v14, v15

    .line 635
    iget-object v14, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    int-to-float v0, v12

    move/from16 v16, v0

    aput v16, v14, v15

    goto/16 :goto_1

    .line 637
    .end local v1    # "dayEndMinute":I
    .end local v2    # "dayIndex":I
    .end local v3    # "dayStartMinute":I
    .end local v4    # "height":I
    .end local v5    # "remainderHeight":I
    .end local v6    # "segment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .end local v7    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    .end local v9    # "workDayHeight":I
    .end local v10    # "x":I
    .end local v11    # "y0":I
    .end local v12    # "y1":I
    :cond_2
    return-void
.end method

.method private weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[ILjava/util/HashMap;)V
    .locals 22
    .param p2, "firstJulianDay"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dayXs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendar/util/MonthUtil$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;II[I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$LocationXY;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/MonthUtil$DNASegment;>;"
    .local p3, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    .local p7, "storeLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$LocationXY;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 881
    .local v12, "strandIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 882
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .line 883
    .local v11, "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iget v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    iget-object v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->allDays:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 884
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 887
    :cond_0
    iget v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    .line 888
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    goto :goto_0

    .line 891
    .end local v11    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 893
    .local v10, "segment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    iget v0, v10, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    .line 894
    .restart local v11    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    iget v0, v10, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move/from16 v18, v0

    sub-int v5, v18, p2

    .line 895
    .local v5, "dayIndex":I
    iget v0, v10, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v6, v0, 0x5a0

    .line 896
    .local v6, "dayStartMinute":I
    iget v0, v10, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v4, v0, 0x5a0

    .line 897
    .local v4, "dayEndMinute":I
    sub-int v7, p5, p4

    .line 898
    .local v7, "height":I
    mul-int/lit8 v18, v7, 0x3

    div-int/lit8 v13, v18, 0x4

    .line 899
    .local v13, "workDayHeight":I
    sub-int v18, v7, v13

    div-int/lit8 v9, v18, 0x2

    .line 900
    .local v9, "remainderHeight":I
    aget v14, p6, v5

    .line 901
    .local v14, "x":I
    const/4 v15, 0x0

    .line 902
    .local v15, "y0":I
    const/16 v16, 0x0

    .line 903
    .local v16, "y1":I
    const/16 v18, 0x3ca

    .line 904
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v13, v9}, Lcn/nubia/calendar/util/MonthUtil;->getPixelOffsetFromMinutes(III)I

    move-result v18

    add-int v15, p4, v18

    .line 906
    const/16 v18, 0x3ca

    .line 907
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v13, v9}, Lcn/nubia/calendar/util/MonthUtil;->getPixelOffsetFromMinutes(III)I

    move-result v18

    add-int v16, p4, v18

    .line 909
    iget-object v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v18, v19

    .line 910
    iget-object v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    int-to-float v0, v15

    move/from16 v20, v0

    aput v20, v18, v19

    .line 911
    iget-object v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v18, v19

    .line 912
    iget-object v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->position:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 913
    new-instance v8, Lcn/nubia/calendar/util/MonthUtil$LocationXY;

    int-to-float v0, v14

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Lcn/nubia/calendar/util/MonthUtil$LocationXY;-><init>(FFFF)V

    .line 914
    .local v8, "mLocationXY":Lcn/nubia/calendar/util/MonthUtil$LocationXY;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 916
    .end local v4    # "dayEndMinute":I
    .end local v5    # "dayIndex":I
    .end local v6    # "dayStartMinute":I
    .end local v7    # "height":I
    .end local v8    # "mLocationXY":Lcn/nubia/calendar/util/MonthUtil$LocationXY;
    .end local v9    # "remainderHeight":I
    .end local v10    # "segment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .end local v11    # "strand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    .end local v13    # "workDayHeight":I
    .end local v14    # "x":I
    .end local v15    # "y0":I
    .end local v16    # "y1":I
    :cond_2
    return-void
.end method


# virtual methods
.method public adjustToBeginningOfWeek(Landroid/text/format/Time;I)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "firstDayOfWeek"    # I

    .prologue
    .line 235
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 236
    .local v0, "dayOfWeek":I
    sub-int v1, v0, p2

    .line 237
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 238
    if-gez v1, :cond_0

    .line 239
    add-int/lit8 v1, v1, 0x7

    .line 241
    :cond_0
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 242
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 244
    :cond_1
    return-void
.end method

.method public adjustToEndingOfWeek(Landroid/text/format/Time;I)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "firstDayOfWeek"    # I

    .prologue
    .line 247
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 248
    .local v0, "dayOfWeek":I
    sub-int v1, v0, p2

    .line 249
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 250
    if-gez v1, :cond_0

    .line 251
    add-int/lit8 v1, v1, 0x7

    .line 253
    :cond_0
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 256
    :cond_1
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x7

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 257
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 258
    return-void
.end method

.method public createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;
    .locals 30
    .param p1, "firstJulianDay"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "minPixels"    # I
    .param p6, "dayXs"    # [I
    .param p7, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/util/MonthUtil;->mMinutesLoaded:Z

    if-nez v3, :cond_1

    .line 361
    if-nez p7, :cond_0

    .line 362
    const-string v3, "MonthUtils"

    const-string v7, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v3, v7}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 366
    .local v27, "res":Landroid/content/res/Resources;
    const v3, 0x7f0d0110

    .line 367
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    .line 368
    const v3, 0x7f10002e

    .line 369
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    .line 370
    const v3, 0x7f10002d

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    .line 371
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    rsub-int v3, v3, 0x5a0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_LENGTH:I

    .line 372
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_MINUTES:I

    .line 373
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/nubia/calendar/util/MonthUtil;->mMinutesLoaded:Z

    .line 376
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    array-length v3, v0

    const/4 v7, 0x1

    if-lt v3, v7, :cond_2

    sub-int v3, p4, p3

    const/16 v7, 0x8

    if-lt v3, v7, :cond_2

    if-gez p5, :cond_3

    .line 378
    :cond_2
    const-string v3, "MonthUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dayXs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 379
    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bot-top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, p4, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minPixels:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 378
    invoke-static {v3, v7}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v6, 0x0

    .line 588
    :goto_0
    return-object v6

    .line 384
    :cond_3
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 385
    .local v4, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/MonthUtil$DNASegment;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v6, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    new-instance v17, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    invoke-direct/range {v17 .. v17}, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;-><init>()V

    .line 389
    .local v17, "blackStrand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    move-object/from16 v0, v17

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->color:I

    .line 390
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    mul-int/lit8 v3, p5, 0x4

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_MINUTES:I

    mul-int/2addr v3, v7

    sub-int v7, p4, p3

    mul-int/lit8 v7, v7, 0x3

    div-int v9, v3, v7

    .line 400
    .local v9, "minMinutes":I
    mul-int/lit8 v3, v9, 0x5

    div-int/lit8 v26, v3, 0x2

    .line 401
    .local v26, "minOtherMinutes":I
    move-object/from16 v0, p6

    array-length v3, v0

    add-int v3, v3, p1

    add-int/lit8 v23, v3, -0x1

    .line 403
    .local v23, "lastJulianDay":I
    new-instance v5, Lcn/nubia/calendar/model/Event;

    invoke-direct {v5}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 405
    .local v5, "event":Lcn/nubia/calendar/model/Event;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/calendar/model/Event;

    .line 407
    .local v18, "currEvent":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, v18

    iget v3, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, p1

    if-lt v3, v0, :cond_4

    move-object/from16 v0, v18

    iget v3, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, v23

    if-gt v3, v0, :cond_4

    .line 411
    invoke-virtual/range {v18 .. v18}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    move-object/from16 v0, p6

    array-length v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-direct {v0, v1, v6, v2, v3}, Lcn/nubia/calendar/util/MonthUtil;->addAllDayToStrands(Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;II)V

    goto :goto_1

    .line 417
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/model/Event;->copyTo(Lcn/nubia/calendar/model/Event;)V

    .line 418
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_6

    .line 419
    move/from16 v0, p1

    iput v0, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 420
    const/4 v3, 0x0

    iput v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 424
    :cond_6
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v0, v26

    rsub-int v7, v0, 0x5a0

    if-le v3, v7, :cond_7

    .line 425
    move/from16 v0, v26

    rsub-int v3, v0, 0x5a0

    iput v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 427
    :cond_7
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, v23

    if-le v3, v0, :cond_8

    .line 428
    move/from16 v0, v23

    iput v0, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 429
    const/16 v3, 0x59f

    iput v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 433
    :cond_8
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v0, v26

    if-ge v3, v0, :cond_9

    .line 434
    move/from16 v0, v26

    iput v0, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 440
    :cond_9
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v7, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v3, v7, :cond_a

    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v7, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v3, v7

    move/from16 v0, v26

    if-ge v3, v0, :cond_a

    .line 444
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    if-ge v3, v7, :cond_b

    .line 447
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v3, v3, v26

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    add-int/2addr v7, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 462
    :cond_a
    :goto_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 463
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcn/nubia/calendar/util/MonthUtil;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .line 450
    :cond_b
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    if-le v3, v7, :cond_a

    .line 452
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int v3, v3, v26

    const/16 v7, 0x59f

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 455
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v7, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v3, v7

    move/from16 v0, v26

    if-ge v3, v0, :cond_a

    .line 456
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    sub-int v3, v3, v26

    iput v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    goto :goto_2

    .line 469
    :cond_c
    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 470
    .local v24, "lastSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int v3, v3, p1

    mul-int/lit16 v3, v3, 0x5a0

    iget v7, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v29, v3, v7

    .line 472
    .local v29, "startMinute":I
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    sub-int v3, v3, p1

    mul-int/lit16 v3, v3, 0x5a0

    iget v7, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int/2addr v3, v7

    add-int v7, v29, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 475
    .local v20, "endMinute":I
    if-gez v29, :cond_d

    .line 476
    const/16 v29, 0x0

    .line 478
    :cond_d
    const/16 v3, 0x2760

    move/from16 v0, v20

    if-lt v0, v3, :cond_e

    .line 479
    const/16 v20, 0x275f

    .line 484
    :cond_e
    move-object/from16 v0, v24

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move/from16 v0, v29

    if-ge v0, v3, :cond_16

    .line 485
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v21

    .line 487
    .local v21, "i":I
    :cond_f
    add-int/lit8 v21, v21, -0x1

    if-ltz v21, :cond_10

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    iget v3, v3, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move/from16 v0, v20

    if-lt v0, v3, :cond_f

    :cond_10
    move/from16 v22, v21

    .line 493
    .end local v21    # "i":I
    .local v22, "i":I
    :goto_3
    if-ltz v22, :cond_16

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .local v19, "currSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move/from16 v0, v29

    if-gt v0, v3, :cond_16

    .line 495
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-ne v3, v7, :cond_12

    move/from16 v21, v22

    .line 493
    .end local v22    # "i":I
    .restart local v21    # "i":I
    :cond_11
    :goto_4
    add-int/lit8 v21, v21, -0x1

    move/from16 v22, v21

    .end local v21    # "i":I
    .restart local v22    # "i":I
    goto :goto_3

    .line 500
    :cond_12
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    sub-int/2addr v3, v9

    move/from16 v0, v20

    if-ge v0, v3, :cond_13

    .line 501
    new-instance v28, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Lcn/nubia/calendar/util/MonthUtil$DNASegment;-><init>(Lcn/nubia/calendar/util/MonthUtil$1;)V

    .line 502
    .local v28, "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v0, v28

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 503
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, v28

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    .line 504
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 505
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v28

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    .line 506
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 507
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v4, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 508
    move-object/from16 v0, v28

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 518
    .end local v28    # "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :cond_13
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    add-int/2addr v3, v9

    move/from16 v0, v29

    if-le v0, v3, :cond_18

    .line 519
    new-instance v25, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Lcn/nubia/calendar/util/MonthUtil$DNASegment;-><init>(Lcn/nubia/calendar/util/MonthUtil$1;)V

    .line 520
    .local v25, "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move-object/from16 v0, v25

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 521
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, v25

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    .line 522
    add-int/lit8 v3, v29, -0x1

    move-object/from16 v0, v25

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 523
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v25

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    .line 524
    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 528
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "i":I
    .restart local v21    # "i":I
    move/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 529
    move-object/from16 v0, v25

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 539
    .end local v25    # "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :goto_5
    add-int/lit8 v3, v21, 0x1

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v3, v7, :cond_14

    .line 540
    add-int/lit8 v3, v21, 0x1

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 541
    .restart local v28    # "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v28

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-ne v3, v7, :cond_14

    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v28

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    if-ne v3, v7, :cond_14

    move-object/from16 v0, v28

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move-object/from16 v0, v19

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    add-int/lit8 v7, v7, 0x1

    if-gt v3, v7, :cond_14

    .line 544
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move-object/from16 v0, v28

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v28

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 546
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 547
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 549
    move-object/from16 v19, v28

    .line 554
    .end local v28    # "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :cond_14
    add-int/lit8 v3, v21, -0x1

    if-ltz v3, :cond_15

    .line 555
    add-int/lit8 v3, v21, -0x1

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 556
    .restart local v25    # "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v25

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-ne v3, v7, :cond_15

    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v25

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    if-ne v3, v7, :cond_15

    move-object/from16 v0, v25

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v0, v19

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_15

    .line 559
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v0, v25

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 561
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 562
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 564
    move-object/from16 v19, v25

    .line 567
    add-int/lit8 v21, v21, -0x1

    .line 573
    .end local v25    # "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :cond_15
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-eq v3, v7, :cond_11

    .line 574
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 575
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    move-object/from16 v0, v19

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    .line 576
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    goto/16 :goto_4

    .line 582
    .end local v19    # "currSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .end local v21    # "i":I
    :cond_16
    move-object/from16 v0, v24

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move/from16 v0, v20

    if-le v0, v3, :cond_4

    .line 583
    move-object/from16 v0, v24

    iget v8, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcn/nubia/calendar/util/MonthUtil;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .end local v18    # "currEvent":Lcn/nubia/calendar/model/Event;
    .end local v20    # "endMinute":I
    .end local v24    # "lastSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .end local v29    # "startMinute":I
    :cond_17
    move-object/from16 v10, p0

    move-object v11, v4

    move/from16 v12, p1

    move-object v13, v6

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p6

    .line 587
    invoke-direct/range {v10 .. v16}, Lcn/nubia/calendar/util/MonthUtil;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V

    goto/16 :goto_0

    .restart local v18    # "currEvent":Lcn/nubia/calendar/model/Event;
    .restart local v19    # "currSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .restart local v20    # "endMinute":I
    .restart local v22    # "i":I
    .restart local v24    # "lastSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .restart local v29    # "startMinute":I
    :cond_18
    move/from16 v21, v22

    .end local v22    # "i":I
    .restart local v21    # "i":I
    goto/16 :goto_5
.end method

.method public createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 31
    .param p1, "firstJulianDay"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "minPixels"    # I
    .param p6, "dayXs"    # [I
    .param p7, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$LocationXY;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    .local p2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    .local p8, "storeLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$LocationXY;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/util/MonthUtil;->mMinutesLoaded:Z

    if-nez v3, :cond_1

    .line 645
    if-nez p7, :cond_0

    .line 646
    const-string v3, "MonthUtils"

    const-string v7, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v3, v7}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 650
    .local v28, "res":Landroid/content/res/Resources;
    const v3, 0x7f0d0110

    .line 651
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    .line 652
    const v3, 0x7f10002e

    .line 653
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    .line 654
    const v3, 0x7f10002d

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    .line 655
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    rsub-int v3, v3, 0x5a0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_LENGTH:I

    .line 656
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_MINUTES:I

    .line 657
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/nubia/calendar/util/MonthUtil;->mMinutesLoaded:Z

    .line 660
    .end local v28    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    array-length v3, v0

    const/4 v7, 0x1

    if-lt v3, v7, :cond_2

    sub-int v3, p4, p3

    const/16 v7, 0x8

    if-lt v3, v7, :cond_2

    if-gez p5, :cond_3

    .line 662
    :cond_2
    const-string v3, "MonthUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dayXs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 663
    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bot-top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, p4, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minPixels:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 662
    invoke-static {v3, v7}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v6, 0x0

    .line 873
    :goto_0
    return-object v6

    .line 668
    :cond_3
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 669
    .local v4, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/MonthUtil$DNASegment;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 672
    .local v6, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/MonthUtil$DNAStrand;>;"
    new-instance v18, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    invoke-direct/range {v18 .. v18}, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;-><init>()V

    .line 673
    .local v18, "blackStrand":Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    move-object/from16 v0, v18

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->color:I

    .line 674
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    mul-int/lit8 v3, p5, 0x4

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_MINUTES:I

    mul-int/2addr v3, v7

    sub-int v7, p4, p3

    mul-int/lit8 v7, v7, 0x3

    div-int v9, v3, v7

    .line 684
    .local v9, "minMinutes":I
    mul-int/lit8 v3, v9, 0x5

    div-int/lit8 v27, v3, 0x2

    .line 685
    .local v27, "minOtherMinutes":I
    move-object/from16 v0, p6

    array-length v3, v0

    add-int v3, v3, p1

    add-int/lit8 v24, v3, -0x1

    .line 687
    .local v24, "lastJulianDay":I
    new-instance v5, Lcn/nubia/calendar/model/Event;

    invoke-direct {v5}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 689
    .local v5, "event":Lcn/nubia/calendar/model/Event;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcn/nubia/calendar/model/Event;

    .line 691
    .local v19, "currEvent":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, p1

    if-lt v3, v0, :cond_4

    move-object/from16 v0, v19

    iget v3, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, v24

    if-gt v3, v0, :cond_4

    .line 695
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 696
    move-object/from16 v0, p6

    array-length v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v6, v2, v3}, Lcn/nubia/calendar/util/MonthUtil;->addAllDayToStrands(Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;II)V

    goto :goto_1

    .line 701
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/model/Event;->copyTo(Lcn/nubia/calendar/model/Event;)V

    .line 702
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_6

    .line 703
    move/from16 v0, p1

    iput v0, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 704
    const/4 v3, 0x0

    iput v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 708
    :cond_6
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v0, v27

    rsub-int v7, v0, 0x5a0

    if-le v3, v7, :cond_7

    .line 709
    move/from16 v0, v27

    rsub-int v3, v0, 0x5a0

    iput v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 711
    :cond_7
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, v24

    if-le v3, v0, :cond_8

    .line 712
    move/from16 v0, v24

    iput v0, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 713
    const/16 v3, 0x59f

    iput v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 717
    :cond_8
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v0, v27

    if-ge v3, v0, :cond_9

    .line 718
    move/from16 v0, v27

    iput v0, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 724
    :cond_9
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v7, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v3, v7, :cond_a

    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v7, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v3, v7

    move/from16 v0, v27

    if-ge v3, v0, :cond_a

    .line 728
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    if-ge v3, v7, :cond_b

    .line 731
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v3, v3, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_START_MINUTES:I

    add-int/2addr v7, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 746
    :cond_a
    :goto_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 747
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcn/nubia/calendar/util/MonthUtil;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .line 734
    :cond_b
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->WORK_DAY_END_MINUTES:I

    if-le v3, v7, :cond_a

    .line 736
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int v3, v3, v27

    const/16 v7, 0x59f

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 739
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v7, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v3, v7

    move/from16 v0, v27

    if-ge v3, v0, :cond_a

    .line 740
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    sub-int v3, v3, v27

    iput v3, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    goto :goto_2

    .line 753
    :cond_c
    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 754
    .local v25, "lastSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    iget v3, v5, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int v3, v3, p1

    mul-int/lit16 v3, v3, 0x5a0

    iget v7, v5, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v30, v3, v7

    .line 756
    .local v30, "startMinute":I
    iget v3, v5, Lcn/nubia/calendar/model/Event;->endDay:I

    sub-int v3, v3, p1

    mul-int/lit16 v3, v3, 0x5a0

    iget v7, v5, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int/2addr v3, v7

    add-int v7, v30, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 759
    .local v21, "endMinute":I
    if-gez v30, :cond_d

    .line 760
    const/16 v30, 0x0

    .line 762
    :cond_d
    const/16 v3, 0x2760

    move/from16 v0, v21

    if-lt v0, v3, :cond_e

    .line 763
    const/16 v21, 0x275f

    .line 768
    :cond_e
    move-object/from16 v0, v25

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move/from16 v0, v30

    if-ge v0, v3, :cond_16

    .line 769
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v22

    .line 771
    .local v22, "i":I
    :cond_f
    add-int/lit8 v22, v22, -0x1

    if-ltz v22, :cond_10

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    iget v3, v3, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move/from16 v0, v21

    if-lt v0, v3, :cond_f

    :cond_10
    move/from16 v23, v22

    .line 777
    .end local v22    # "i":I
    .local v23, "i":I
    :goto_3
    if-ltz v23, :cond_16

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .local v20, "currSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move/from16 v0, v30

    if-gt v0, v3, :cond_16

    .line 779
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-ne v3, v7, :cond_12

    move/from16 v22, v23

    .line 777
    .end local v23    # "i":I
    .restart local v22    # "i":I
    :cond_11
    :goto_4
    add-int/lit8 v22, v22, -0x1

    move/from16 v23, v22

    .end local v22    # "i":I
    .restart local v23    # "i":I
    goto :goto_3

    .line 784
    :cond_12
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    sub-int/2addr v3, v9

    move/from16 v0, v21

    if-ge v0, v3, :cond_13

    .line 785
    new-instance v29, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Lcn/nubia/calendar/util/MonthUtil$DNASegment;-><init>(Lcn/nubia/calendar/util/MonthUtil$1;)V

    .line 786
    .local v29, "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v0, v29

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 787
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, v29

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    .line 788
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, v29

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 789
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v29

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    .line 790
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 791
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 792
    move-object/from16 v0, v29

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 802
    .end local v29    # "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :cond_13
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    add-int/2addr v3, v9

    move/from16 v0, v30

    if-le v0, v3, :cond_18

    .line 803
    new-instance v26, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcn/nubia/calendar/util/MonthUtil$DNASegment;-><init>(Lcn/nubia/calendar/util/MonthUtil$1;)V

    .line 804
    .local v26, "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move-object/from16 v0, v26

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 805
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, v26

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    .line 806
    add-int/lit8 v3, v30, -0x1

    move-object/from16 v0, v26

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 807
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v26

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    .line 808
    move/from16 v0, v30

    move-object/from16 v1, v20

    iput v0, v1, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 812
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "i":I
    .restart local v22    # "i":I
    move/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 813
    move-object/from16 v0, v26

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 823
    .end local v26    # "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :goto_5
    add-int/lit8 v3, v22, 0x1

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v3, v7, :cond_14

    .line 824
    add-int/lit8 v3, v22, 0x1

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 825
    .restart local v29    # "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v29

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-ne v3, v7, :cond_14

    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v29

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    if-ne v3, v7, :cond_14

    move-object/from16 v0, v29

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move-object/from16 v0, v20

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    add-int/lit8 v7, v7, 0x1

    if-gt v3, v7, :cond_14

    .line 828
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    move-object/from16 v0, v29

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    .line 830
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 831
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 833
    move-object/from16 v20, v29

    .line 838
    .end local v29    # "rhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :cond_14
    add-int/lit8 v3, v22, -0x1

    if-ltz v3, :cond_15

    .line 839
    add-int/lit8 v3, v22, -0x1

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcn/nubia/calendar/util/MonthUtil$DNASegment;

    .line 840
    .restart local v26    # "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    move-object/from16 v0, v26

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-ne v3, v7, :cond_15

    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    move-object/from16 v0, v26

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->day:I

    if-ne v3, v7, :cond_15

    move-object/from16 v0, v26

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v0, v20

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->startMinute:I

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_15

    .line 843
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v0, v26

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    .line 845
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 846
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 848
    move-object/from16 v20, v26

    .line 851
    add-int/lit8 v22, v22, -0x1

    .line 857
    .end local v26    # "lhs":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    :cond_15
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    if-eq v3, v7, :cond_11

    .line 858
    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    .line 859
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    move-object/from16 v0, v20

    iput v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->color:I

    .line 860
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil;->CONFLICT_COLOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;

    iget v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcn/nubia/calendar/util/MonthUtil$DNAStrand;->count:I

    goto/16 :goto_4

    .line 866
    .end local v20    # "currSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .end local v22    # "i":I
    :cond_16
    move-object/from16 v0, v25

    iget v3, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move/from16 v0, v21

    if-le v0, v3, :cond_4

    .line 867
    move-object/from16 v0, v25

    iget v8, v0, Lcn/nubia/calendar/util/MonthUtil$DNASegment;->endMinute:I

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcn/nubia/calendar/util/MonthUtil;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .end local v19    # "currEvent":Lcn/nubia/calendar/model/Event;
    .end local v21    # "endMinute":I
    .end local v25    # "lastSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .end local v30    # "startMinute":I
    :cond_17
    move-object/from16 v10, p0

    move-object v11, v4

    move/from16 v12, p1

    move-object v13, v6

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    .line 871
    invoke-direct/range {v10 .. v17}, Lcn/nubia/calendar/util/MonthUtil;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[ILjava/util/HashMap;)V

    goto/16 :goto_0

    .restart local v19    # "currEvent":Lcn/nubia/calendar/model/Event;
    .restart local v20    # "currSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .restart local v21    # "endMinute":I
    .restart local v23    # "i":I
    .restart local v25    # "lastSegment":Lcn/nubia/calendar/util/MonthUtil$DNASegment;
    .restart local v30    # "startMinute":I
    :cond_18
    move/from16 v22, v23

    .end local v23    # "i":I
    .restart local v22    # "i":I
    goto/16 :goto_5
.end method

.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/calendar/util/MonthUtil;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigBool(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "key"    # I

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getDaysOfCurrentMonth(Landroid/text/format/Time;)I
    .locals 2
    .param p1, "argTime"    # Landroid/text/format/Time;

    .prologue
    .line 124
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 125
    .local v0, "time":Landroid/text/format/Time;
    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 126
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 129
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    return v1
.end method

.method public getFirstDayOfWeek(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    .line 139
    invoke-static {p1}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "pref":Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 145
    .local v2, "startDay":I
    const-string v3, "en"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 146
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    const/4 v2, 0x0

    .line 152
    :cond_0
    :goto_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 153
    const/4 v3, 0x6

    .line 157
    :goto_1
    return v3

    .line 150
    .end local v2    # "startDay":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "startDay":I
    goto :goto_0

    .line 154
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 155
    const/4 v3, 0x1

    goto :goto_1

    .line 157
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p1, "week"    # I

    .prologue
    .line 120
    const v0, 0x253d89

    mul-int/lit8 v1, p1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/calendar/util/MonthUtil;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeekNumsOfMonth(Landroid/text/format/Time;I)I
    .locals 10
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "firstDayOfWeek"    # I

    .prologue
    .line 261
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 262
    .local v3, "tmpTime":Landroid/text/format/Time;
    const/4 v5, 0x1

    iput v5, v3, Landroid/text/format/Time;->monthDay:I

    .line 263
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 264
    invoke-virtual {p0, v3, p2}, Lcn/nubia/calendar/util/MonthUtil;->adjustToBeginningOfWeek(Landroid/text/format/Time;I)V

    .line 265
    const/4 v5, 0x1

    .line 266
    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 267
    .local v1, "startDay":I
    const-string v5, "%d-%d-%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v3, Landroid/text/format/Time;->year:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v3, Landroid/text/format/Time;->month:I

    .line 268
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 267
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "timeString":Ljava/lang/String;
    invoke-virtual {v3, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 271
    iget v5, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/text/format/Time;->month:I

    .line 272
    const/4 v5, 0x0

    iput v5, v3, Landroid/text/format/Time;->monthDay:I

    .line 273
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 274
    invoke-virtual {p0, v3, p2}, Lcn/nubia/calendar/util/MonthUtil;->adjustToBeginningOfWeek(Landroid/text/format/Time;I)V

    .line 275
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 277
    .local v0, "endDay":I
    sub-int v5, v0, v1

    div-int/lit8 v5, v5, 0x7

    add-int/lit8 v4, v5, 0x1

    .line 279
    .local v4, "weekNums":I
    const-string v5, "%d-%d-%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v3, Landroid/text/format/Time;->year:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v3, Landroid/text/format/Time;->month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v3, Landroid/text/format/Time;->monthDay:I

    .line 280
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 279
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 282
    return v4
.end method

.method public getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p1, "julianDay"    # I
    .param p2, "firstDayOfWeek"    # I

    .prologue
    .line 226
    rsub-int/lit8 v0, p2, 0x4

    .line 227
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 228
    add-int/lit8 v0, v0, 0x7

    .line 230
    :cond_0
    const v2, 0x253d8c    # 3.419992E-39f

    sub-int v1, v2, v0

    .line 231
    .local v1, "refDay":I
    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public isChineseHolidayVisible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mCountry"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HK"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkDayORHoliday(Landroid/content/Context;Landroid/text/format/Time;Ljava/lang/String;)I
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # Landroid/text/format/Time;
    .param p3, "mHomeTimeZone"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x9

    .line 172
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, p3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, "mTime":Landroid/text/format/Time;
    invoke-virtual {v3, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 174
    iget v9, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Landroid/text/format/Time;->month:I

    .line 175
    if-eqz v3, :cond_3

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v3, Landroid/text/format/Time;->year:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "year":Ljava/lang/String;
    const-string v6, ""

    .line 178
    .local v6, "month":Ljava/lang/String;
    const-string v0, ""

    .line 179
    .local v0, "day":Ljava/lang/String;
    iget v9, v3, Landroid/text/format/Time;->month:I

    if-gt v9, v11, :cond_0

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    :goto_0
    iget v9, v3, Landroid/text/format/Time;->monthDay:I

    if-gt v9, v11, :cond_1

    .line 185
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    .line 190
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 191
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    iget v9, v3, Landroid/text/format/Time;->year:I

    invoke-static {p1, v9}, Lcn/nubia/calendar/model/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v1

    .line 192
    .local v1, "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    iget v9, v3, Landroid/text/format/Time;->year:I

    invoke-static {p1, v9}, Lcn/nubia/calendar/model/WeekendWorkDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/WeekendWorkDate;

    move-result-object v4

    .line 193
    .local v4, "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v1}, Lcn/nubia/calendar/model/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 195
    .local v2, "mHolidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 196
    const/4 v9, 0x0

    .line 206
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v2    # "mHolidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    .end local v6    # "month":Ljava/lang/String;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "year":Ljava/lang/String;
    :goto_2
    return v9

    .line 182
    .restart local v0    # "day":Ljava/lang/String;
    .restart local v6    # "month":Ljava/lang/String;
    .restart local v8    # "year":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 187
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 199
    .restart local v1    # "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .restart local v4    # "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v4, :cond_3

    .line 200
    invoke-virtual {v4}, Lcn/nubia/calendar/model/WeekendWorkDate;->getWeekendWorkList()Ljava/util/ArrayList;

    move-result-object v5

    .line 201
    .local v5, "mWeekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 202
    const/4 v9, 0x1

    goto :goto_2

    .line 206
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v4    # "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    .end local v5    # "mWeekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "month":Ljava/lang/String;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "year":Ljava/lang/String;
    :cond_3
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/calendar/util/MonthUtil;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method
