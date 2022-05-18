.class public Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;
.super Lcn/nubia/gallery3d/ui/layout/Layout;
.source "PanoramaLayout.java"


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    return-void
.end method


# virtual methods
.method public getSlotIndexByPosition(FF)I
    .locals 4

    .line 110
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mScrollPosition:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 111
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mScrollPosition:I

    :goto_1
    add-int/2addr p2, v1

    .line 113
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-ltz p1, :cond_b

    if-gez p2, :cond_2

    goto/16 :goto_3

    .line 120
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v0, v1

    div-int v0, p1, v0

    .line 121
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v1, v2

    div-int v1, p2, v1

    .line 123
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    if-lt v0, v2, :cond_3

    .line 124
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->INDEX_NONE:I

    return p1

    .line 127
    :cond_3
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    if-lt v1, v2, :cond_4

    .line 128
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->INDEX_NONE:I

    return p1

    .line 131
    :cond_4
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v2, v3

    rem-int/2addr p1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    if-lt p1, v2, :cond_5

    .line 132
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->INDEX_NONE:I

    return p1

    .line 135
    :cond_5
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr p1, v2

    rem-int/2addr p2, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    if-lt p2, p1, :cond_6

    .line 136
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->INDEX_NONE:I

    return p1

    .line 139
    :cond_6
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->INDEX_NONE:I

    .line 140
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 141
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    add-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_7
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v1, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    add-int/lit8 p1, p1, -0x1

    add-int/2addr v1, p1

    sub-int v0, v1, v0

    goto :goto_2

    .line 143
    :cond_8
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_9
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    move v0, v1

    .line 145
    :goto_2
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotCount:I

    if-lt v0, p1, :cond_a

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->INDEX_NONE:I

    :cond_a
    return v0

    .line 117
    :cond_b
    :goto_3
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->INDEX_NONE:I

    return p1
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 19
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    if-eqz v0, :cond_0

    .line 20
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    div-int v0, p1, v0

    .line 21
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    .line 25
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    div-int v0, p1, v0

    .line 26
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    move v4, v0

    move v0, p1

    move p1, v4

    .line 28
    :goto_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 31
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v1, v0

    .line 32
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, p1

    .line 33
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    add-int/2addr p1, v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    add-int/2addr v2, v0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method protected initLayoutParameters()V
    .locals 10

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    .line 66
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    .line 67
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHeight:I

    const/4 v2, 0x2

    if-le v0, v1, :cond_0

    .line 68
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    goto :goto_0

    .line 70
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    .line 73
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    invoke-interface {v0, v1, v3}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    :cond_1
    new-array v0, v2, [I

    .line 78
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 79
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mWidth:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHeight:I

    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    move-object v4, p0

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->initLayoutParameters(IIII[I)V

    .line 80
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 81
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    goto :goto_1

    .line 83
    :cond_2
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHeight:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mWidth:I

    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    move-object v4, p0

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->initLayoutParameters(IIII[I)V

    .line 84
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 85
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->updateVisibleSlotRange()V

    return-void
.end method

.method protected initLayoutParameters(IIII[I)V
    .locals 1

    .line 53
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mWidth:I

    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHeight:I

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 54
    :goto_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    const/4 p1, 0x0

    .line 56
    aput p1, p5, p1

    .line 58
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotCount:I

    iget p4, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    add-int/2addr p2, p4

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    div-int/2addr p2, v0

    mul-int/2addr p3, p2

    sub-int/2addr p2, p4

    .line 59
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    mul-int/2addr p2, v0

    add-int/2addr p3, p2

    iput p3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mContentLength:I

    .line 60
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mContentLength:I

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p3, p3, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mContentLength:I

    .line 61
    aput p1, p5, p4

    return-void
.end method

.method protected updateVisibleSlotRange()V
    .locals 4

    .line 91
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mScrollPosition:I

    .line 92
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->WIDE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 93
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v1, v3

    div-int v1, v0, v1

    .line 94
    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 95
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 97
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotCount:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->setVisibleRange(II)V

    goto :goto_0

    .line 100
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v1, v3

    div-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 101
    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 102
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 104
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mSlotCount:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 105
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/ui/layout/PanoramaLayout;->setVisibleRange(II)V

    :goto_0
    return-void
.end method
