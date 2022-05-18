.class Lcn/nubia/collage/n/i$b;
.super Lc/d/a/b/n/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/n/i;->g(Landroid/widget/ImageView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/nubia/collage/n/i;


# direct methods
.method constructor <init>(Lcn/nubia/collage/n/i;Landroid/view/View;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/i$b;->d:Lcn/nubia/collage/n/i;

    iput-object p4, p0, Lcn/nubia/collage/n/i$b;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lc/d/a/b/n/c;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected h(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 4

    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/n/i$b;->c:Ljava/lang/String;

    const v1, 0x7f08018e

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcn/nubia/collage/m;->g()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcn/nubia/collage/m;->g()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcn/nubia/collage/m;->g()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcn/nubia/collage/n/i$b;->d:Lcn/nubia/collage/n/i;

    invoke-static {p2}, Lcn/nubia/collage/n/i;->b(Lcn/nubia/collage/n/i;)Lc/d/a/a/b/c;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/collage/n/i$b;->c:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lc/d/a/a/b/c;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    :cond_1
    check-cast p2, Landroid/widget/ImageView;

    iget-object p1, p0, Lcn/nubia/collage/n/i$b;->d:Lcn/nubia/collage/n/i;

    invoke-static {p1}, Lcn/nubia/collage/n/i;->a(Lcn/nubia/collage/n/i;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "PhotoEditor"

    const-string p2, "ThumbnailBitmapCache setImageBitmapInto fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected i(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    instance-of p1, p2, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/widget/ImageView;

    iget-object p1, p0, Lcn/nubia/collage/n/i$b;->d:Lcn/nubia/collage/n/i;

    invoke-static {p1}, Lcn/nubia/collage/n/i;->a(Lcn/nubia/collage/n/i;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
