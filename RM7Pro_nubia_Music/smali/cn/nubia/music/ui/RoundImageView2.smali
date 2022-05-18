.class public Lcn/nubia/music/ui/RoundImageView2;
.super Lcn/nubia/music/ui/CustomImageView;
.source "RoundImageView2.java"


# instance fields
.field private bRoundEffectEnabled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/CustomImageView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView2;->bRoundEffectEnabled:Z

    .line 20
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/RoundImageView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/CustomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView2;->bRoundEffectEnabled:Z

    .line 27
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/ui/RoundImageView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/ui/CustomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView2;->bRoundEffectEnabled:Z

    .line 34
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/ui/RoundImageView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    :cond_0
    return-void
.end method

.method private drawRound(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 66
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    .line 67
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->getMeasuredHeight()I

    move-result v0

    int-to-float v2, v0

    .line 68
    cmpl-float v0, v1, v2

    if-lez v0, :cond_0

    div-float v0, v2, v4

    .line 69
    :goto_0
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 70
    div-float/2addr v1, v4

    div-float/2addr v2, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 71
    sget-object v0, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    return-void

    .line 68
    :cond_0
    div-float v0, v1, v4

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView2;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView2;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView2;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView2;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView2;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView2;->bRoundEffectEnabled:Z

    if-nez v0, :cond_1

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/music/ui/CustomImageView;->draw(Landroid/graphics/Canvas;)V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView2;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-super {p0, v1}, Lcn/nubia/music/ui/CustomImageView;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-direct {p0, v1}, Lcn/nubia/music/ui/RoundImageView2;->drawRound(Landroid/graphics/Canvas;)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 62
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/music/ui/CustomImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setRoundEffect(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcn/nubia/music/ui/RoundImageView2;->bRoundEffectEnabled:Z

    .line 77
    return-void
.end method
