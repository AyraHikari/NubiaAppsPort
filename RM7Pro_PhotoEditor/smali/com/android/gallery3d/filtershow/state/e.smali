.class public Lcom/android/gallery3d/filtershow/state/e;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/category/g;


# static fields
.field public static u:I = 0x0

.field public static v:I = 0x1

.field public static w:I = 0x2

.field public static x:I = 0x2

.field private static y:I = 0x10

.field private static z:I = 0x8


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:Ljava/lang/String;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/android/gallery3d/filtershow/state/c;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/android/gallery3d/filtershow/state/e;->u:I

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/state/e;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    sget p1, Lcom/android/gallery3d/filtershow/state/e;->u:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->d:F

    const-string p1, "Default"

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->e:Ljava/lang/String;

    const/high16 p1, 0x42000000    # 32.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->f:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->g:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->h:F

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->i:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->j:I

    sget p1, Lcom/android/gallery3d/filtershow/state/e;->x:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->k:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->t:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050038

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/state/e;->n:I

    const p2, 0x7f050039

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/state/e;->o:I

    const p2, 0x7f050037

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/state/e;->p:I

    const p2, 0x7f05003c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/state/e;->q:I

    const p2, 0x7f05003a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/state/e;->r:I

    const p2, 0x7f05003b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/state/e;->s:I

    const p2, 0x7f060126

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->f:F

    return-void
.end method

.method private b(FFFF)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v2, Lcom/android/gallery3d/filtershow/state/e;->w:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float v2, p3, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v0, Lcom/android/gallery3d/filtershow/state/e;->v:I

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float v0, p3, p4

    add-float v1, v0, p3

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    sub-float p4, p1, p4

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v2, Lcom/android/gallery3d/filtershow/state/e;->w:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    sub-float v2, p1, p4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float v3, p3, p4

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float/2addr v3, p3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget p2, Lcom/android/gallery3d/filtershow/state/e;->v:I

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float p2, p3, p4

    add-float v0, p2, p3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private d(FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v2, Lcom/android/gallery3d/filtershow/state/e;->v:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float v2, p3, p4

    invoke-virtual {v0, v2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float/2addr v2, p3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v2, Lcom/android/gallery3d/filtershow/state/e;->w:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    sub-float v2, p2, p4

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float/2addr p4, p3

    add-float v0, p4, p3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, p3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private e(FFFF)V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v1, Lcom/android/gallery3d/filtershow/state/e;->v:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float v1, p3, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float/2addr v1, p3

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v0, Lcom/android/gallery3d/filtershow/state/e;->w:I

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    add-float v0, p3, p4

    add-float v1, v0, p3

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    sub-float p4, p2, p4

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/e;->getState()Lcom/android/gallery3d/filtershow/state/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/state/c;->b()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F1(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->s:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->q:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v1, Lcom/android/gallery3d/filtershow/state/e;->v:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/e;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/e;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/e;->t:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/e;->t:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/e;->t:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/e;->e:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/e;->setBackgroundAlpha(F)V

    return-void
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->d:F

    return v0
.end method

.method public getState()Lcom/android/gallery3d/filtershow/state/c;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->m:Lcom/android/gallery3d/filtershow/state/c;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/gallery3d/filtershow/state/e;->y:I

    int-to-float v3, v3

    sget v4, Lcom/android/gallery3d/filtershow/state/e;->z:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/state/e;->j:I

    if-nez v5, :cond_0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/state/e;->b(FFFF)V

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/android/gallery3d/filtershow/state/e;->k:I

    sget v6, Lcom/android/gallery3d/filtershow/state/e;->x:I

    if-ne v5, v6, :cond_1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/state/e;->d(FFFF)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/state/e;->e(FFFF)V

    :goto_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v2, Lcom/android/gallery3d/filtershow/state/e;->u:I

    if-eq v1, v2, :cond_3

    sget v2, Lcom/android/gallery3d/filtershow/state/e;->w:I

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->n:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/state/e;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->r:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->p:I

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/e;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/e;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/state/e;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p2(Landroid/view/View;FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/e;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/e;->g:F

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v3, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v4, Lcom/android/gallery3d/filtershow/state/e;->v:I

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/state/e;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/e;->getState()Lcom/android/gallery3d/filtershow/state/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/state/c;->b()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->r()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    cmpl-float v1, v6, v1

    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    if-eq v3, v1, :cond_4

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->x(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/state/e;->setSelected(Z)V

    :cond_4
    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v3, Lcom/android/gallery3d/filtershow/state/e;->v:I

    if-eq v1, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->h:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->i:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    iget p1, p0, Lcom/android/gallery3d/filtershow/state/e;->g:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/state/e;->h:F

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T1(Landroid/view/View;FF)V

    :cond_5
    return v2
.end method

.method public setBackgroundAlpha(F)V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    sget v1, Lcom/android/gallery3d/filtershow/state/e;->v:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->d:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDuplicateButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/state/e;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->j:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/state/e;->l:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setState(Lcom/android/gallery3d/filtershow/state/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->m:Lcom/android/gallery3d/filtershow/state/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/state/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->m:Lcom/android/gallery3d/filtershow/state/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/state/c;->d()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/e;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/state/e;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
