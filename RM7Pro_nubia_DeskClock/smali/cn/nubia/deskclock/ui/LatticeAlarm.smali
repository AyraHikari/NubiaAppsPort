.class public Lcn/nubia/deskclock/ui/LatticeAlarm;
.super Lcn/nubia/deskclock/ui/LatticeBaseView;
.source "LatticeAlarm.java"


# static fields
.field private static final height:F

.field private static final rect_alpha_charge_0:[[I

.field private static final width:F


# instance fields
.field private arrs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x11

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->rect_alpha_charge_0:[[I

    .line 32
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->rect_alpha_charge_0:[[I

    aget-object v0, v0, v4

    array-length v0, v0

    int-to-float v0, v0

    sget v1, Lcn/nubia/deskclock/ui/LatticeAlarm;->LATTICE_UNIT_WIDTH:F

    mul-float/2addr v0, v1

    sput v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->width:F

    .line 33
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->rect_alpha_charge_0:[[I

    array-length v0, v0

    int-to-float v0, v0

    sget v1, Lcn/nubia/deskclock/ui/LatticeAlarm;->LATTICE_UNIT_WIDTH:F

    mul-float/2addr v0, v1

    sput v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->height:F

    .line 34
    return-void

    .line 11
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeBaseView;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->rect_alpha_charge_0:[[I

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarm;->arrs:[[I

    .line 39
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarm;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/LatticeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->rect_alpha_charge_0:[[I

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarm;->arrs:[[I

    .line 44
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarm;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/ui/LatticeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->rect_alpha_charge_0:[[I

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarm;->arrs:[[I

    .line 49
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarm;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarm;->setDrawPaint()V

    .line 54
    return-void
.end method

.method private setDrawPaint()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarm;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarm;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarm;->arrs:[[I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/deskclock/ui/LatticeAlarm;->drawIconByArrs(Landroid/graphics/Canvas;[[I)V

    .line 70
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcn/nubia/deskclock/ui/LatticeBaseView;->onMeasure(II)V

    .line 59
    sget v0, Lcn/nubia/deskclock/ui/LatticeAlarm;->width:F

    float-to-int v0, v0

    sget v1, Lcn/nubia/deskclock/ui/LatticeAlarm;->height:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/deskclock/ui/LatticeAlarm;->setMeasuredDimension(II)V

    .line 60
    return-void
.end method
