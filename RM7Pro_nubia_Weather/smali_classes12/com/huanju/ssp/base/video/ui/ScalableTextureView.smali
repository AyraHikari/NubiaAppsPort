.class public abstract Lcom/huanju/ssp/base/video/ui/ScalableTextureView;
.super Landroid/view/TextureView;
.source "ScalableTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;
    }
.end annotation


# static fields
.field private static final SHOW_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentHeight:Ljava/lang/Integer;

.field private mContentRotation:F

.field private mContentScaleMultiplier:F

.field private mContentScaleX:F

.field private mContentScaleY:F

.field private mContentWidth:Ljava/lang/Integer;

.field private mContentX:I

.field private mContentY:I

.field private mPivotPointX:F

.field private mPivotPointY:F

.field private mScaleType:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

.field private final mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    .line 22
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    .line 24
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    .line 25
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    .line 27
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentRotation:F

    .line 29
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    .line 31
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    .line 32
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    .line 22
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    .line 24
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    .line 25
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    .line 27
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentRotation:F

    .line 29
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    .line 31
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    .line 32
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    .line 22
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    .line 24
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    .line 25
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    .line 27
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentRotation:F

    .line 29
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    .line 31
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    .line 32
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    .line 22
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    .line 24
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    .line 25
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    .line 27
    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentRotation:F

    .line 29
    iput v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    .line 31
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    .line 32
    iput v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 56
    return-void
.end method

.method private updateMatrixScaleRotate()V
    .locals 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 178
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    iget v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    iget v4, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 179
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentRotation:F

    iget v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 180
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 182
    return-void
.end method

.method private updateMatrixTranslate()V
    .locals 5

    .prologue
    .line 189
    iget v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float v0, v2, v3

    .line 190
    .local v0, "scaleX":F
    iget v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float v1, v2, v3

    .line 192
    .local v1, "scaleY":F
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 193
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    iget v4, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 194
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 195
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 196
    return-void
.end method


# virtual methods
.method public centralizeContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredWidth()I

    move-result v1

    .line 274
    .local v1, "measuredWidth":I
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredHeight()I

    move-result v0

    .line 275
    .local v0, "measuredHeight":I
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getScaledContentWidth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 276
    .local v3, "scaledContentWidth":I
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getScaledContentHeight()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 280
    .local v2, "scaledContentHeight":I
    iput v5, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    .line 281
    iput v5, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    .line 285
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    .line 286
    return-void
.end method

.method public getContentAspectRatio()F
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 238
    :goto_0
    return v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getContentHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentScale()F
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    return v0
.end method

.method protected final getContentWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final getContentX()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    int-to-float v0, v0

    return v0
.end method

.method protected final getContentY()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    int-to-float v0, v0

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentRotation:F

    return v0
.end method

.method public getScaledContentHeight()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    iget v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getScaledContentWidth()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    iget v1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 67
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->updateTextureViewSize()V

    .line 70
    :cond_0
    return-void
.end method

.method protected final setContentHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    .line 309
    return-void
.end method

.method public setContentScale(F)V
    .locals 0
    .param p1, "contentScale"    # F

    .prologue
    .line 303
    iput p1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleMultiplier:F

    .line 304
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    .line 305
    return-void
.end method

.method protected final setContentWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    .line 317
    return-void
.end method

.method public final setContentX(F)V
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 248
    float-to-int v0, p1

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getScaledContentWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentX:I

    .line 249
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->updateMatrixTranslate()V

    .line 250
    return-void
.end method

