.class public Lcn/nubia/music/ui/ZTabIndicator;
.super Landroid/view/View;
.source "ZTabIndicator.java"


# instance fields
.field private initFlag:Z

.field private mContext:Landroid/content/Context;

.field private mStartX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->initFlag:Z

    .line 35
    iput-object p1, p0, Lcn/nubia/music/ui/ZTabIndicator;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->initFlag:Z

    .line 30
    iput-object p1, p0, Lcn/nubia/music/ui/ZTabIndicator;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->initFlag:Z

    .line 25
    iput-object p1, p0, Lcn/nubia/music/ui/ZTabIndicator;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method protected drawIndicatorView(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 55
    const v0, 0x7f0d007b

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    const v1, 0x7f0d0055

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcn/nubia/music/ui/ZTabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 59
    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    iget v1, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawBitmap,mStartX,width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 64
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 65
    iget v2, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 66
    invoke-virtual {p0}, Lcn/nubia/music/ui/ZTabIndicator;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v4

    .line 67
    invoke-virtual {p0}, Lcn/nubia/music/ui/ZTabIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 65
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-boolean v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->initFlag:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcn/nubia/music/ui/ZTabIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/ZTabIndicator;->drawIndicatorView(Landroid/graphics/Canvas;)V

    .line 52
    return-void
.end method

.method public setStartX(F)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 40
    iput p1, p0, Lcn/nubia/music/ui/ZTabIndicator;->mStartX:F

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/ZTabIndicator;->initFlag:Z

    .line 42
    return-void
.end method
