.class public Lcom/android/gallery3d/filtershow/crop/CropView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/crop/CropView$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:Lcom/android/gallery3d/filtershow/crop/CropView$a;

.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/drawable/NinePatchDrawable;

.field private i:Lcom/android/gallery3d/filtershow/crop/d;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Matrix;

.field private n:Landroid/graphics/Matrix;

.field private o:Z

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->a:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->b:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->c:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->e:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->g:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->l:I

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->o:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->p:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->q:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->r:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->s:F

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->t:Z

    const/16 p2, 0xf

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->u:I

    const/16 p2, 0x20

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->v:I

    const/high16 p2, -0x31000000

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->w:I

    const/high16 p2, 0x5f000000

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->x:I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->y:I

    const/16 p2, 0x5a

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->z:I

    const/16 p2, 0x28

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->A:I

    const/high16 p2, 0x41a00000    # 20.0f

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->B:F

    const/high16 p2, 0x41200000    # 10.0f

    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->C:F

    sget-object p2, Lcom/android/gallery3d/filtershow/crop/CropView$a;->a:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->D:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/crop/CropView;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private a(III)I
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p3

    sub-int/2addr v1, v0

    and-int v0, p1, v1

    rem-int/2addr p2, p3

    sub-int/2addr p3, p2

    shr-int p3, v0, p3

    shl-int p2, v0, p2

    and-int/2addr p2, v1

    not-int v0, v1

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private c(IF)I
    .locals 2

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/crop/c;->b(F)I

    move-result p2

    const/16 v0, 0x5a

    const/4 v1, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    const/4 p2, 0x3

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/gallery3d/filtershow/crop/CropView;->a(III)I

    move-result p1

    return p1

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    const-string v0, "CropView"

    const-string v1, "crop reset called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/gallery3d/filtershow/crop/CropView$a;->a:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->D:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->l:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->b()V

    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07012f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->h:Landroid/graphics/drawable/NinePatchDrawable;

    const v0, 0x7f07008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->j:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f060040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->k:I

    const v0, 0x7f0600fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->u:I

    const v0, 0x7f0600dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->v:I

    const v0, 0x7f060042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->z:I

    const v0, 0x7f060044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->A:I

    const v0, 0x7f05001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->w:I

    const v0, 0x7f05001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->x:I

    const v0, 0x7f05001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->y:I

    const v0, 0x7f060139

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->B:F

    const v0, 0x7f06013a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->C:F

    return-void
.end method


# virtual methods
.method public getCrop()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->o:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->b()V

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->v:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->d()V

    new-instance v0, Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->a:Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v1}, Lcom/android/gallery3d/filtershow/crop/d;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    if-nez v0, :cond_6

    :cond_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->a:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->b:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->l:I

    invoke-static {v0, v2, v3, v5}, Lcom/android/gallery3d/filtershow/crop/b;->k(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "CropView"

    if-nez v0, :cond_4

    const-string p1, "failed to get screen matrix"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    return-void

    :cond_4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "could not invert display matrix"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->z:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/crop/d;->u(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->A:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/crop/d;->w(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->u:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->e:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->e:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->h:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->h:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->g:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->f:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/crop/d;->j(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->w:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->c:Landroid/graphics/RectF;

    invoke-static {p1, v10, v0, v3}, Lcom/android/gallery3d/filtershow/crop/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/crop/b;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->t:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/crop/b;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_8
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->y:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->B:F

    aput v5, v3, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->C:F

    add-float/2addr v5, v1

    aput v5, v3, v2

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->x:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->r:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->s:F

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/gallery3d/filtershow/crop/b;->i(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->j:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->k:I

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->d:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->n()Z

    move-result v4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->l()I

    move-result v0

    iget v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->l:I

    int-to-float v5, v5

    invoke-direct {p0, v0, v5}, Lcom/android/gallery3d/filtershow/crop/CropView;->c(IF)I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/crop/b;->c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->m:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->n:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v1, v5, v3

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v5, v6

    aget v1, v5, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->D:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/crop/CropView$a;->b:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    if-ne p1, v2, :cond_5

    iget p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->p:F

    sub-float p1, v0, p1

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->q:F

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v4, p1, v2}, Lcom/android/gallery3d/filtershow/crop/d;->o(FF)Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->p:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->q:F

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->D:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/crop/CropView$a;->b:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1, v6}, Lcom/android/gallery3d/filtershow/crop/d;->q(I)Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->p:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->q:F

    sget-object p1, Lcom/android/gallery3d/filtershow/crop/CropView$a;->a:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    :goto_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->D:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->D:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/crop/CropView$a;->a:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->p(FF)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->i:Lcom/android/gallery3d/filtershow/crop/d;

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/crop/d;->q(I)Z

    :cond_4
    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->p:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->q:F

    sget-object p1, Lcom/android/gallery3d/filtershow/crop/CropView$a;->b:Lcom/android/gallery3d/filtershow/crop/CropView$a;

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_2
    return v3
.end method
