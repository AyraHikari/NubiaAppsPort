.class public Lcn/nubia/collage/ui/CategoryImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0x777778

    iput p1, p0, Lcn/nubia/collage/ui/CategoryImageView;->a:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CategoryImageView"

    const-string v1, "recycle bitmap exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int v7, v4, v1

    sub-int/2addr v7, v6

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v3

    add-int/2addr v8, v0

    add-int/2addr v8, v6

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    add-int/2addr v4, v6

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lcn/nubia/collage/ui/CategoryImageView;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcn/nubia/collage/ui/CategoryImageView;->a:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
