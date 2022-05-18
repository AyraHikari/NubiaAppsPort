.class public Lcom/android/common/ui/RotateImageView;
.super Lcom/android/common/ui/h;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/d;


# instance fields
.field private a:Lcom/android/common/ui/e;

.field private b:Landroid/graphics/Bitmap;

.field private c:[Landroid/graphics/drawable/Drawable;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/common/ui/h;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/android/common/ui/e;

    invoke-direct {p1}, Lcom/android/common/ui/e;-><init>()V

    iput-object p1, p0, Lcom/android/common/ui/RotateImageView;->a:Lcom/android/common/ui/e;

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/android/common/ui/RotateImageView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Lcom/android/common/ui/e;

    invoke-direct {p1}, Lcom/android/common/ui/e;-><init>()V

    iput-object p1, p0, Lcom/android/common/ui/RotateImageView;->a:Lcom/android/common/ui/e;

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/android/common/ui/RotateImageView;->d:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 168
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    int-to-float v3, v0

    move v4, v2

    move v5, v3

    goto :goto_0

    .line 179
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-int v4, v0, v1

    .line 180
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    int-to-float v5, v1

    move v11, v3

    move v3, v0

    move v0, v1

    move v1, v11

    .line 191
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 196
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v4, v4

    float-to-int v9, v2

    float-to-int v3, v3

    float-to-int v10, v5

    invoke-direct {v8, v4, v9, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 198
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v2, v2

    float-to-int v9, v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 200
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    .line 201
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 203
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v4, -0xbdbdbe

    .line 204
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-virtual {v6, v2, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 207
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 208
    invoke-virtual {v6, p1, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/common/ui/RotateImageView;->a:Lcom/android/common/ui/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/e;->a(IZ)V

    .line 64
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->invalidate()V

    return-void
.end method

.method protected getDegree()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/common/ui/RotateImageView;->a:Lcom/android/common/ui/e;

    invoke-virtual {v0}, Lcom/android/common/ui/e;->b()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 69
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 73
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 74
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_5

    if-nez v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/common/ui/RotateImageView;->a:Lcom/android/common/ui/e;

    invoke-virtual {v1}, Lcom/android/common/ui/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->invalidate()V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingStart()I

    move-result v1

    .line 83
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    .line 84
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingEnd()I

    move-result v5

    .line 85
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingBottom()I

    move-result v6

    .line 86
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 87
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 92
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_4

    if-lt v7, v2, :cond_3

    if-ge v5, v3, :cond_4

    :cond_3
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v11, v5

    int-to-float v12, v3

    div-float v12, v11, v12

    .line 94
    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float/2addr v8, v10

    div-float/2addr v11, v10

    .line 95
    invoke-virtual {p1, v9, v9, v8, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_4
    int-to-float v1, v1

    int-to-float v7, v7

    div-float/2addr v7, v10

    add-float/2addr v1, v7

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    .line 97
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    iget-object v1, p0, Lcom/android/common/ui/RotateImageView;->a:Lcom/android/common/ui/e;

    invoke-virtual {v1}, Lcom/android/common/ui/e;->b()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v10

    neg-int v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 99
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/android/common/ui/RotateImageView;->b:Landroid/graphics/Bitmap;

    .line 118
    iput-object p1, p0, Lcom/android/common/ui/RotateImageView;->c:[Landroid/graphics/drawable/Drawable;

    .line 119
    iget-boolean v0, p0, Lcom/android/common/ui/RotateImageView;->d:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 131
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 133
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 135
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/RotateImageView;->b:Landroid/graphics/Bitmap;

    .line 137
    iget-boolean v0, p0, Lcom/android/common/ui/RotateImageView;->d:Z

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateImageView;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/RotateImageView;->b:Landroid/graphics/Bitmap;

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 141
    iput-object p1, p0, Lcom/android/common/ui/RotateImageView;->c:[Landroid/graphics/drawable/Drawable;

    .line 142
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/RotateImageView;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 143
    iget-object p1, p0, Lcom/android/common/ui/RotateImageView;->c:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method public setIsRound(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/android/common/ui/RotateImageView;->d:Z

    return-void
.end method
