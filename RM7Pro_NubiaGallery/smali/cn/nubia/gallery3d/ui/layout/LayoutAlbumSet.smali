.class public Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;
.super Lcn/nubia/gallery3d/ui/layout/Layout;
.source "LayoutAlbumSet.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "LayoutAlbumSet"

.field public static mSpecialHeight:I

.field public static mSpecialLandscapeHeight:I

.field public static mSpecialLandscapeWidth:I

.field public static mSpecialPortraitHeight:I

.field public static mSpecialPortraitWidth:I

.field public static mSpecialWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    return-void
.end method


# virtual methods
.method public getSlotIndexByPosition(FF)I
    .locals 4

    .line 67
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mScrollPosition:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 68
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mScrollPosition:I

    :goto_1
    add-int/2addr p2, v1

    .line 70
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    sub-int/2addr p1, v0

    .line 71
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p1, :cond_d

    if-gez p2, :cond_2

    goto/16 :goto_4

    .line 77
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int/2addr p1, v0

    .line 78
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int/2addr p2, v0

    if-ltz p1, :cond_c

    if-gez p2, :cond_3

    goto/16 :goto_3

    .line 83
    :cond_3
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v0, v1

    div-int v0, p1, v0

    .line 84
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v1, v2

    div-int v1, p2, v1

    .line 86
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    if-lt v0, v2, :cond_4

    .line 87
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    return p1

    .line 90
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    if-lt v1, v2, :cond_5

    .line 91
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    return p1

    .line 94
    :cond_5
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    rem-int/2addr p1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    if-lt p1, v2, :cond_6

    .line 95
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    return p1

    .line 98
    :cond_6
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr p1, v2

    rem-int/2addr p2, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    if-lt p2, p1, :cond_7

    .line 99
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    return p1

    .line 101
    :cond_7
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    .line 102
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 103
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    add-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_8
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v1, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    add-int/lit8 p1, p1, -0x1

    add-int/2addr v1, p1

    sub-int v0, v1, v0

    goto :goto_2

    .line 105
    :cond_9
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_a
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    move v0, v1

    .line 107
    :goto_2
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotCount:I

    if-lt v0, p1, :cond_b

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    :cond_b
    return v0

    .line 80
    :cond_c
    :goto_3
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    return p1

    .line 74
    :cond_d
    :goto_4
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->INDEX_NONE:I

    return p1
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 29
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    if-eqz v0, :cond_0

    .line 30
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    div-int v0, p1, v0

    .line 31
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    .line 33
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    div-int v0, p1, v0

    .line 34
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    move v4, v0

    move v0, p1

    move p1, v4

    .line 36
    :goto_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 39
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 40
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 42
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v1, p1

    .line 43
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, p1

    .line 44
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    add-int/2addr p1, v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    add-int/2addr v2, v0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method protected initLayoutParameters()V
    .locals 10

    .line 126
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    .line 129
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    goto :goto_1

    .line 131
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHeight:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 132
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v2, v2, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    iput v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    .line 133
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mWidth:I

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v3, v3, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    .line 134
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    .line 137
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    invoke-interface {v0, v2, v3}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    :cond_2
    new-array v0, v1, [I

    .line 142
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->WIDE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 143
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mWidth:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHeight:I

    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    move-object v4, p0

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->initLayoutParameters(IIII[I)V

    .line 144
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 145
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    goto :goto_2

    .line 147
    :cond_3
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHeight:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mWidth:I

    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotWidth:I

    move-object v4, p0

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->initLayoutParameters(IIII[I)V

    .line 148
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 149
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->startAnimateTo(I)V

    .line 151
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->updateVisibleSlotRange()V

    return-void
.end method

.method protected initLayoutParameters(IIII[I)V
    .locals 1

    .line 113
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mWidth:I

    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHeight:I

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 114
    :goto_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    const/4 p1, 0x0

    .line 115
    aput p1, p5, p1

    .line 117
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotCount:I

    iget p4, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    add-int/2addr p2, p4

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    div-int/2addr p2, v0

    mul-int/2addr p3, p2

    sub-int/2addr p2, p4

    .line 118
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    mul-int/2addr p2, v0

    add-int/2addr p3, p2

    iput p3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mContentLength:I

    .line 119
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mContentLength:I

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget p3, p3, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mContentLength:I

    .line 121
    aput p1, p5, p4

    return-void
.end method

.method protected updateVisibleSlotRange()V
    .locals 4

    .line 50
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mScrollPosition:I

    .line 57
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int v1, v0, v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    .line 58
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 59
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v2, v2, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 61
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mSlotCount:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;->setVisibleRange(II)V

    return-void
.end method
