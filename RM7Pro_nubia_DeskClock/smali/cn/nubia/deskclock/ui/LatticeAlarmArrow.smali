.class public Lcn/nubia/deskclock/ui/LatticeAlarmArrow;
.super Lcn/nubia/deskclock/ui/LatticeBaseView;
.source "LatticeAlarmArrow.java"


# static fields
.field private static final MESSAGE_KEY_CHARGE:I = 0xb

.field private static final REFRESH_INTERVAL:I = 0x3e8

.field private static final STATE_LOWRED:I = 0x1

.field private static final STATE_RED:I

.field private static final height:F

.field private static final rect_alpha_charge_0:[[I

.field private static final width:F


# instance fields
.field private arrs:[[I

.field private mColor:I

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 16
    const/4 v0, 0x6

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

    sput-object v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->rect_alpha_charge_0:[[I

    .line 24
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->rect_alpha_charge_0:[[I

    aget-object v0, v0, v4

    array-length v0, v0

    int-to-float v0, v0

    sget v1, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->LATTICE_UNIT_WIDTH:F

    mul-float/2addr v0, v1

    sput v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->width:F

    .line 25
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->rect_alpha_charge_0:[[I

    array-length v0, v0

    int-to-float v0, v0

    sget v1, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->LATTICE_UNIT_WIDTH:F

    mul-float/2addr v0, v1

    sput v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->height:F

    .line 26
    return-void

    .line 16
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeBaseView;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->rect_alpha_charge_0:[[I

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->arrs:[[I

    .line 76
    new-instance v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;-><init>(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/LatticeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->rect_alpha_charge_0:[[I

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->arrs:[[I

    .line 76
    new-instance v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;-><init>(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/ui/LatticeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->rect_alpha_charge_0:[[I

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->arrs:[[I

    .line 76
    new-instance v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;-><init>(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)[[I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->arrs:[[I

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .prologue
    .line 12
    iget v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mColor:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->setDrawLowRedPaint()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->setDrawRedPaint()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->handleSendDelayMessage()V

    return-void
.end method

.method private handleSendDelayMessage()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 106
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->setDrawRedPaint()V

    .line 50
    return-void
.end method

.method private setDrawLowRedPaint()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#800000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mColor:I

    .line 68
    return-void
.end method

.method private setDrawRedPaint()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mColor:I

    .line 62
    return-void
.end method


# virtual methods
.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->arrs:[[I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->drawIconByArrs(Landroid/graphics/Canvas;[[I)V

    .line 73
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcn/nubia/deskclock/ui/LatticeBaseView;->onMeasure(II)V

    .line 55
    sget v0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->width:F

    float-to-int v0, v0

    sget v1, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->height:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method

.method public startRefresh(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 101
    iput p1, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mColor:I

    .line 102
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->handleSendDelayMessage()V

    .line 103
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    return-void
.end method
