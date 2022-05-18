.class public Lcn/nubia/calendar/ui_component/view/ColorChipView;
.super Landroid/view/View;
.source "ColorChipView.java"


# static fields
.field private static final DEF_BORDER_WIDTH:I = 0x4

.field public static final DRAW_BORDER:I = 0x1

.field public static final DRAW_FADED:I = 0x2

.field public static final DRAW_FULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorChipView"


# instance fields
.field mBorderWidth:I

.field mColor:I

.field private mDefStrokeWidth:F

.field private mDrawStyle:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mDrawStyle:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mBorderWidth:I

    .line 56
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/ColorChipView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mDrawStyle:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mBorderWidth:I

    .line 61
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/ColorChipView;->init()V

    .line 62
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mDefStrokeWidth:F

    .line 67
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ColorChipView;->getWidth()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .line 94
    .local v12, "right":I
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ColorChipView;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 95
    .local v6, "bottom":I
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mDrawStyle:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mColor:I

    .line 96
    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->getDeclinedColorFromColor(I)I

    move-result v0

    .line 95
    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mDrawStyle:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_1
    return-void

    .line 96
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mColor:I

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mDefStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    int-to-float v3, v12

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 105
    :pswitch_1
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 108
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mBorderWidth:I

    div-int/lit8 v7, v0, 0x2

    .line 109
    .local v7, "halfBorderWidth":I
    move v13, v7

    .line 110
    .local v13, "top":I
    move v8, v7

    .line 111
    .local v8, "left":I
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    const/16 v0, 0x10

    new-array v9, v0, [F

    .line 114
    .local v9, "lines":[F
    const/4 v10, 0x0

    .line 115
    .local v10, "ptr":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .local v11, "ptr":I
    aput v1, v9, v10

    .line 116
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    int-to-float v0, v13

    aput v0, v9, v11

    .line 117
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v11    # "ptr":I
    int-to-float v0, v12

    aput v0, v9, v10

    .line 118
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    int-to-float v0, v13

    aput v0, v9, v11

    .line 119
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v11    # "ptr":I
    aput v1, v9, v10

    .line 120
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    sub-int v0, v6, v7

    int-to-float v0, v0

    aput v0, v9, v11

    .line 121
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v11    # "ptr":I
    int-to-float v0, v12

    aput v0, v9, v10

    .line 122
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    sub-int v0, v6, v7

    int-to-float v0, v0

    aput v0, v9, v11

    .line 123
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v11    # "ptr":I
    int-to-float v0, v8

    aput v0, v9, v10

    .line 124
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    aput v1, v9, v11

    .line 125
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v11    # "ptr":I
    int-to-float v0, v8

    aput v0, v9, v10

    .line 126
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    int-to-float v0, v6

    aput v0, v9, v11

    .line 127
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v11    # "ptr":I
    sub-int v0, v12, v7

    int-to-float v0, v0

    aput v0, v9, v10

    .line 128
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    aput v1, v9, v11

    .line 129
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v11    # "ptr":I
    sub-int v0, v12, v7

    int-to-float v0, v0

    aput v0, v9, v10

    .line 130
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    int-to-float v0, v6

    aput v0, v9, v11

    .line 131
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBorderWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 79
    if-ltz p1, :cond_0

    .line 80
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mBorderWidth:I

    .line 81
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ColorChipView;->invalidate()V

    .line 83
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 86
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mColor:I

    .line 87
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ColorChipView;->invalidate()V

    .line 88
    return-void
.end method

.method public setDrawStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 71
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/ColorChipView;->mDrawStyle:I

    .line 75
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ColorChipView;->invalidate()V

    goto :goto_0
.end method
