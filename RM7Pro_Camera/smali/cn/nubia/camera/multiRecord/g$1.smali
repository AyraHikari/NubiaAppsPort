.class Lcn/nubia/camera/multiRecord/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:Landroid/graphics/Rect;

.field d:Z

.field final synthetic e:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 268
    iput-boolean p1, p0, Lcn/nubia/camera/multiRecord/g$1;->d:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 271
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 274
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/g$1;->a:F

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/camera/multiRecord/g$1;->b:F

    .line 277
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    iget-object p2, p2, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object p2, p2, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$1;->c:Landroid/graphics/Rect;

    .line 278
    iget p2, p0, Lcn/nubia/camera/multiRecord/g$1;->a:F

    float-to-int p2, p2

    iget v0, p0, Lcn/nubia/camera/multiRecord/g$1;->b:F

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    iput-boolean v2, p0, Lcn/nubia/camera/multiRecord/g$1;->d:Z

    return v2

    .line 283
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/camera/multiRecord/g$1;->d:Z

    return v1

    .line 287
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 288
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/g$1;->d:Z

    if-nez v0, :cond_3

    return v1

    .line 291
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v2, p2

    .line 293
    iget p2, p0, Lcn/nubia/camera/multiRecord/g$1;->a:F

    sub-float/2addr v0, p2

    float-to-int p2, v0

    .line 294
    iget v0, p0, Lcn/nubia/camera/multiRecord/g$1;->b:F

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 295
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$1;->c:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 296
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 297
    iget-object p2, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p2}, Lcn/nubia/camera/multiRecord/g;->l(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p2

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v6

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, p2

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 299
    iget p2, v2, Landroid/graphics/Rect;->left:I

    if-gez p2, :cond_4

    .line 300
    iget p2, v2, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    invoke-virtual {v2, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 302
    :cond_4
    iget p2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-le p2, v3, :cond_5

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 305
    :cond_5
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_6

    .line 306
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 308
    :cond_6
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_7

    .line 309
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 311
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iput-object v2, p1, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/multiRecord/m;->e(Z)V

    .line 313
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->m(Lcn/nubia/camera/multiRecord/g;)V

    goto :goto_0

    .line 315
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_9

    .line 316
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_a

    .line 317
    :cond_9
    iput-boolean v1, p0, Lcn/nubia/camera/multiRecord/g$1;->d:Z

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->n(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 319
    iget-object p2, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    iget-object p2, p2, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object p2, p2, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v0, v0, Lcn/nubia/camera/multiRecord/m;->i:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 320
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v0, v0, Lcn/nubia/camera/multiRecord/m;->h:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 321
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$1;->e:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->e(Lcn/nubia/camera/multiRecord/g;)V

    :cond_a
    :goto_0
    return v1
.end method
