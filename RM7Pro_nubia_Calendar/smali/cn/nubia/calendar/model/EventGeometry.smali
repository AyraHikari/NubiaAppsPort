.class public Lcn/nubia/calendar/model/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# static fields
.field static final MINUTES_PER_DAY:I = 0x5a0


# instance fields
.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/model/EventGeometry;->mCellMargin:I

    return-void
.end method


# virtual methods
.method public computeEventRect(IIIILcn/nubia/calendar/model/Event;)Z
    .locals 14
    .param p1, "date"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "cellWidth"    # I
    .param p5, "event"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 52
    invoke-virtual/range {p5 .. p5}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 53
    const/4 v11, 0x0

    .line 107
    :goto_0
    return v11

    .line 56
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/model/EventGeometry;->mMinuteHeight:F

    .line 57
    .local v1, "cellMinuteHeight":F
    move-object/from16 v0, p5

    iget v8, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 58
    .local v8, "startDay":I
    move-object/from16 v0, p5

    iget v4, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 60
    .local v4, "endDay":I
    if-gt v8, p1, :cond_1

    if-ge v4, p1, :cond_2

    .line 61
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 64
    :cond_2
    move-object/from16 v0, p5

    iget v10, v0, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 65
    .local v10, "startTime":I
    move-object/from16 v0, p5

    iget v6, v0, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 69
    .local v6, "endTime":I
    if-ge v8, p1, :cond_3

    .line 70
    const/4 v10, 0x0

    .line 75
    :cond_3
    if-le v4, p1, :cond_4

    .line 76
    const/16 v6, 0x5a0

    .line 79
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcn/nubia/calendar/model/Event;->getColumn()I

    move-result v2

    .line 80
    .local v2, "col":I
    invoke-virtual/range {p5 .. p5}, Lcn/nubia/calendar/model/Event;->getMaxColumns()I

    move-result v7

    .line 81
    .local v7, "maxCols":I
    div-int/lit8 v9, v10, 0x3c

    .line 82
    .local v9, "startHour":I
    div-int/lit8 v5, v6, 0x3c

    .line 87
    .local v5, "endHour":I
    mul-int/lit8 v11, v5, 0x3c

    if-ne v11, v6, :cond_5

    .line 88
    add-int/lit8 v5, v5, -0x1

    .line 90
    :cond_5
    move/from16 v0, p3

    int-to-float v11, v0

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->top:F

    .line 91
    move-object/from16 v0, p5

    iget v11, v0, Lcn/nubia/calendar/model/Event;->top:F

    int-to-float v12, v10

    mul-float/2addr v12, v1

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->top:F

    .line 92
    move-object/from16 v0, p5

    iget v11, v0, Lcn/nubia/calendar/model/Event;->top:F

    int-to-float v12, v9

    iget v13, p0, Lcn/nubia/calendar/model/EventGeometry;->mHourGap:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->top:F

    .line 94
    move/from16 v0, p3

    int-to-float v11, v0

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    .line 95
    move-object/from16 v0, p5

    iget v11, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    int-to-float v12, v6

    mul-float/2addr v12, v1

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    .line 96
    move-object/from16 v0, p5

    iget v11, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    int-to-float v12, v5

    iget v13, p0, Lcn/nubia/calendar/model/EventGeometry;->mHourGap:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    .line 99
    move-object/from16 v0, p5

    iget v11, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    move-object/from16 v0, p5

    iget v12, v0, Lcn/nubia/calendar/model/Event;->top:F

    iget v13, p0, Lcn/nubia/calendar/model/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    .line 100
    move-object/from16 v0, p5

    iget v11, v0, Lcn/nubia/calendar/model/Event;->top:F

    iget v12, p0, Lcn/nubia/calendar/model/EventGeometry;->mMinEventHeight:F

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->bottom:F

    .line 103
    :cond_6
    add-int/lit8 v11, v7, 0x1

    iget v12, p0, Lcn/nubia/calendar/model/EventGeometry;->mCellMargin:I

    mul-int/2addr v11, v12

    sub-int v11, p4, v11

    int-to-float v11, v11

    int-to-float v12, v7

    div-float v3, v11, v12

    .line 105
    .local v3, "colWidth":F
    move/from16 v0, p2

    int-to-float v11, v0

    int-to-float v12, v2

    iget v13, p0, Lcn/nubia/calendar/model/EventGeometry;->mCellMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v3

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->left:F

    .line 106
    move-object/from16 v0, p5

    iget v11, v0, Lcn/nubia/calendar/model/Event;->left:F

    add-float/2addr v11, v3

    move-object/from16 v0, p5

    iput v11, v0, Lcn/nubia/calendar/model/Event;->right:F

    .line 107
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public eventIntersectsSelection(Lcn/nubia/calendar/model/Event;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "event"    # Lcn/nubia/calendar/model/Event;
    .param p2, "selection"    # Landroid/graphics/Rect;

    .prologue
    .line 114
    iget v0, p1, Lcn/nubia/calendar/model/Event;->left:F

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcn/nubia/calendar/model/Event;->right:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcn/nubia/calendar/model/Event;->top:F

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcn/nubia/calendar/model/Event;->bottom:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointToEvent(FFLcn/nubia/calendar/model/Event;)F
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "event"    # Lcn/nubia/calendar/model/Event;

    .prologue
    .line 126
    iget v3, p3, Lcn/nubia/calendar/model/Event;->left:F

    .line 127
    .local v3, "left":F
    iget v4, p3, Lcn/nubia/calendar/model/Event;->right:F

    .line 128
    .local v4, "right":F
    iget v5, p3, Lcn/nubia/calendar/model/Event;->top:F

    .line 129
    .local v5, "top":F
    iget v0, p3, Lcn/nubia/calendar/model/Event;->bottom:F

    .line 131
    .local v0, "bottom":F
    cmpl-float v6, p1, v3

    if-ltz v6, :cond_5

    .line 132
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_3

    .line 133
    cmpl-float v6, p2, v5

    if-ltz v6, :cond_2

    .line 134
    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1

    .line 136
    const/4 v1, 0x0

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 139
    :cond_1
    sub-float v1, p2, v0

    goto :goto_0

    .line 142
    :cond_2
    sub-float v1, v5, p2

    goto :goto_0

    .line 146
    :cond_3
    sub-float v1, p1, v4

    .line 147
    .local v1, "dx":F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_4

    .line 149
    sub-float v2, v5, p2

    .line 150
    .local v2, "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    .line 152
    .end local v2    # "dy":F
    :cond_4
    cmpl-float v6, p2, v0

    if-lez v6, :cond_0

    .line 154
    sub-float v2, p2, v0

    .line 155
    .restart local v2    # "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    .line 161
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_5
    sub-float v1, v3, p1

    .line 162
    .restart local v1    # "dx":F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_6

    .line 164
    sub-float v2, v5, p2

    .line 165
    .restart local v2    # "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    .line 167
    .end local v2    # "dy":F
    :cond_6
    cmpl-float v6, p2, v0

    if-lez v6, :cond_0

    .line 169
    sub-float v2, p2, v0

    .line 170
    .restart local v2    # "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0
.end method

.method public setCellMargin(I)V
    .locals 0
    .param p1, "cellMargin"    # I

    .prologue
    .line 33
    iput p1, p0, Lcn/nubia/calendar/model/EventGeometry;->mCellMargin:I

    .line 34
    return-void
.end method

.method public setHourGap(F)V
    .locals 0
    .param p1, "gap"    # F

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/calendar/model/EventGeometry;->mHourGap:F

    .line 38
    return-void
.end method

.method public setHourHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 45
    const/high16 v0, 0x42700000    # 60.0f

    div-float v0, p1, v0

    iput v0, p0, Lcn/nubia/calendar/model/EventGeometry;->mMinuteHeight:F

    .line 46
    return-void
.end method

.method public setMinEventHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 41
    iput p1, p0, Lcn/nubia/calendar/model/EventGeometry;->mMinEventHeight:F

    .line 42
    return-void
.end method
