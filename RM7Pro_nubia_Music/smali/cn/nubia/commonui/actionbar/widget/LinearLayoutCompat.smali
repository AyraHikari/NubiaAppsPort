.class public Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;,
        Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$DividerMode;,
        Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 106
    iput v4, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 113
    iput v3, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 117
    const v0, 0x800033

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    .line 152
    sget-object v0, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, p3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 155
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 156
    if-ltz v1, :cond_0

    .line 157
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 160
    :cond_0
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 161
    if-ltz v1, :cond_1

    .line 162
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setGravity(I)V

    .line 165
    :cond_1
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 166
    if-nez v1, :cond_2

    .line 167
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 170
    :cond_2
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mWeightSum:F

    .line 172
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 173
    invoke-virtual {v0, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 175
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 177
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mShowDividers:I

    .line 179
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 181
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 182
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1313
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    .line 1315
    :goto_0
    if-ge v7, p1, :cond_1

    .line 1316
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1317
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1318
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 1320
    iget v0, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1323
    iget v8, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1324
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1327
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1328
    iput v8, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1315
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1332
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 890
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 892
    :goto_0
    if-ge v7, p1, :cond_1

    .line 893
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 894
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 895
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 897
    iget v0, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 900
    iget v8, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 901
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 904
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 905
    iput v8, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 892
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 909
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 1641
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1642
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1737
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 318
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    .line 319
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 321
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 323
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 327
    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    .line 332
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 320
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v4

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 340
    if-nez v1, :cond_5

    .line 341
    if-eqz v3, :cond_4

    .line 342
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .line 354
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 356
    :cond_3
    return-void

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 347
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 348
    if-eqz v3, :cond_6

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 351
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 291
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    .line 292
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 295
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v3

    .line 299
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 292
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    if-nez v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    .line 313
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 315
    :cond_2
    return-void

    .line 310
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 360
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 359
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 365
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 366
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 365
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 368
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1720
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    if-nez v0, :cond_0

    .line 1721
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 1725
    :goto_0
    return-object v0

    .line 1722
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1723
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1725
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .prologue
    .line 1707
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 1730
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 419
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v1, :cond_1

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gt v1, v2, :cond_2

    .line 424
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 431
    if-ne v3, v0, :cond_3

    .line 432
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-eqz v1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_3
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 450
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 451
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    .line 452
    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    .line 453
    sparse-switch v1, :sswitch_data_0

    :cond_4
    move v1, v0

    .line 466
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 467
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    .line 455
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 456
    goto :goto_1

    .line 459
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1397
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 561
    if-nez p1, :cond_2

    .line 562
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 562
    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 564
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 565
    :cond_3
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 567
    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 568
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 567
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 575
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 22

    .prologue
    .line 1517
    invoke-static/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v11

    .line 1524
    sub-int v2, p4, p2

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int v15, v2, v3

    .line 1528
    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int v16, v2, v3

    .line 1530
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v17

    .line 1532
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    const v3, 0x800007

    and-int/2addr v2, v3

    .line 1533
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v14, v3, 0x70

    .line 1535
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v18, v0

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v19, v0

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v20, v0

    .line 1540
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1541
    invoke-static {v2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v12

    .line 1558
    :goto_0
    const/4 v3, 0x0

    .line 1559
    const/4 v2, 0x1

    .line 1561
    if-eqz v4, :cond_7

    .line 1562
    add-int/lit8 v3, v17, -0x1

    .line 1563
    const/4 v2, -0x1

    move v9, v2

    move v10, v3

    .line 1566
    :goto_1
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 1567
    mul-int v2, v9, v13

    add-int v21, v10, v2

    .line 1568
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1570
    if-nez v3, :cond_0

    .line 1571
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    move v2, v13

    .line 1566
    :goto_3
    add-int/lit8 v13, v2, 0x1

    goto :goto_2

    .line 1544
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v12, v2, v3

    .line 1545
    goto :goto_0

    .line 1549
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    sub-int v3, p3, p1

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .line 1550
    goto :goto_0

    .line 1572
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    .line 1573
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1574
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1575
    const/4 v4, -0x1

    .line 1578
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 1580
    if-eqz v18, :cond_5

    iget v2, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 1581
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1584
    :goto_4
    iget v4, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1585
    if-gez v4, :cond_1

    move v4, v14

    .line 1589
    :cond_1
    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_1

    move v5, v11

    .line 1625
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1626
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, v12

    .line 1629
    :goto_6
    iget v4, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v12, v2, v4

    .line 1630
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1632
    iget v2, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    .line 1633
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1635
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v13

    goto/16 :goto_3

    .line 1591
    :sswitch_2
    iget v4, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v5, v11, v4

    .line 1592
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1593
    const/4 v4, 0x1

    aget v4, v19, v4

    sub-int v2, v4, v2

    add-int/2addr v5, v2

    goto :goto_5

    .line 1609
    :sswitch_3
    sub-int v2, v16, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    iget v4, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1611
    goto :goto_5

    .line 1614
    :sswitch_4
    sub-int v4, v15, v7

    iget v5, v8, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int v5, v4, v5

    .line 1615
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1616
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v4, v2

    .line 1617
    const/4 v4, 0x2

    aget v4, v20, v4

    sub-int v2, v4, v2

    sub-int/2addr v5, v2

    .line 1618
    goto :goto_5

    .line 1638
    :cond_3
    return-void

    :cond_4
    move v2, v12

    goto :goto_6

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v13

    goto/16 :goto_3

    :cond_7
    move v9, v2

    move v10, v3

    goto/16 :goto_1

    .line 1541
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1589
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 14

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v9

    .line 1428
    sub-int v0, p3, p1

    .line 1429
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1432
    sub-int/2addr v0, v9

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 1434
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1436
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    .line 1437
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    const v2, 0x800007

    and-int v7, v1, v2

    .line 1439
    sparse-switch v0, :sswitch_data_0

    .line 1452
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .line 1456
    :goto_0
    const/4 v8, 0x0

    move v3, v0

    :goto_1
    if-ge v8, v12, :cond_2

    .line 1457
    invoke-virtual {p0, v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1458
    if-nez v1, :cond_0

    .line 1459
    invoke-virtual {p0, v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v8

    .line 1456
    :goto_2
    add-int/lit8 v8, v0, 0x1

    goto :goto_1

    .line 1442
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1443
    goto :goto_0

    .line 1447
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1448
    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 1461
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1462
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1465
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 1467
    iget v0, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1468
    if-gez v0, :cond_1

    move v0, v7

    .line 1471
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1472
    invoke-static {v0, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1474
    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    .line 1486
    iget v0, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v2, v9, v0

    .line 1490
    :goto_3
    invoke-virtual {p0, v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1491
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v3

    .line 1494
    :goto_4
    iget v3, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v13, v0, v3

    .line 1495
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v13, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1497
    iget v0, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v13, v0

    .line 1499
    invoke-virtual {p0, v1, v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_2

    .line 1476
    :sswitch_2
    sub-int v0, v11, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    iget v2, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int v2, v0, v2

    .line 1478
    goto :goto_3

    .line 1481
    :sswitch_3
    sub-int v0, v10, v4

    iget v2, v6, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int v2, v0, v2

    .line 1482
    goto :goto_3

    .line 1502
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v8

    goto/16 :goto_2

    .line 1439
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1474
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    .prologue
    .line 1373
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1375
    return-void
.end method

.method measureHorizontal(II)V
    .locals 29

    .prologue
    .line 923
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 924
    const/16 v20, 0x0

    .line 925
    const/16 v19, 0x0

    .line 926
    const/4 v14, 0x0

    .line 927
    const/4 v13, 0x0

    .line 928
    const/16 v18, 0x1

    .line 929
    const/4 v6, 0x0

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v22

    .line 933
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 934
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 936
    const/4 v12, 0x0

    .line 937
    const/16 v16, 0x0

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 940
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 941
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 944
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v25, v0

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v26, v0

    .line 947
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v25, v7

    aput v8, v25, v5

    aput v8, v25, v4

    aput v8, v25, v3

    .line 948
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v26, v7

    aput v8, v26, v5

    aput v8, v26, v4

    aput v8, v26, v3

    .line 950
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v27, v0

    .line 951
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v28, v0

    .line 953
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    .line 955
    :goto_0
    const/high16 v15, -0x80000000

    .line 958
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v5, v0, :cond_14

    .line 959
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 961
    if-nez v4, :cond_3

    .line 962
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v15

    move/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    .line 958
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v3

    move/from16 v16, v4

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_1

    .line 953
    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    .line 966
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_4

    .line 967
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v15

    move/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    .line 968
    goto :goto_2

    .line 971
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 972
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 976
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 978
    iget v3, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v17, v6, v3

    .line 980
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    iget v3, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_a

    iget v3, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 984
    if-eqz v11, :cond_8

    .line 985
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 997
    :goto_3
    if-eqz v27, :cond_9

    .line 998
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 999
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 1042
    :cond_6
    :goto_4
    const/4 v3, 0x0

    .line 1043
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v6, :cond_35

    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_35

    .line 1047
    const/4 v6, 0x1

    .line 1048
    const/4 v3, 0x1

    .line 1051
    :goto_5
    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v8, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    .line 1052
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    .line 1054
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v7

    .line 1053
    move/from16 v0, v19

    invoke-static {v0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v12

    .line 1056
    if-eqz v27, :cond_7

    .line 1057
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v19

    .line 1058
    const/4 v7, -0x1

    move/from16 v0, v19

    if-eq v0, v7, :cond_7

    .line 1061
    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    :goto_6
    and-int/lit8 v7, v7, 0x70

    .line 1063
    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    .line 1066
    aget v21, v25, v7

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    aput v21, v25, v7

    .line 1067
    aget v21, v26, v7

    sub-int v19, v9, v19

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    aput v19, v26, v7

    .line 1071
    :cond_7
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1073
    if-eqz v18, :cond_10

    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_10

    const/4 v7, 0x1

    .line 1074
    :goto_7
    iget v10, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/16 v18, 0x0

    cmpl-float v10, v10, v18

    if-lez v10, :cond_12

    .line 1079
    if-eqz v3, :cond_11

    move v3, v8

    :goto_8
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v14

    .line 1086
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move/from16 v4, v16

    move v13, v3

    move v14, v8

    move/from16 v9, v19

    move v3, v15

    move v8, v12

    move v12, v6

    move/from16 v6, v17

    goto/16 :goto_2

    .line 987
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 988
    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_3

    .line 1001
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 1004
    :cond_a
    const/high16 v3, -0x80000000

    .line 1006
    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v6, :cond_b

    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 1011
    const/4 v3, 0x0

    .line 1012
    const/4 v6, -0x2

    iput v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_b
    move/from16 v21, v3

    .line 1019
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_a
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1023
    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_c

    .line 1024
    move/from16 v0, v21

    iput v0, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1027
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1028
    if-eqz v11, :cond_e

    .line 1029
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 1030
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1037
    :goto_b
    if-eqz v28, :cond_6

    .line 1038
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto/16 :goto_4

    .line 1019
    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    .line 1032
    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1033
    add-int v7, v6, v3

    iget v8, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 1034
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1033
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_b

    .line 1061
    :cond_f
    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto/16 :goto_6

    .line 1073
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_11
    move v3, v9

    .line 1079
    goto/16 :goto_8

    .line 1082
    :cond_12
    if-eqz v3, :cond_13

    :goto_c
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v13

    goto/16 :goto_9

    :cond_13
    move v8, v9

    goto :goto_c

    .line 1089
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1090
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1095
    :cond_15
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_34

    .line 1099
    :cond_16
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    .line 1101
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1100
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1099
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1102
    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v7, 0x1

    aget v7, v26, v7

    const/4 v8, 0x2

    aget v8, v26, v8

    .line 1104
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1103
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1102
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1105
    add-int/2addr v3, v4

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1108
    :goto_d
    if-eqz v28, :cond_1b

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_17

    if-nez v23, :cond_1b

    .line 1110
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1112
    const/4 v4, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v4, v0, :cond_1b

    .line 1113
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1115
    if-nez v7, :cond_18

    .line 1116
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    .line 1112
    :goto_f
    add-int/lit8 v4, v3, 0x1

    goto :goto_e

    .line 1120
    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_19

    .line 1121
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 1122
    goto :goto_f

    .line 1126
    :cond_19
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 1127
    if-eqz v11, :cond_1a

    .line 1128
    move-object/from16 v0, p0

    iget v8, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    iget v9, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v15

    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    .line 1129
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_f

    .line 1131
    :cond_1a
    move-object/from16 v0, p0

    iget v8, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1132
    add-int v9, v8, v15

    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    .line 1133
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    .line 1132
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_f

    .line 1139
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1141
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1147
    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v17

    .line 1148
    const v3, 0xffffff

    and-int v3, v3, v17

    .line 1153
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v4, v3, v4

    .line 1154
    if-nez v16, :cond_1c

    if-eqz v4, :cond_2d

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_2d

    .line 1155
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1d

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mWeightSum:F

    .line 1157
    :cond_1d
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v25, v8

    aput v9, v25, v7

    aput v9, v25, v5

    aput v9, v25, v3

    .line 1158
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v26, v8

    aput v9, v26, v7

    aput v9, v26, v5

    aput v9, v26, v3

    .line 1159
    const/4 v8, -0x1

    .line 1161
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1163
    const/4 v3, 0x0

    move v15, v3

    move v5, v6

    move/from16 v9, v18

    move v10, v14

    move/from16 v7, v19

    move v6, v4

    move v14, v8

    :goto_10
    move/from16 v0, v22

    if-ge v15, v0, :cond_29

    .line 1164
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1166
    if-eqz v16, :cond_33

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1e

    move v3, v5

    move v4, v6

    move v8, v14

    move v6, v10

    move v5, v9

    .line 1163
    :goto_11
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v10, v6

    move v14, v8

    move v9, v5

    move v6, v4

    move v5, v3

    goto :goto_10

    .line 1171
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 1173
    iget v8, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1174
    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_32

    .line 1176
    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1177
    sub-float/2addr v5, v8

    .line 1178
    sub-int v8, v6, v4

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v13

    add-int/2addr v6, v13

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v6, v13

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v13

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1180
    move/from16 v0, p2

    invoke-static {v0, v6, v13}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v6

    .line 1187
    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v13, :cond_1f

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v13, :cond_22

    .line 1190
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v4, v13

    .line 1191
    if-gez v4, :cond_20

    .line 1192
    const/4 v4, 0x0

    .line 1195
    :cond_20
    const/high16 v13, 0x40000000    # 2.0f

    .line 1196
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1195
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    .line 1207
    :goto_12
    invoke-static/range {v16 .. v16}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v4

    const/high16 v6, -0x1000000

    and-int/2addr v4, v6

    .line 1206
    invoke-static {v7, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v13

    move v7, v5

    .line 1210
    :goto_13
    if-eqz v11, :cond_24

    .line 1211
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1219
    :goto_14
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v4, :cond_25

    iget v4, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    .line 1222
    :goto_15
    iget v5, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v6, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1223
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 1224
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1225
    if-eqz v4, :cond_26

    move v4, v5

    :goto_16
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1228
    if-eqz v9, :cond_27

    iget v4, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_27

    const/4 v4, 0x1

    .line 1230
    :goto_17
    if-eqz v27, :cond_21

    .line 1231
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1232
    const/4 v10, -0x1

    if-eq v9, v10, :cond_21

    .line 1234
    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_28

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    :goto_18
    and-int/lit8 v3, v3, 0x70

    .line 1236
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1239
    aget v10, v25, v3

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v25, v3

    .line 1240
    aget v10, v26, v3

    sub-int/2addr v6, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v26, v3

    :cond_21
    move v3, v7

    move v6, v5

    move v5, v4

    move v7, v13

    move v4, v8

    move v8, v14

    goto/16 :goto_11

    .line 1200
    :cond_22
    if-lez v4, :cond_23

    :goto_19
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_12

    :cond_23
    const/4 v4, 0x0

    goto :goto_19

    .line 1214
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1215
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1215
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_14

    .line 1219
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_26
    move v4, v6

    .line 1225
    goto :goto_16

    .line 1228
    :cond_27
    const/4 v4, 0x0

    goto :goto_17

    .line 1234
    :cond_28
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto :goto_18

    .line 1247
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1252
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 1256
    :cond_2a
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    .line 1258
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1257
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1256
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1259
    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    const/4 v8, 0x2

    aget v8, v26, v8

    .line 1261
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1260
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1259
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1262
    add-int/2addr v3, v4

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_2b
    move/from16 v18, v9

    move v3, v10

    move/from16 v19, v7

    move v4, v14

    .line 1291
    :goto_1a
    if-nez v18, :cond_30

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v5, :cond_30

    .line 1295
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1300
    const/high16 v4, -0x1000000

    and-int v4, v4, v19

    or-int v4, v4, v17

    shl-int/lit8 v5, v19, 0x10

    .line 1301
    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    .line 1300
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1304
    if-eqz v12, :cond_2c

    .line 1305
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    .line 1307
    :cond_2c
    return-void

    .line 1265
    :cond_2d
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1269
    if-eqz v28, :cond_31

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_31

    .line 1270
    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    move/from16 v0, v22

    if-ge v4, v0, :cond_31

    .line 1271
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1273
    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_2f

    .line 1270
    :cond_2e
    :goto_1d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1c

    .line 1278
    :cond_2f
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 1280
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1281
    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2e

    .line 1282
    const/high16 v3, 0x40000000    # 2.0f

    .line 1283
    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1284
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1282
    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1d

    :cond_30
    move v3, v4

    goto :goto_1b

    :cond_31
    move v3, v10

    move v4, v5

    goto/16 :goto_1a

    :cond_32
    move v8, v6

    move v13, v7

    move v7, v5

    goto/16 :goto_13

    :cond_33
    move v3, v5

    move v4, v6

    move v8, v14

    move v6, v10

    move v5, v9

    goto/16 :goto_11

    :cond_34
    move/from16 v5, v20

    goto/16 :goto_d

    :cond_35
    move v6, v12

    goto/16 :goto_5
.end method

.method measureNullChild(I)I
    .locals 1

    .prologue
    .line 1354
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 27

    .prologue
    .line 590
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 591
    const/16 v19, 0x0

    .line 592
    const/16 v18, 0x0

    .line 593
    const/4 v13, 0x0

    .line 594
    const/4 v12, 0x0

    .line 595
    const/16 v17, 0x1

    .line 596
    const/4 v6, 0x0

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v21

    .line 600
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 601
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 603
    const/4 v11, 0x0

    .line 604
    const/4 v15, 0x0

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move/from16 v24, v0

    .line 607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v25, v0

    .line 609
    const/high16 v14, -0x80000000

    .line 612
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v5, v0, :cond_e

    .line 613
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 615
    if-nez v4, :cond_0

    .line 616
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v14

    move v4, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .line 612
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v14, v3

    move v15, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    .line 621
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v14

    move v4, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .line 622
    goto :goto_1

    .line 625
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 626
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 629
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 631
    iget v3, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v16, v6, v3

    .line 633
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    iget v3, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_5

    iget v3, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 637
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 638
    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 639
    const/4 v15, 0x1

    .line 678
    :cond_3
    :goto_2
    if-ltz v24, :cond_4

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    .line 679
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 685
    :cond_4
    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    iget v3, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 686
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    :cond_5
    const/high16 v3, -0x80000000

    .line 643
    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v6, :cond_6

    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 648
    const/4 v3, 0x0

    .line 649
    const/4 v6, -0x2

    iput v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_6
    move/from16 v20, v3

    .line 656
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 660
    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_7

    .line 661
    move/from16 v0, v20

    iput v0, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 664
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 665
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 666
    add-int v7, v6, v3

    iget v8, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 667
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 666
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 669
    if-eqz v25, :cond_3

    .line 670
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    .line 656
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 692
    :cond_9
    const/4 v3, 0x0

    .line 693
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v6, :cond_26

    iget v6, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_26

    .line 698
    const/4 v6, 0x1

    .line 699
    const/4 v3, 0x1

    .line 702
    :goto_4
    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v8, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    .line 703
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v9, v7, v8

    .line 704
    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 706
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v7

    .line 705
    move/from16 v0, v18

    invoke-static {v0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v11

    .line 708
    if-eqz v17, :cond_a

    iget v7, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    const/4 v7, 0x1

    .line 709
    :goto_5
    iget v10, v10, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/16 v17, 0x0

    cmpl-float v10, v10, v17

    if-lez v10, :cond_c

    .line 714
    if-eqz v3, :cond_b

    move v3, v8

    :goto_6
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v13

    .line 721
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v15

    move v12, v3

    move v13, v8

    move/from16 v9, v19

    move v3, v14

    move v8, v11

    move v11, v6

    move/from16 v6, v16

    goto/16 :goto_1

    .line 708
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    move v3, v9

    .line 714
    goto :goto_6

    .line 717
    :cond_c
    if-eqz v3, :cond_d

    :goto_8
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v12

    goto :goto_7

    :cond_d
    move v8, v9

    goto :goto_8

    .line 724
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 725
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 728
    :cond_f
    if-eqz v25, :cond_13

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_10

    if-nez v23, :cond_13

    .line 730
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 732
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v4, v0, :cond_13

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 735
    if-nez v5, :cond_11

    .line 736
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    .line 732
    :goto_a
    add-int/lit8 v4, v3, 0x1

    goto :goto_9

    .line 740
    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_12

    .line 741
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 742
    goto :goto_a

    .line 746
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 748
    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 749
    add-int v8, v7, v14

    iget v9, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 749
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_a

    .line 755
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 757
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 763
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v16

    .line 764
    const v3, 0xffffff

    and-int v3, v3, v16

    .line 769
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v4, v3, v4

    .line 770
    if-nez v15, :cond_14

    if-eqz v4, :cond_20

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_20

    .line 771
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mWeightSum:F

    .line 773
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 775
    const/4 v3, 0x0

    move v14, v3

    move v5, v6

    move/from16 v9, v17

    move v10, v13

    move/from16 v7, v18

    move/from16 v12, v19

    move v6, v4

    :goto_b
    move/from16 v0, v21

    if-ge v14, v0, :cond_1e

    .line 776
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 778
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    move v3, v10

    move v4, v7

    move v8, v12

    move v7, v9

    .line 775
    :goto_c
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v10, v3

    move v12, v8

    move v9, v7

    move v7, v4

    goto :goto_b

    .line 782
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 784
    iget v8, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 785
    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_25

    .line 787
    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 788
    sub-float/2addr v5, v8

    .line 789
    sub-int/2addr v6, v4

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v13

    add-int/2addr v8, v13

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v8, v13

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v13

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 791
    move/from16 v0, p1

    invoke-static {v0, v8, v13}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v8

    .line 797
    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v13, :cond_17

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v13, :cond_19

    .line 800
    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v4, v13

    .line 801
    if-gez v4, :cond_18

    .line 802
    const/4 v4, 0x0

    .line 805
    :cond_18
    const/high16 v13, 0x40000000    # 2.0f

    .line 806
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 805
    invoke-virtual {v15, v8, v4}, Landroid/view/View;->measure(II)V

    .line 817
    :goto_d
    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 816
    invoke-static {v7, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v4

    move/from16 v26, v5

    move v5, v6

    move v6, v4

    move/from16 v4, v26

    .line 821
    :goto_e
    iget v7, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v8, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 822
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    .line 823
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 825
    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v13, :cond_1b

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_1b

    const/4 v13, 0x1

    .line 828
    :goto_f
    if-eqz v13, :cond_1c

    :goto_10
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 831
    if-eqz v9, :cond_1d

    iget v7, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1d

    const/4 v7, 0x1

    .line 833
    :goto_11
    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    .line 834
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v9

    iget v13, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v13

    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v10

    .line 835
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v10

    add-int/2addr v3, v10

    .line 834
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v8

    move v8, v12

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    goto/16 :goto_c

    .line 810
    :cond_19
    if-lez v4, :cond_1a

    :goto_12
    const/high16 v13, 0x40000000    # 2.0f

    .line 811
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 810
    invoke-virtual {v15, v8, v4}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    goto :goto_12

    .line 825
    :cond_1b
    const/4 v13, 0x0

    goto :goto_f

    :cond_1c
    move v7, v8

    .line 828
    goto :goto_10

    .line 831
    :cond_1d
    const/4 v7, 0x0

    goto :goto_11

    .line 839
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v17, v9

    move v3, v10

    move/from16 v18, v7

    move v4, v12

    .line 871
    :goto_13
    if-nez v17, :cond_23

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_23

    .line 875
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 880
    move/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 883
    if-eqz v11, :cond_1f

    .line 884
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 886
    :cond_1f
    return-void

    .line 842
    :cond_20
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 848
    if-eqz v25, :cond_24

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_24

    .line 849
    const/4 v3, 0x0

    move v4, v3

    :goto_15
    move/from16 v0, v21

    if-ge v4, v0, :cond_24

    .line 850
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 852
    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_22

    .line 849
    :cond_21
    :goto_16
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_15

    .line 857
    :cond_22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    .line 859
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 860
    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_21

    .line 862
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 864
    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 861
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_23
    move v3, v4

    goto :goto_14

    :cond_24
    move v3, v10

    move/from16 v4, v19

    goto/16 :goto_13

    :cond_25
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_e

    :cond_26
    move v6, v11

    goto/16 :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 1741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1743
    const-class v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1745
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 1748
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1749
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1750
    const-class v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1752
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 1402
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1403
    invoke-virtual {p0, p2, p3, p4, p5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    .line 1407
    :goto_0
    return-void

    .line 1405
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 547
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureVertical(II)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .prologue
    .line 388
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 389
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3

    .prologue
    .line 484
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 489
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 233
    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 235
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 240
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 241
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->requestLayout()V

    goto :goto_0

    .line 237
    :cond_2
    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 238
    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 255
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .prologue
    .line 1675
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 1676
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1677
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 1680
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 1681
    or-int/lit8 v0, v0, 0x30

    .line 1684
    :cond_0
    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    .line 1685
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->requestLayout()V

    .line 1687
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 3

    .prologue
    const v2, 0x800007

    .line 1690
    and-int v0, p1, v2

    .line 1691
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1692
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    .line 1693
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->requestLayout()V

    .line 1695
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .prologue
    .line 414
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 415
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 1650
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1651
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mOrientation:I

    .line 1652
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->requestLayout()V

    .line 1654
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->requestLayout()V

    .line 195
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mShowDividers:I

    .line 196
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .prologue
    .line 1698
    and-int/lit8 v0, p1, 0x70

    .line 1699
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1700
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mGravity:I

    .line 1701
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->requestLayout()V

    .line 1703
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->mWeightSum:F

    .line 542
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method
