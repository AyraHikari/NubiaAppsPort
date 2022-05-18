.class public Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;,
        Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;
    }
.end annotation


# static fields
.field public static v:I = 0xa


# instance fields
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

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/RectF;

.field private m:Landroid/graphics/Path;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:I

.field private q:Landroid/content/Context;

.field private r:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;

.field private s:Z

.field private t:Z

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    .line 4
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    .line 5
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    .line 6
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->k:Landroid/graphics/RectF;

    .line 7
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->l:Landroid/graphics/RectF;

    .line 8
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->m:Landroid/graphics/Path;

    .line 9
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->s:Z

    .line 11
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->t:Z

    .line 12
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    .line 13
    sget-object v0, Lcn/nubia/video/mediaeditorview/k;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->a:I

    .line 15
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->e()V

    return-void
.end method

.method private a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v1, p1

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_0

    sub-int p1, v4, v1

    goto :goto_0

    :cond_0
    add-int v2, v1, p1

    .line 2
    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->p:I

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
    iget p1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->r:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;

    invoke-interface {v0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;->a(F)V

    return-void
.end method

.method private b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v1, p1

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_0

    sub-int p1, v4, v1

    goto :goto_0

    :cond_0
    add-int v2, v1, p1

    .line 2
    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->p:I

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
    iget p1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->r:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;

    invoke-interface {v0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;->b(F)V

    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->c:I

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/e;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->d:I

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcn/nubia/video/mediaeditorview/e;->l:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->d:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcn/nubia/video/mediaeditorview/e;->k:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->d:I

    .line 7
    :goto_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->c:I

    sget v4, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    mul-int/lit8 v4, v4, 0x5a

    sub-int/2addr v0, v4

    div-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->h:I

    .line 8
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->a:I

    if-eq v0, v2, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->d:I

    add-int/lit8 v0, v0, -0x5a

    div-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g:I

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->h:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g:I

    sget v4, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    mul-int/lit8 v4, v4, 0x5a

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, 0x5a

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->h:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g:I

    sget v4, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    mul-int/lit8 v4, v4, 0x5a

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, 0x5a

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->d:I

    add-int/lit8 v0, v0, -0x78

    div-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g:I

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->h:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g:I

    sget v4, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    mul-int/lit8 v4, v4, 0x5a

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, 0x78

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->h:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g:I

    sget v4, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    mul-int/lit8 v4, v4, 0x5a

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, 0x78

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    .line 15
    :goto_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

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

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->k:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

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

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->l:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPosition mWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLeft = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mTop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifTimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()Z
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

.method private i(II)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x23

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x14

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x23

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

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
    iget-object v5, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_10

    .line 8
    sget v5, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    .line 9
    iget-object v6, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-ge v5, v6, :cond_7

    .line 10
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v5, v1, :cond_4

    .line 11
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v5

    move v6, v9

    move v11, v6

    .line 12
    :cond_2
    :goto_1
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_f

    .line 13
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v9, -0x1

    .line 14
    rem-int/2addr v13, v1

    if-nez v13, :cond_2

    if-ge v6, v5, :cond_2

    .line 15
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 16
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 17
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v13, v11

    int-to-float v13, v13

    invoke-virtual {v3, v13, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 18
    invoke-virtual {v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    int-to-float v13, v11

    .line 19
    invoke-virtual {v2, v12, v13, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 20
    :goto_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 21
    :cond_4
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v5, v1, :cond_f

    .line 22
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    .line 23
    iget-object v5, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v5, v1

    move v6, v9

    move v11, v6

    .line 24
    :goto_3
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_f

    .line 25
    iget-object v12, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v9, -0x1

    .line 26
    rem-int/2addr v13, v5

    if-nez v13, :cond_5

    if-ge v6, v1, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 27
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 28
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 29
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v13, v11

    int-to-float v13, v13

    invoke-virtual {v3, v13, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 30
    invoke-virtual {v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    int-to-float v13, v11

    .line 31
    invoke-virtual {v2, v12, v13, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 32
    :goto_4
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_3

    .line 33
    :cond_7
    iget-object v6, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int v6, v5, v6

    .line 34
    iget-object v11, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v5, v11

    move v11, v9

    move v12, v11

    .line 35
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_f

    .line 36
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    const/4 v14, 0x1

    move v15, v14

    :goto_6
    if-gt v15, v6, :cond_9

    .line 37
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 38
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 39
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    add-int v7, v11, v16

    int-to-float v7, v7

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 40
    invoke-virtual {v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_8
    int-to-float v7, v11

    .line 41
    invoke-virtual {v2, v13, v7, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 42
    :goto_7
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v11, v7

    add-int/lit8 v15, v15, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_9
    if-eqz v5, :cond_b

    .line 43
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-gt v5, v7, :cond_c

    .line 44
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v7, v5

    add-int/lit8 v15, v9, 0x1

    sub-int/2addr v15, v14

    .line 45
    rem-int/2addr v15, v7

    if-nez v15, :cond_b

    if-ge v12, v5, :cond_b

    .line 46
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    .line 47
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 48
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 49
    invoke-virtual {v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_a
    int-to-float v7, v11

    .line 50
    invoke-virtual {v2, v13, v7, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    :goto_8
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v11, v7

    goto :goto_a

    :cond_b
    :goto_9
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_c

    .line 52
    :cond_c
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v5, v7, :cond_b

    .line 53
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .line 54
    iget-object v15, v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    div-int/2addr v15, v7

    add-int/lit8 v16, v9, 0x1

    add-int/lit8 v16, v16, -0x1

    .line 55
    rem-int v16, v16, v15

    if-nez v16, :cond_d

    if-ge v12, v7, :cond_d

    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 56
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

    move-result v7

    if-eqz v7, :cond_e

    const/high16 v7, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 58
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    add-int/2addr v14, v11

    int-to-float v14, v14

    invoke-virtual {v3, v14, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    invoke-virtual {v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_e
    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v14, v11

    .line 60
    invoke-virtual {v2, v13, v14, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    :goto_b
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v11, v13

    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 62
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_10
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    mul-int/lit8 v0, v0, 0x5a

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x78

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->e:Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    sget v1, Lcn/nubia/video/mediaeditorview/f;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    sget v1, Lcn/nubia/video/mediaeditorview/f;->P:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/d;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->m:Landroid/graphics/Path;

    .line 11
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifTimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->d()V

    return-void
.end method

.method public g(II)Z
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

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

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

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

.method public h(II)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

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

.method public j(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

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
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

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
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v2, -0x15

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 7
    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v1, 0x15

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->l:Landroid/graphics/RectF;

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    add-int/lit8 v1, v1, -0x7

    int-to-float v1, v1

    .line 9
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->k:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->l:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/d;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 15
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->m:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 16
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/d;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 17
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v2, -0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x30

    add-int/lit8 v2, v2, -0x3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v2, -0xa

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x30

    add-int/lit8 v2, v2, -0x8

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v2, 0x3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x30

    add-int/lit8 v2, v2, 0x5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v2, 0x8

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x30

    add-int/lit8 v2, v2, 0xa

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

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
    invoke-direct {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i(II)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int p1, v1, p1

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 7
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->a:I

    if-ne p2, v2, :cond_3

    .line 8
    invoke-virtual {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->g(II)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->s:Z

    .line 9
    invoke-virtual {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->h(II)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->t:Z

    .line 10
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->u:I

    .line 11
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->s:Z

    if-nez p2, :cond_3

    .line 12
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_2

    move p1, v0

    goto :goto_0

    .line 13
    :cond_2
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_3

    move p1, p2

    .line 14
    :cond_3
    :goto_0
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->r:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;

    if-eqz p2, :cond_f

    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->s:Z

    if-nez p2, :cond_f

    .line 15
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_4

    goto/16 :goto_4

    .line 16
    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 17
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 18
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->s:Z

    if-eqz p2, :cond_7

    .line 19
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->t:Z

    if-eqz p2, :cond_6

    .line 20
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->u:I

    sub-int p2, p1, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->b(I)V

    goto :goto_1

    .line 21
    :cond_6
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->u:I

    sub-int p2, p1, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->a(I)V

    .line 22
    :goto_1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->u:I

    goto :goto_2

    .line 23
    :cond_7
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_8

    move p1, v0

    goto :goto_2

    .line 24
    :cond_8
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_9

    move p1, p2

    .line 25
    :cond_9
    :goto_2
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->r:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;

    if-eqz p2, :cond_f

    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->s:Z

    if-nez p2, :cond_f

    .line 26
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_a

    goto :goto_4

    .line 27
    :cond_a
    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 28
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_f

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->s:Z

    .line 30
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->t:Z

    .line 31
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_c

    move p1, v0

    goto :goto_3

    .line 32
    :cond_c
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_d

    move p1, p2

    .line 33
    :cond_d
    :goto_3
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->r:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;

    if-eqz p2, :cond_f

    .line 34
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->i:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_e

    goto :goto_4

    .line 35
    :cond_e
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 36
    :cond_f
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public setScreenOrintation(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenOrintation: potrait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifTimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/16 p1, 0x14

    .line 2
    sput p1, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setmSimpleTimeLineListener(Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->r:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;

    return-void
.end method

.method public setmTotalTime(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->o:I

    .line 2
    sget v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->p:I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setmTotalTime mTotalTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mMinLength = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->p:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GifTimeLineView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
