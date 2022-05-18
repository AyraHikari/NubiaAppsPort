.class public Lcom/android/gallery3d/filtershow/category/d;
.super Lcom/android/gallery3d/filtershow/category/IconView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/filtershow/category/g;


# instance fields
.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field s:Lcom/android/gallery3d/filtershow/category/b;

.field private t:I

.field private u:J

.field private v:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/d;->q:Landroid/graphics/Paint;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/d;->t:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/category/d;->u:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/category/d;->v:J

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06012e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/d;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/d;->r:Landroid/graphics/Paint;

    const v1, 0x7f050090

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x7f050035

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/d;->t:I

    return-void
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/d;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/d;->q:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/d;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/d;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/d;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/d;->s:Lcom/android/gallery3d/filtershow/category/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->i(Lcom/android/gallery3d/filtershow/category/a;)V

    return-void
.end method

.method public g()Z
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public i(Lcom/android/gallery3d/filtershow/category/a;Lcom/android/gallery3d/filtershow/category/b;)V
    .locals 1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/d;->s:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/category/b;->c()I

    move-result p2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/d;->s:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/category/b;->c()I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/d;->s:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/category/b;->c()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/category/a;->f()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/category/IconView;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->b()Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setUseOnlyDrawable(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700fc

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setUseOnlyDrawable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e00d3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m1()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/filtershow/category/d;->u:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/gallery3d/filtershow/category/d;->v:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/category/d;->u:J

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/editors/x;->d0(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/editors/x;->b0(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_5

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/editors/t;->T(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/editors/t;->U(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v1

    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R0()I

    move-result v1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/d;->s:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;->h(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "CategoryView"

    const-string v0, "isselected return"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R0()I

    move-result v1

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i2()V

    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L1(I)V

    :cond_8
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/d;->s:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/category/b;->o(Landroid/view/View;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/category/d;->h(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v8, v7, 0x2

    sub-int/2addr v6, v8

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/category/a;->o(Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/category/IconView;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/d;->s:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/category/b;->h(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/category/IconView;->setIsSelected(Z)V

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
