.class public Lcom/android/common/ui/RotateTextImageView;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/android/common/ui/RotateTextImageView;->b:I

    .line 42
    iput-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->c:Landroid/content/res/ColorStateList;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/Paint;)F
    .locals 1

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 139
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    return v0
.end method

.method private a(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    .line 131
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private a(IILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 113
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 114
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 117
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p4, p5

    .line 118
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p4, 0x1

    .line 119
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    int-to-float p1, p1

    .line 121
    invoke-direct {p0, v2, p3}, Lcom/android/common/ui/RotateTextImageView;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p4

    sub-float/2addr p1, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    int-to-float p2, p2

    .line 122
    invoke-direct {p0, v2}, Lcom/android/common/ui/RotateTextImageView;->a(Landroid/graphics/Paint;)F

    move-result p5

    sub-float/2addr p2, p5

    div-float/2addr p2, p4

    invoke-direct {p0, v2}, Lcom/android/common/ui/RotateTextImageView;->b(Landroid/graphics/Paint;)F

    move-result p4

    add-float/2addr p2, p4

    .line 123
    invoke-virtual {v1, p3, p1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 54
    sget-object v0, Lcom/android/common/ui/c$g;->at:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    sget p2, Lcom/android/common/ui/c$g;->aw:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    .line 61
    :cond_1
    :try_start_1
    sget p2, Lcom/android/common/ui/c$g;->av:I

    const/16 v0, 0xf

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/common/ui/RotateTextImageView;->b:I

    .line 63
    sget p2, Lcom/android/common/ui/c$g;->au:I

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/ui/RotateTextImageView;->c:Landroid/content/res/ColorStateList;

    .line 65
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 67
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/common/ui/RotateTextImageView;->c:Landroid/content/res/ColorStateList;

    .line 68
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getDrawableState()[I

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget v5, p0, Lcom/android/common/ui/RotateTextImageView;->b:I

    move-object v0, p0

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/RotateTextImageView;->a(IILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/common/ui/RotateTextImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string v0, "RotateTextImageView"

    const-string v1, "readAttr failed"

    .line 72
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 75
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    :cond_4
    throw p2
.end method

.method private b(Landroid/graphics/Paint;)F
    .locals 1

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 147
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->leading:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public setText(I)V
    .locals 6

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 87
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/common/ui/RotateTextImageView;->c:Landroid/content/res/ColorStateList;

    .line 88
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getDrawableState()[I

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget v5, p0, Lcom/android/common/ui/RotateTextImageView;->b:I

    move-object v0, p0

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/RotateTextImageView;->a(IILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateTextImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RotateTextImageView"

    const-string v1, "setText failed"

    .line 91
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 6

    .line 97
    :try_start_0
    iput-object p1, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 101
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/RotateTextImageView;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/common/ui/RotateTextImageView;->c:Landroid/content/res/ColorStateList;

    .line 102
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getDrawableState()[I

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget v5, p0, Lcom/android/common/ui/RotateTextImageView;->b:I

    move-object v0, p0

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/RotateTextImageView;->a(IILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateTextImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RotateTextImageView"

    const-string v1, "setText failed"

    .line 105
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
