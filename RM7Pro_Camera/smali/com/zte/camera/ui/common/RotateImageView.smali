.class public Lcom/zte/camera/ui/common/RotateImageView;
.super Lcom/zte/camera/ui/common/d;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/ui/common/b;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:Landroid/graphics/Bitmap;

.field private i:[Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/common/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->a:I

    .line 29
    iput p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->b:I

    .line 30
    iput p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->c:I

    .line 32
    iput-boolean p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->d:Z

    iput-boolean p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->e:Z

    const-wide/16 p1, 0x0

    .line 33
    iput-wide p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->f:J

    .line 34
    iput-wide p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->g:J

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    if-ltz p1, :cond_0

    .line 52
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 53
    :goto_0
    iget v0, p0, Lcom/zte/camera/ui/common/RotateImageView;->c:I

    if-ne p1, v0, :cond_1

    return-void

    .line 55
    :cond_1
    iput p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->c:I

    .line 56
    iget p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->a:I

    iput p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->b:I

    .line 57
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/camera/ui/common/RotateImageView;->f:J

    .line 59
    iget p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->c:I

    iget v2, p0, Lcom/zte/camera/ui/common/RotateImageView;->a:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 v2, 0xb4

    if-le p1, v2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 65
    :goto_2
    iput-boolean v2, p0, Lcom/zte/camera/ui/common/RotateImageView;->d:Z

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/camera/ui/common/RotateImageView;->g:J

    .line 67
    iput-boolean p2, p0, Lcom/zte/camera/ui/common/RotateImageView;->e:Z

    .line 68
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->invalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 139
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 140
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 142
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->h:Landroid/graphics/Bitmap;

    .line 143
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/zte/camera/ui/common/RotateImageView;->e:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    aget-object v2, p1, v1

    aput-object v2, p1, v0

    .line 149
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/camera/ui/common/RotateImageView;->h:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, p1, v1

    .line 150
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/zte/camera/ui/common/RotateImageView;->i:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->j:Landroid/graphics/drawable/TransitionDrawable;

    .line 151
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->j:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xc8

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->i:[Landroid/graphics/drawable/Drawable;

    .line 145
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/camera/ui/common/RotateImageView;->h:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, p1, v1

    .line 146
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->i:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz p2, :cond_3

    .line 156
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_3
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    return-void

    .line 126
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->h:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->h:Landroid/graphics/Bitmap;

    .line 130
    iput-object p1, p0, Lcom/zte/camera/ui/common/RotateImageView;->i:[Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    .line 132
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    if-eqz p2, :cond_6

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method protected getDegree()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/zte/camera/ui/common/RotateImageView;->c:I

    return v0
.end method

.method public getmThumb()Landroid/graphics/Bitmap;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateImageView;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 77
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 81
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 82
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 86
    :cond_1
    iget v1, p0, Lcom/zte/camera/ui/common/RotateImageView;->a:I

    iget v4, p0, Lcom/zte/camera/ui/common/RotateImageView;->c:I

    if-eq v1, v4, :cond_5

    .line 87
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 88
    iget-wide v6, p0, Lcom/zte/camera/ui/common/RotateImageView;->g:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    iget-boolean v1, p0, Lcom/zte/camera/ui/common/RotateImageView;->e:Z

    if-eqz v1, :cond_4

    .line 89
    iget-wide v6, p0, Lcom/zte/camera/ui/common/RotateImageView;->f:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 90
    iget v4, p0, Lcom/zte/camera/ui/common/RotateImageView;->b:I

    iget-boolean v5, p0, Lcom/zte/camera/ui/common/RotateImageView;->d:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_3

    .line 91
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :cond_3
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 92
    :goto_1
    iput v4, p0, Lcom/zte/camera/ui/common/RotateImageView;->a:I

    .line 93
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->invalidate()V

    goto :goto_2

    .line 95
    :cond_4
    iget v1, p0, Lcom/zte/camera/ui/common/RotateImageView;->c:I

    iput v1, p0, Lcom/zte/camera/ui/common/RotateImageView;->a:I

    .line 99
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingLeft()I

    move-result v1

    .line 100
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingTop()I

    move-result v4

    .line 101
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingRight()I

    move-result v5

    .line 102
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getPaddingBottom()I

    move-result v6

    .line 103
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 104
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 108
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_7

    if-lt v7, v2, :cond_6

    if-ge v5, v3, :cond_7

    :cond_6
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 109
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    .line 110
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 112
    :cond_7
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget v1, p0, Lcom/zte/camera/ui/common/RotateImageView;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v2

    .line 114
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    :goto_3
    return-void
.end method