.method public final setContentY(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 257
    float-to-int v0, p1

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getScaledContentHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentY:I

    .line 258
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->updateMatrixTranslate()V

    .line 259
    return-void
.end method

.method public setPivotX(F)V
    .locals 0
    .param p1, "pivotX"    # F

    .prologue
    .line 217
    iput p1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    .line 218
    return-void
.end method

.method public setPivotY(F)V
    .locals 0
    .param p1, "pivotY"    # F

    .prologue
    .line 224
    iput p1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    .line 225
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    .line 203
    iput p1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentRotation:F

    .line 205
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    .line 206
    return-void
.end method

.method public setScaleType(Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mScaleType:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    .line 60
    return-void
.end method

.method public updateTextureViewSize()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 74
    iget-object v9, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-nez v9, :cond_1

    .line 75
    :cond_0
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "null content size"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredWidth()I

    move-result v9

    int-to-float v8, v9

    .line 79
    .local v8, "viewWidth":F
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->getMeasuredHeight()I

    move-result v9

    int-to-float v7, v9

    .line 81
    .local v7, "viewHeight":F
    iget-object v9, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v1, v9

    .line 82
    .local v1, "contentWidth":F
    iget-object v9, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v0, v9

    .line 89
    .local v0, "contentHeight":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 90
    .local v5, "scaleX":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 92
    .local v6, "scaleY":F
    sget-object v9, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$1;->$SwitchMap$com$huanju$ssp$base$video$ui$ScalableTextureView$ScaleType:[I

    iget-object v10, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mScaleType:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v10}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 125
    :cond_2
    :goto_0
    sget-object v9, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$1;->$SwitchMap$com$huanju$ssp$base$video$ui$ScalableTextureView$ScaleType:[I

    iget-object v10, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mScaleType:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v10}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 143
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pivotPointX, pivotPointY for ScaleType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mScaleType:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " are not defined"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 94
    :pswitch_0
    cmpl-float v9, v8, v7

    if-lez v9, :cond_3

    .line 95
    mul-float v9, v7, v1

    mul-float v10, v8, v0

    div-float v5, v9, v10

    goto :goto_0

    .line 97
    :cond_3
    mul-float v9, v8, v0

    mul-float v10, v7, v1

    div-float v6, v9, v10

    .line 99
    goto :goto_0

    .line 103
    :pswitch_1
    cmpl-float v9, v1, v8

    if-lez v9, :cond_4

    cmpl-float v9, v0, v7

    if-lez v9, :cond_4

    .line 104
    div-float v5, v1, v8

    .line 105
    div-float v6, v0, v7

    goto :goto_0

    .line 106
    :cond_4
    cmpg-float v9, v1, v8

    if-gez v9, :cond_5

    cmpg-float v9, v0, v7

    if-gez v9, :cond_5

    .line 107
    div-float v6, v8, v1

    .line 108
    div-float v5, v7, v0

    goto :goto_0

    .line 109
    :cond_5
    cmpl-float v9, v8, v1

    if-lez v9, :cond_6

    .line 110
    div-float v9, v8, v1

    div-float v10, v7, v0

    div-float v6, v9, v10

    goto :goto_0

    .line 111
    :cond_6
    cmpl-float v9, v7, v0

    if-lez v9, :cond_2

    .line 112
    div-float v9, v7, v0

    div-float v10, v8, v1

    div-float v5, v9, v10

    goto :goto_0

    .line 127
    :pswitch_2
    const/4 v3, 0x0

    .line 128
    .local v3, "pivotPointX":F
    const/4 v4, 0x0

    .line 149
    .local v4, "pivotPointY":F
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 150
    .local v2, "fitCoef":F
    sget-object v9, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$1;->$SwitchMap$com$huanju$ssp$base$video$ui$ScalableTextureView$ScaleType:[I

    iget-object v10, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mScaleType:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v10}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    .line 164
    :goto_2
    :pswitch_3
    mul-float v9, v2, v5

    iput v9, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleX:F

    .line 165
    mul-float v9, v2, v6

    iput v9, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentScaleY:F

    .line 167
    iput v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    .line 168
    iput v4, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    .line 170
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    .line 172
    return-void

    .line 131
    .end local v2    # "fitCoef":F
    .end local v3    # "pivotPointX":F
    .end local v4    # "pivotPointY":F
    :pswitch_4
    move v3, v8

    .line 132
    .restart local v3    # "pivotPointX":F
    move v4, v7

    .line 133
    .restart local v4    # "pivotPointY":F
    goto :goto_1

    .line 135
    .end local v3    # "pivotPointX":F
    .end local v4    # "pivotPointY":F
    :pswitch_5
    div-float v3, v8, v11

    .line 136
    .restart local v3    # "pivotPointX":F
    div-float v4, v7, v11

    .line 137
    .restart local v4    # "pivotPointY":F
    goto :goto_1

    .line 139
    .end local v3    # "pivotPointX":F
    .end local v4    # "pivotPointY":F
    :pswitch_6
    iget v3, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointX:F

    .line 140
    .restart local v3    # "pivotPointX":F
    iget v4, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mPivotPointY:F

    .line 141
    .restart local v4    # "pivotPointY":F
    goto :goto_1

    .line 156
    .restart local v2    # "fitCoef":F
    :pswitch_7
    iget-object v9, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_7

    .line 157
    mul-float v9, v8, v5

    div-float v2, v8, v9

    goto :goto_2

    .line 159
    :cond_7
    mul-float v9, v7, v6

    div-float v2, v7, v9

    goto :goto_2

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 125
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch

    .line 150
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
