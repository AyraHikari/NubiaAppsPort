.class public Lcom/android/gallery3d/filtershow/ui/a;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/ui/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Point;

.field private o:Landroid/graphics/drawable/NinePatchDrawable;

.field private p:Landroid/graphics/drawable/NinePatchDrawable;

.field private q:Landroid/graphics/drawable/NinePatchDrawable;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:Lcom/android/gallery3d/filtershow/ui/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->c:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->d:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->g:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->h:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->i:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->j:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->k:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->l:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->m:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->n:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->r:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->s:I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->t:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->u:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->v:I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->w:Lcom/android/gallery3d/filtershow/ui/a$a;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->o:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->p:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07017e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->q:Landroid/graphics/drawable/NinePatchDrawable;

    return-void
.end method

.method private a(I)V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->g:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->i:I

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->u:I

    sub-int/2addr p1, v0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/ui/a;->c(I)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->v:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->u:I

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->v:I

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->s:I

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, v1, -0x1

    :cond_1
    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->v:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->w:Lcom/android/gallery3d/filtershow/ui/a$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/ui/a$a;->a(I)V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->h:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->g:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->h:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->h:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->h:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->k:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->m:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->g:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->l:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->i:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->s:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->j:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->d:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->c:I

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;I)V
    .locals 11

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/ui/a;->n:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-lt v0, p2, :cond_0

    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->d:I

    sub-int v2, p2, v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->l:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/ui/a;->i:I

    add-int/2addr v2, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/ui/a;->j:I

    add-int/2addr v2, v5

    if-gt v0, v2, :cond_1

    sub-int v0, p2, v1

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/ui/a;->a(I)V

    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->e:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->c:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->d:I

    add-int/2addr v1, v3

    invoke-direct {p2, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->o:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/ui/a;->o:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/ui/a;->t:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->s:I

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->t:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->e:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->c:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/ui/a;->j:I

    add-int/2addr v4, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    add-int v7, v6, v5

    iget v8, p0, Lcom/android/gallery3d/filtershow/ui/a;->l:I

    iget v9, p0, Lcom/android/gallery3d/filtershow/ui/a;->i:I

    add-int v10, v8, v9

    mul-int/2addr v10, p2

    add-int/2addr v7, v10

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, v5

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->m:I

    add-int/2addr v2, v3

    add-int/2addr v6, v5

    add-int/2addr v9, v8

    mul-int/2addr v9, p2

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    invoke-direct {v1, v4, v7, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->v:I

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->q:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->q:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/a;->e:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->j:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->l:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/ui/a;->i:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->k:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->g:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/ui/a;->p:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->n:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->c:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/ui/a;->j:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int v5, v0, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->m:I

    add-int/2addr v1, v2

    add-int/2addr v0, v4

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->l:I

    add-int/2addr v0, v2

    invoke-virtual {p2, v3, v5, v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/ui/a;->p:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/ui/a;->r:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->v:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->n:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->j:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->k:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->g:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public d(II)V
    .locals 1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->e:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    if-nez v0, :cond_0

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->f:I

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->n:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/a;->u:I

    return-void
.end method

.method public setAdapter(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->s:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/a;->e()V

    return-void
.end method

.method public setListener(Lcom/android/gallery3d/filtershow/ui/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/a;->w:Lcom/android/gallery3d/filtershow/ui/a$a;

    return-void
.end method
