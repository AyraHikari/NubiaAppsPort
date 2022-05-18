.class public Lcn/nubia/gallery3d/ui/layout/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;,
        Lcn/nubia/gallery3d/ui/layout/Layout$Spec;
    }
.end annotation


# instance fields
.field protected INDEX_NONE:I

.field public WIDE:Z

.field protected mContentLength:I

.field protected mHeight:I

.field public mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

.field protected mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mScrollPosition:I

.field protected mSlotCount:I

.field protected mSlotGap:I

.field protected mSlotHeight:I

.field protected mSlotWidth:I

.field protected mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

.field protected mUnitCount:I

.field public mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

.field protected mVisibleEnd:I

.field private mVisibleStart:I

.field protected mWidth:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    .line 75
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    .line 82
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    .line 83
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    .line 92
    new-instance v0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    .line 93
    new-instance v0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    .line 96
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    .line 97
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    return-void
.end method

.method private getSlotIndex(FF)I
    .locals 7

    .line 292
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScrollPosition:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 293
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScrollPosition:I

    :goto_1
    add-int/2addr p2, v1

    .line 295
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-ltz p1, :cond_a

    if-gez p2, :cond_2

    goto :goto_3

    .line 302
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int v2, v0, v1

    div-int v2, p1, v2

    .line 303
    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    add-int v4, v3, v1

    div-int v4, p2, v4

    .line 305
    iget-boolean v5, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-nez v5, :cond_3

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    if-lt v2, v6, :cond_3

    .line 306
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    return p1

    :cond_3
    if-eqz v5, :cond_4

    .line 309
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    if-lt v4, v5, :cond_4

    .line 310
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    return p1

    :cond_4
    add-int v5, v0, v1

    .line 313
    rem-int/2addr p1, v5

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_5

    .line 314
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    return p1

    :cond_5
    add-int/2addr v1, v3

    .line 317
    rem-int/2addr p2, v1

    if-lt p2, v3, :cond_6

    .line 318
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    return p1

    .line 321
    :cond_6
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 322
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v2, p1

    add-int/lit8 p1, p1, -0x1

    add-int/2addr v2, p1

    sub-int/2addr v2, v4

    goto :goto_2

    :cond_7
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v4, p1

    add-int/lit8 p1, p1, -0x1

    add-int/2addr v4, p1

    sub-int v2, v4, v2

    goto :goto_2

    .line 324
    :cond_8
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v2, p1

    add-int/2addr v2, v4

    goto :goto_2

    :cond_9
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    move v2, v4

    :goto_2
    return v2

    .line 299
    :cond_a
    :goto_3
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    return p1
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2

    .line 336
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->calculate(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getClusterIndexByPosition(FFLcn/nubia/gallery3d/ui/ClusterHeader;)I
    .locals 0

    .line 287
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    return p1
.end method

.method public getIndexOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollLimit()I
    .locals 2

    .line 330
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mContentLength:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mContentLength:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    :goto_0
    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getScrolledPosition()I
    .locals 1

    .line 340
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScrollPosition:I

    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 117
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    return v0
.end method

.method public getSlotGap()I
    .locals 1

    .line 147
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .line 143
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndex(FF)I

    move-result p1

    .line 283
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->INDEX_NONE:I

    :cond_0
    return p1
.end method

.method public getSlotMaxIndexByPosition(FF)I
    .locals 0

    .line 277
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndex(FF)I

    move-result p1

    .line 278
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    if-lt p1, p2, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 122
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 126
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    move v4, v1

    move v1, p1

    move p1, v4

    .line 129
    :goto_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int v1, v0, v1

    .line 132
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v1, p1

    .line 134
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    add-int/2addr p1, v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .line 139
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 269
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 265
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleStart:I

    return v0
.end method

.method public initDone()Z
    .locals 2

    .line 349
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initLayoutParameters()V
    .locals 12

    .line 186
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 187
    iput v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    .line 188
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    .line 189
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    goto :goto_2

    .line 191
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 192
    :goto_0
    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v4, v4, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGapLand:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v4, v4, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    :goto_1
    iput v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    .line 193
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v4

    sub-int/2addr v5, v6

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v4, v4, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    mul-int/2addr v4, v1

    sub-int/2addr v5, v4

    div-int/2addr v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    .line 194
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v4, v4, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeightAdditional:I

    add-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    .line 197
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_3

    .line 198
    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    invoke-interface {v0, v4, v5}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    :cond_3
    new-array v0, v1, [I

    .line 202
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-eqz v1, :cond_4

    .line 203
    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    iget v9, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    iget v10, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    move-object v6, p0

    move-object v11, v0

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/gallery3d/ui/layout/Layout;->initLayoutParameters(IIII[I)V

    .line 204
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 205
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    goto :goto_3

    .line 207
    :cond_4
    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    iget v9, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    iget v10, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    move-object v6, p0

    move-object v11, v0

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/gallery3d/ui/layout/Layout;->initLayoutParameters(IIII[I)V

    .line 208
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 209
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 211
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/Layout;->updateVisibleSlotRange()V

    return-void
.end method

.method protected initLayoutParameters(IIII[I)V
    .locals 0

    .line 166
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int/2addr p2, p1

    add-int/2addr p4, p1

    div-int/2addr p2, p4

    const/4 p4, 0x1

    if-nez p2, :cond_0

    move p2, p4

    .line 168
    :cond_0
    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    .line 174
    iget p5, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    add-int/2addr p5, p2

    sub-int/2addr p5, p4

    .line 175
    div-int/2addr p5, p2

    mul-int/2addr p3, p5

    sub-int/2addr p5, p4

    mul-int/2addr p5, p1

    add-int/2addr p3, p5

    .line 176
    iput p3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mContentLength:I

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    .line 221
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScreenWidth:I

    .line 222
    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScreenHeight:I

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 1

    .line 246
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 247
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScrollPosition:I

    .line 248
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/Layout;->updateVisibleSlotRange()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 215
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    .line 216
    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    .line 217
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/Layout;->initLayoutParameters()V

    return-void
.end method

.method public setSlotCount(I)Z
    .locals 5

    .line 101
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->setEnabled(Z)V

    .line 106
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    const/4 v2, 0x1

    if-eq v0, p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 107
    :goto_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    .line 108
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->getTarget()I

    move-result p1

    .line 109
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->getTarget()I

    move-result v3

    .line 110
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/Layout;->initLayoutParameters()V

    .line 111
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    .line 112
    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->getTarget()I

    move-result v3

    if-ne p1, v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method protected setVisibleRange(II)V
    .locals 1

    .line 252
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-ge p1, p2, :cond_1

    .line 254
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleStart:I

    .line 255
    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleEnd:I

    goto :goto_0

    .line 257
    :cond_1
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleEnd:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleStart:I

    .line 259
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz p1, :cond_2

    .line 260
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleStart:I

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mVisibleEnd:I

    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    :cond_2
    return-void
.end method

.method protected updateVisibleSlotRange()V
    .locals 4

    .line 226
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mScrollPosition:I

    .line 227
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 228
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int/2addr v1, v3

    div-int v1, v0, v1

    .line 229
    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 230
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotWidth:I

    add-int/2addr v0, v2

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 232
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->setVisibleRange(II)V

    goto :goto_0

    .line 235
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int/2addr v1, v3

    div-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 236
    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 237
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotHeight:I

    add-int/2addr v0, v2

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotGap:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 239
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mSlotCount:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/Layout;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 241
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->setVisibleRange(II)V

    :goto_0
    return-void
.end method
