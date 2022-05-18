.class public Lcn/nubia/improve/share/SelectImageView;
.super Landroid/widget/ImageView;
.source "SelectImageView.java"


# static fields
.field private static final PADDING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SelectImageView"


# instance fields
.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mCenterX:I

.field private mCenterY:I

.field private mCheckPaint:Landroid/graphics/Paint;

.field private mIsSelected:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRadius:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcn/nubia/improve/share/SelectImageView;->mIsSelected:Z

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/SelectImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/SelectImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0600de

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object p1, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object p1, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcn/nubia/improve/share/SelectImageView;->mIsSelected:Z

    .line 48
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcn/nubia/improve/share/SelectImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/improve/share/SelectImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object p2, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p1, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object p1, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 98
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 104
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 105
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private setUpShader()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcn/nubia/improve/share/SelectImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/improve/share/SelectImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcn/nubia/improve/share/SelectImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 90
    iget v1, p0, Lcn/nubia/improve/share/SelectImageView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 92
    iget-object v0, p0, Lcn/nubia/improve/share/SelectImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 93
    iget-object v0, p0, Lcn/nubia/improve/share/SelectImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcn/nubia/improve/share/SelectImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/improve/share/SelectImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/improve/share/SelectImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public getSelectState()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcn/nubia/improve/share/SelectImageView;->mIsSelected:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcn/nubia/improve/share/SelectImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcn/nubia/improve/share/SelectImageView;->setUpShader()V

    .line 75
    iget v0, p0, Lcn/nubia/improve/share/SelectImageView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/improve/share/SelectImageView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/improve/share/SelectImageView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/improve/share/SelectImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    iget-boolean v0, p0, Lcn/nubia/improve/share/SelectImageView;->mIsSelected:Z

    if-eqz v0, :cond_1

    .line 78
    iget v0, p0, Lcn/nubia/improve/share/SelectImageView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/improve/share/SelectImageView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/improve/share/SelectImageView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/improve/share/SelectImageView;->mCheckPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/improve/share/SelectImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/improve/share/SelectImageView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/share/SelectImageView;->mWidth:I

    .line 64
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcn/nubia/improve/share/SelectImageView;->mCenterX:I

    .line 65
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcn/nubia/improve/share/SelectImageView;->mCenterY:I

    .line 66
    div-int/lit8 p2, p1, 0x2

    add-int/lit8 p2, p2, -0x5

    iput p2, p0, Lcn/nubia/improve/share/SelectImageView;->mRadius:I

    .line 67
    invoke-virtual {p0, p1, p1}, Lcn/nubia/improve/share/SelectImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSelectState(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcn/nubia/improve/share/SelectImageView;->mIsSelected:Z

    .line 117
    invoke-virtual {p0}, Lcn/nubia/improve/share/SelectImageView;->invalidate()V

    return-void
.end method
