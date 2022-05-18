.class public Lcn/nubia/music/ui/CustomSvgView;
.super Landroid/widget/ImageView;
.source "CustomSvgView.java"


# static fields
.field private static final mBaseWidth:I = 0x45

.field private static final mPaintWidth:I = 0x6

.field private static final p1:Ljava/lang/String; = "M9.005,16.599l-3.738-3.69l-0.934,0.922l4.205,4.151c0.258,0.255,0.676,0.255,0.934,0l4.194-4.14l-0.935-0.922L9.005,16.599z"

.field private static final p2:Ljava/lang/String; = "M9.023,1.768l3.76,3.756l0.943-0.942L9.495,0.355c-0.26-0.26-0.683-0.26-0.943,0L4.31,4.594l0.943,0.942L9.023,1.768z"

.field private static final p3:Ljava/lang/String; = "M17.334,8.58H0.667C0.298,8.58,0,8.878,0,9.246s0.298,0.666,0.667,0.666h16.667C17.702,9.912,18,9.613,18,9.246C18,8.878,17.702,8.58,17.334,8.58L17.334,8.58z"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath1:Landroid/graphics/Path;

.field private mPath2:Landroid/graphics/Path;

.field private mPath3:Landroid/graphics/Path;

.field private mScaled:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lcn/nubia/music/ui/CustomSvgView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcn/nubia/music/ui/CustomSvgView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcn/nubia/music/ui/CustomSvgView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-direct {p0}, Lcn/nubia/music/ui/CustomSvgView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPath1:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPath2:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 69
    if-eq p1, p3, :cond_0

    .line 70
    div-int/lit8 v0, p1, 0x45

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mScaled:F

    .line 71
    const-string v0, "M9.005,16.599l-3.738-3.69l-0.934,0.922l4.205,4.151c0.258,0.255,0.676,0.255,0.934,0l4.194-4.14l-0.935-0.922L9.005,16.599z"

    iget v1, p0, Lcn/nubia/music/ui/CustomSvgView;->mScaled:F

    invoke-static {v0, v1}, Lcn/nubia/music/ui/SVGParser;->parsePath(Ljava/lang/String;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPath1:Landroid/graphics/Path;

    .line 72
    const-string v0, "M9.023,1.768l3.76,3.756l0.943-0.942L9.495,0.355c-0.26-0.26-0.683-0.26-0.943,0L4.31,4.594l0.943,0.942L9.023,1.768z"

    iget v1, p0, Lcn/nubia/music/ui/CustomSvgView;->mScaled:F

    invoke-static {v0, v1}, Lcn/nubia/music/ui/SVGParser;->parsePath(Ljava/lang/String;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPath2:Landroid/graphics/Path;

    .line 73
    const-string v0, "M17.334,8.58H0.667C0.298,8.58,0,8.878,0,9.246s0.298,0.666,0.667,0.666h16.667C17.702,9.912,18,9.613,18,9.246C18,8.878,17.702,8.58,17.334,8.58L17.334,8.58z"

    iget v1, p0, Lcn/nubia/music/ui/CustomSvgView;->mScaled:F

    invoke-static {v0, v1}, Lcn/nubia/music/ui/SVGParser;->parsePath(Ljava/lang/String;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPath3:Landroid/graphics/Path;

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 76
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/music/ui/CustomSvgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/music/ui/CustomSvgView;->invalidate()V

    .line 64
    return-void
.end method
