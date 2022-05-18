.class public Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;,
        Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/j;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/content/Context;

.field private w:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;

.field private x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    .line 4
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->h:Landroid/graphics/Paint;

    .line 5
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    .line 6
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    .line 7
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->m:Landroid/graphics/RectF;

    .line 8
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->n:Landroid/graphics/RectF;

    .line 9
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    .line 10
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    .line 11
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->q:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    .line 13
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->z:Z

    .line 14
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->B:Z

    .line 15
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    .line 16
    sget-object v1, Lcn/nubia/video/mediaeditorview/k;->a:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    sget p2, Lcn/nubia/video/mediaeditorview/k;->b:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    .line 18
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->f()V

    return-void
.end method

.method private b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v1, p1

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_0

    sub-int p1, v4, v1

    goto :goto_0

    :cond_0
    add-int v2, v1, p1

    .line 2
    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->s:I

    sub-int/2addr v2, v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-ge v2, v5, :cond_1

    add-int/2addr v5, v4

    sub-int p1, v5, v1

    if-lez p1, :cond_1

    return-void

    :cond_1
    :goto_0
    add-int/2addr v1, p1

    .line 3
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    .line 5
    iget p1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->w:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;

    invoke-interface {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;->a(F)V

    return-void
.end method

.method private c(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v1, p1

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_0

    sub-int p1, v4, v1

    goto :goto_0

    :cond_0
    add-int v2, v1, p1

    .line 2
    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->s:I

    add-int/2addr v2, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-le v2, v5, :cond_1

    sub-int/2addr v5, v4

    sub-int p1, v5, v1

    if-gez p1, :cond_1

    return-void

    :cond_1
    :goto_0
    add-int/2addr v1, p1

    .line 3
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    .line 5
    iget p1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->w:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;

    invoke-interface {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;->b(F)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->c:I

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/e;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d:I

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcn/nubia/video/mediaeditorview/e;->l:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcn/nubia/video/mediaeditorview/e;->k:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d:I

    .line 7
    :goto_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->c:I

    add-int/lit16 v0, v0, -0x384

    div-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j:I

    .line 8
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    if-eq v0, v2, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d:I

    add-int/lit8 v0, v0, -0x5a

    div-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i:I

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i:I

    add-int/lit16 v4, v2, 0x384

    add-int/lit8 v5, v3, 0x5a

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i:I

    add-int/lit16 v4, v2, 0x384

    add-int/lit8 v5, v3, 0x5a

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d:I

    add-int/lit8 v0, v0, -0x78

    div-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i:I

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i:I

    add-int/lit16 v4, v2, 0x384

    add-int/lit8 v5, v3, 0x78

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i:I

    add-int/lit16 v4, v2, 0x384

    add-int/lit8 v5, v3, 0x78

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    .line 15
    :goto_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x15

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x15

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->m:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->n:Landroid/graphics/RectF;

    .line 17
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPosition mWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLeft = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mTop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleTimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 7
    :goto_0
    iget-object v5, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v5, 0x12

    .line 8
    iget-object v6, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-ge v5, v6, :cond_7

    .line 9
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v5, v1, :cond_4

    .line 10
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v5

    move v6, v9

    move v11, v6

    .line 11
    :cond_2
    :goto_1
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_f

    .line 12
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v9, -0x1

    .line 13
    rem-int/2addr v13, v1

    if-nez v13, :cond_2

    if-ge v6, v5, :cond_2

    .line 14
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 15
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v13, v11

    int-to-float v13, v13

    invoke-virtual {v3, v13, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17
    invoke-virtual {v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    int-to-float v13, v11

    .line 18
    invoke-virtual {v2, v12, v13, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 19
    :goto_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v5, v1, :cond_f

    .line 21
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    .line 22
    iget-object v5, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v5, v1

    move v6, v9

    move v11, v6

    .line 23
    :goto_3
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_f

    .line 24
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v9, -0x1

    .line 25
    rem-int/2addr v13, v5

    if-nez v13, :cond_5

    if-ge v6, v1, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 26
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 27
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 28
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v13, v11

    int-to-float v13, v13

    invoke-virtual {v3, v13, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 29
    invoke-virtual {v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    int-to-float v13, v11

    .line 30
    invoke-virtual {v2, v12, v13, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 31
    :goto_4
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_3

    .line 32
    :cond_7
    iget-object v6, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int v6, v5, v6

    .line 33
    iget-object v11, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v5, v11

    move v11, v9

    move v12, v11

    .line 34
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_f

    .line 35
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    const/4 v14, 0x1

    move v15, v14

    :goto_6
    if-gt v15, v6, :cond_9

    .line 36
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 37
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 38
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    add-int v7, v11, v16

    int-to-float v7, v7

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 39
    invoke-virtual {v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_8
    int-to-float v7, v11

    .line 40
    invoke-virtual {v2, v13, v7, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 41
    :goto_7
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v11, v7

    add-int/lit8 v15, v15, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_9
    if-eqz v5, :cond_b

    .line 42
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-gt v5, v7, :cond_c

    .line 43
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v7, v5

    add-int/lit8 v15, v9, 0x1

    sub-int/2addr v15, v14

    .line 44
    rem-int/2addr v15, v7

    if-nez v15, :cond_b

    if-ge v12, v5, :cond_b

    .line 45
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 47
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    invoke-virtual {v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_a
    int-to-float v7, v11

    .line 49
    invoke-virtual {v2, v13, v7, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 50
    :goto_8
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v11, v7

    goto :goto_a

    :cond_b
    :goto_9
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_c

    .line 51
    :cond_c
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v5, v7, :cond_b

    .line 52
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .line 53
    iget-object v15, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    div-int/2addr v15, v7

    add-int/lit8 v16, v9, 0x1

    add-int/lit8 v16, v16, -0x1

    .line 54
    rem-int v16, v16, v15

    if-nez v16, :cond_d

    if-ge v12, v7, :cond_d

    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 55
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v7

    if-eqz v7, :cond_e

    const/high16 v7, 0x3f800000    # 1.0f

    .line 56
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    add-int/2addr v14, v11

    int-to-float v14, v14

    invoke-virtual {v3, v14, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 58
    invoke-virtual {v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_e
    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v14, v11

    .line 59
    invoke-virtual {v2, v13, v14, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 60
    :goto_b
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v11, v13

    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 61
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_10
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x384

    const/16 v2, 0x78

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->e:Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    sget v1, Lcn/nubia/video/mediaeditorview/f;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    sget v2, Lcn/nubia/video/mediaeditorview/f;->Q:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    sget v2, Lcn/nubia/video/mediaeditorview/f;->P:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->q:Landroid/graphics/drawable/Drawable;

    .line 6
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->f:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/d;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->h:Landroid/graphics/Paint;

    .line 13
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/d;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    .line 17
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->e()V

    return-void
.end method

.method public getIsTouchFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->B:Z

    return v0
.end method

.method public h(II)Z
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v2, -0x23

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v2, v2, 0x23

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v3, -0x23

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, -0x7

    add-int/lit8 v3, v3, 0x23

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public i(II)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v2, -0x23

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v2, v2, 0x23

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public j(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public k(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    return-void
.end method

.method public l(IIILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    int-to-float p2, p2

    const/high16 v0, 0x41900000    # 18.0f

    mul-float/2addr p2, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p2, p2

    int-to-float p3, p3

    mul-float/2addr p3, v0

    div-float/2addr p3, p1

    float-to-int p1, p3

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p2, p1, :cond_0

    .line 2
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    :cond_1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v4, -0x15

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 8
    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v1, 0x15

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->n:Landroid/graphics/RectF;

    add-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->left:F

    add-int/lit8 v1, v1, -0x7

    int-to-float v1, v1

    .line 10
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->m:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v5, v5, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->n:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 15
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/d;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 16
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 17
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/d;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 18
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v4, -0x5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x30

    sub-int/2addr v4, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v5, v6, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v3, -0xa

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x30

    add-int/lit8 v3, v3, -0x8

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v3, 0x3

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x30

    add-int/lit8 v3, v3, 0x5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 24
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v3, 0x8

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x30

    add-int/lit8 v3, v3, 0xa

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v0

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41000000    # 8.0f

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 30
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 31
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 32
    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 33
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 34
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->n:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v5, v5, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->o:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 37
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/d;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 39
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 40
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    .line 41
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g:Landroid/graphics/Paint;

    iget v4, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->c:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v5, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    mul-float/2addr v3, v5

    add-float v6, v4, v3

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v4

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 43
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    mul-float/2addr v3, v1

    add-float v8, v4, v3

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g:Landroid/graphics/Paint;

    move-object v5, p1

    .line 44
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    if-nez v0, :cond_5

    .line 47
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->q:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v4, v5

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int p1, v1, p1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleTimeLineView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 7
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a:I

    if-ne p2, v2, :cond_2

    .line 8
    iput-boolean v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->B:Z

    .line 9
    invoke-virtual {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->h(II)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    .line 10
    invoke-virtual {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->i(II)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->z:Z

    .line 11
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->A:I

    .line 12
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    if-nez p2, :cond_2

    .line 13
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    .line 14
    :cond_1
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_2

    move p1, p2

    .line 15
    :cond_2
    :goto_0
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

    if-eqz p2, :cond_11

    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    if-nez p2, :cond_11

    .line 16
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_3

    move p1, v0

    goto :goto_1

    .line 17
    :cond_3
    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_4

    move p1, v1

    .line 18
    :cond_4
    :goto_1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 20
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

    invoke-interface {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;->t(F)V

    goto/16 :goto_7

    .line 21
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 22
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    if-eqz p2, :cond_7

    .line 23
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->z:Z

    if-eqz p2, :cond_6

    .line 24
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->A:I

    sub-int p2, p1, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->c(I)V

    goto :goto_2

    .line 25
    :cond_6
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->A:I

    sub-int p2, p1, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->b(I)V

    .line 26
    :goto_2
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->A:I

    goto :goto_3

    .line 27
    :cond_7
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_8

    move p1, v0

    goto :goto_3

    .line 28
    :cond_8
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_9

    move p1, p2

    .line 29
    :cond_9
    :goto_3
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

    if-eqz p2, :cond_11

    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    if-nez p2, :cond_11

    .line 30
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_a

    move p1, v0

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_b

    move p1, v1

    .line 32
    :cond_b
    :goto_4
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 34
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

    invoke-interface {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;->t(F)V

    goto :goto_7

    .line 35
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_11

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->B:Z

    .line 37
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->y:Z

    .line 38
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->z:Z

    .line 39
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_d

    move p1, v0

    goto :goto_5

    .line 40
    :cond_d
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_e

    move p1, p2

    .line 41
    :cond_e
    :goto_5
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

    if-eqz p2, :cond_11

    .line 42
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_f

    move p1, v0

    goto :goto_6

    .line 43
    :cond_f
    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_10

    move p1, v1

    .line 44
    :cond_10
    :goto_6
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->t:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 46
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

    invoke-interface {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;->t(F)V

    .line 47
    :cond_11
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public setmOnIncatorChangeListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->x:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;

    return-void
.end method

.method public setmSimpleTimeLineListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->w:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;

    return-void
.end method

.method public setmTimeGroupList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->u:Ljava/util/ArrayList;

    return-void
.end method

.method public setmTotalTime(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->r:I

    int-to-float p1, p1

    const v0, 0x4a095440    # 2250000.0f

    div-float/2addr v0, p1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->s:I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setmTotalTime mTotalTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->r:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mMinLength = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->s:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleTimeLineView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
