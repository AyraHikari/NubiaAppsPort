.class public Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;
.super Lcn/nubia/gallery3d/ui/layout/Layout;
.source "LayoutCloudAlbumSet.java"


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    return-void
.end method


# virtual methods
.method public getSlotIndexByPosition(FF)I
    .locals 4

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mScrollPosition:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 53
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mScrollPosition:I

    :goto_1
    add-int/2addr p2, v1

    .line 55
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    sub-int/2addr p1, v0

    .line 56
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p1, :cond_b

    if-gez p2, :cond_2

    goto :goto_4

    .line 62
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int/2addr p1, v0

    .line 63
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int/2addr p2, v0

    if-ltz p1, :cond_a

    if-gez p2, :cond_3

    goto :goto_3

    .line 68
    :cond_3
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v0, v1

    div-int v0, p1, v0

    .line 69
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v1, v2

    div-int v1, p2, v1

    .line 71
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    if-lt v0, v2, :cond_4

    .line 72
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->INDEX_NONE:I

    return p1

    .line 75
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    if-lt v1, v2, :cond_5

    .line 76
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->INDEX_NONE:I

    return p1

    .line 79
    :cond_5
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    rem-int/2addr p1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    if-lt p1, v2, :cond_6

    .line 80
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->INDEX_NONE:I

    return p1

    .line 83
    :cond_6
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr p1, v2

    rem-int/2addr p2, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    if-lt p2, p1, :cond_7

    .line 84
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->INDEX_NONE:I

    return p1

    .line 87
    :cond_7
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_8
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 89
    :goto_2
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotCount:I

    if-lt v0, p1, :cond_9

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->INDEX_NONE:I

    :cond_9
    return v0

    .line 65
    :cond_a
    :goto_3
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->INDEX_NONE:I

    return p1

    .line 59
    :cond_b
    :goto_4
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->INDEX_NONE:I

    return p1
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 16
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    if-eqz v0, :cond_0

    .line 17
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    div-int v0, p1, v0

    .line 18
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    .line 20
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    div-int v0, p1, v0

    .line 21
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    move v4, v0

    move v0, p1

    move p1, v4

    .line 24
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 25
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 27
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v1, p1

    .line 28
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, p1

    .line 29
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    add-int/2addr p1, v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    add-int/2addr v2, v0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method protected initLayoutParameters()V
    .locals 10

    .line 108
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    .line 110
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    goto :goto_1

    .line 113
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHeight:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 114
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v2, v2, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    iput v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    .line 115
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mWidth:I

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v3, v3, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    .line 116
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    .line 119
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    invoke-interface {v0, v2, v3}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    :cond_2
    new-array v0, v1, [I

    .line 124
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->WIDE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 125
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mWidth:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHeight:I

    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    move-object v4, p0

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->initLayoutParameters(IIII[I)V

    .line 126
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 127
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    goto :goto_2

    .line 129
    :cond_3
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHeight:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mWidth:I

    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotWidth:I

    move-object v4, p0

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->initLayoutParameters(IIII[I)V

    .line 130
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 131
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 133
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->updateVisibleSlotRange()V

    return-void
.end method

.method protected initLayoutParameters(IIII[I)V
    .locals 1

    .line 95
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mWidth:I

    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHeight:I

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 96
    :goto_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    const/4 p1, 0x0

    .line 97
    aput p1, p5, p1

    .line 99
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotCount:I

    iget p4, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    add-int/2addr p2, p4

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    div-int/2addr p2, v0

    mul-int/2addr p3, p2

    sub-int/2addr p2, p4

    .line 100
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    mul-int/2addr p2, v0

    add-int/2addr p3, p2

    iput p3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mContentLength:I

    .line 101
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mContentLength:I

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p3, p3, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mContentLength:I

    .line 103
    aput p1, p5, p4

    return-void
.end method

.method protected updateVisibleSlotRange()V
    .locals 4

    .line 35
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mScrollPosition:I

    .line 42
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int v1, v0, v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    .line 43
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    mul-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 44
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v2, v2, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 46
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mSlotCount:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 48
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;->setVisibleRange(II)V

    return-void
.end method
