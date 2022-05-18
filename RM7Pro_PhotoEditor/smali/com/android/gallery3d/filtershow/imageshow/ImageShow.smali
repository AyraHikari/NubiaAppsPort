.class public Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.super Landroid/view/View;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;,
        Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;
    }
.end annotation


# static fields
.field private static N:Landroid/graphics/Bitmap;


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Z

.field E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Matrix;

.field private H:Z

.field public I:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

.field private J:Landroid/graphics/Point;

.field private K:I

.field protected L:Lcom/android/gallery3d/filtershow/ui/a;

.field private M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field protected a:Landroid/graphics/Paint;

.field private b:Landroid/view/GestureDetector;

.field protected c:Landroid/view/ScaleGestureDetector;

.field protected d:Landroid/graphics/Rect;

.field private e:Z

.field private f:Z

.field private g:J

.field private h:Landroid/graphics/drawable/NinePatchDrawable;

.field private i:Landroid/graphics/Rect;

.field private j:I

.field private k:Z

.field private l:Landroid/graphics/Point;

.field private m:Landroid/graphics/Point;

.field protected n:Z

.field private o:Z

.field p:Landroid/graphics/Point;

.field q:F

.field r:F

.field private s:Landroid/support/v4/widget/EdgeEffectCompat;

.field private t:I

.field private u:I

.field private v:Landroid/animation/ValueAnimator;

.field private w:Landroid/animation/ValueAnimator;

.field private x:Landroid/animation/ValueAnimator;

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->b:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c:Landroid/view/ScaleGestureDetector;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->e:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->g:J

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->h:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->i:Landroid/graphics/Rect;

    const/16 v2, 0xf

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->k:Z

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->n:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->p:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->u:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z:F

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->A:F

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->B:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C:Z

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D:Z

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->G:Landroid/graphics/Matrix;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->H:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->I:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->J:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->K:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupImageShow(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->b:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->e:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->g:J

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->h:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->i:Landroid/graphics/Rect;

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->k:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->n:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->p:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->u:I

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->A:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->B:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D:Z

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->G:Landroid/graphics/Matrix;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->H:Z

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->I:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->J:Landroid/graphics/Point;

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->K:I

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupImageShow(Landroid/content/Context;)V

    return-void
.end method

.method private C(IIIII)V
    .locals 3

    if-ne p1, p2, :cond_0

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w:Landroid/animation/ValueAnimator;

    new-array p2, v0, [I

    aput p3, p2, v2

    aput p4, p2, p1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w:Landroid/animation/ValueAnimator;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$a;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$a;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$b;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$b;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private D(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M0()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v2

    if-eqz v0, :cond_8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->A:F

    sub-float/2addr p1, v5

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->B:F

    sub-float/2addr v2, p1

    cmpg-float p1, v2, v4

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float p1, v2, v1

    if-lez p1, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    div-float p1, v4, v1

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;

    float-to-int v1, v4

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->d(IFZ)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v3, p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_1
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z:F

    sub-float/2addr v3, p1

    int-to-float p1, v2

    div-float/2addr v3, p1

    int-to-float p1, v1

    mul-float/2addr v3, p1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->B:F

    add-float/2addr v1, v3

    cmpg-float v2, v1, v4

    if-gez v2, :cond_6

    goto :goto_2

    :cond_6
    cmpl-float v2, v1, p1

    if-lez v2, :cond_7

    move v4, p1

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    float-to-int p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method private F(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$c;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$d;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->b()V

    return-void
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f(Landroid/graphics/Point;F)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_0

    iget v0, v1, Landroid/graphics/Point;->y:I

    if-eq v5, v0, :cond_1

    :cond_0
    iget v6, v1, Landroid/graphics/Point;->y:I

    const/16 v7, 0xc8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C(IIIII)V

    :cond_1
    return-void
.end method

.method private e(II)Landroid/graphics/Rect;
    .locals 6

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/h;->z(FFFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    new-instance v1, Landroid/graphics/Rect;

    float-to-int v3, v2

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    add-int/2addr v3, v4

    float-to-int v5, v0

    add-int/2addr v5, v4

    add-float/2addr p1, v2

    float-to-int p1, p1

    sub-int/2addr p1, v4

    add-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr p2, v4

    invoke-direct {v1, v3, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private f(Landroid/graphics/Point;F)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s0()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v4, v3, v2}, Lcom/android/gallery3d/filtershow/filters/j;->l0(Landroid/graphics/RectF;II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/imageshow/h;->x(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget v5, v3, Landroid/graphics/RectF;->left:F

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    iget v6, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x2

    if-lez v7, :cond_7

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x3

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_8

    if-nez v0, :cond_8

    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    move v1, v2

    goto :goto_4

    :cond_7
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    mul-int/2addr v5, v9

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v0

    sub-float/2addr v5, v2

    div-float/2addr v5, p2

    float-to-int v0, v5

    iput v0, p1, Landroid/graphics/Point;->x:I

    :cond_8
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    if-eqz v6, :cond_9

    if-nez v4, :cond_9

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x4

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_b

    if-nez v6, :cond_b

    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_a
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    mul-int/2addr v4, v9

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float/2addr v3, v2

    div-float/2addr v3, p2

    float-to-int p2, v3

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_b
    move v9, v1

    :goto_5
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    if-eq p1, v9, :cond_e

    if-eqz p1, :cond_c

    if-eqz v9, :cond_d

    :cond_c
    iput v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    :cond_d
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->u:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :cond_e
    if-eqz v9, :cond_f

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->u:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_f
    return-void
.end method

.method private static h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private static i(Landroid/graphics/Bitmap;)Landroid/graphics/Shader;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method private m(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->S0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s0()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->I()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private o(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->i:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    sub-int/2addr v1, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->h:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->i:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->h:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->k:Z

    :cond_0
    return-void
.end method

.method private setupImageShow(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f0600d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f0600d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    const v1, 0x7f0e0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    const v1, 0x7f07012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->h:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    move-object v1, p1

    check-cast v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->N:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f070259

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->N:Landroid/graphics/Bitmap;

    :cond_0
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    const p1, 0x7f060058

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->u:I

    return-void
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/filtershow/g/b;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    return-void
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public E()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->i(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w0(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->h(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f(Landroid/graphics/Point;F)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->P0(Landroid/graphics/Point;)V

    return-void
.end method

.method public getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->u()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->t0(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    return-void
.end method

.method public k()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->n:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public l(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->R0()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    const-string v1, "matrix"

    const-string v2, "ImageShow onDraw DrawCompareImage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public n(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v4, v4, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->p0()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    iget-boolean v9, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->H:Z

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->r()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->j(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    move-result v9

    if-eqz v9, :cond_2

    iput-boolean v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->H:Z

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/x;->v0()V

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    iput-boolean v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->H:Z

    :cond_4
    :goto_0
    if-eqz v7, :cond_c

    const-string v7, "mosda"

    const-string v9, "Imageshow ondraw drwaImageAndAnimate showAnimatedImage"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->N()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_5

    return-void

    :cond_5
    invoke-virtual {v3, v7, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v9

    new-instance v10, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v10, v4, v4, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->q()I

    move-result v13

    const/4 v14, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v13, v8, :cond_7

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->A()F

    move-result v3

    cmpl-float v10, v3, v4

    if-ltz v10, :cond_6

    sget-object v8, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    sget-object v12, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v10, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g1(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/2addr v5, v14

    int-to-float v5, v5

    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v13

    div-float/2addr v5, v13

    mul-float/2addr v3, v5

    iget v5, v10, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v8, v3

    sub-float/2addr v5, v8

    iget v8, v10, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v12, v3

    sub-float/2addr v8, v12

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->G:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->G:Landroid/graphics/Matrix;

    div-float/2addr v15, v3

    invoke-virtual {v10, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->G:Landroid/graphics/Matrix;

    neg-float v12, v5

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v12, v14

    neg-float v14, v8

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v14, v13

    invoke-virtual {v10, v12, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v10, v12

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->G:Landroid/graphics/Matrix;

    invoke-virtual {v13, v10, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->reset()V

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F:Landroid/graphics/Paint;

    invoke-static/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->i(Landroid/graphics/Bitmap;)Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->G:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->N:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    move v5, v8

    :goto_1
    move v8, v5

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->q()I

    move-result v2

    if-ne v2, v14, :cond_8

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->N()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->N()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->e(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->N()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->N()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->e(II)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->l()F

    move-result v4

    sub-float v4, v15, v4

    mul-float/2addr v4, v15

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->l()F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->m()F

    move-result v2

    invoke-virtual {v1, v2, v12, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1, v4, v4, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->q()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_a

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/s;

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/s;->l0()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->m()F

    move-result v2

    invoke-virtual {v1, v2, v15, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->m()F

    move-result v2

    invoke-virtual {v1, v15, v2, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_a
    :goto_2
    if-eqz v8, :cond_b

    invoke-direct {v0, v1, v11}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_c
    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->B()F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v4

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object p1

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->p:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, p1, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Point;->x:I

    :goto_1
    iput v0, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f(Landroid/graphics/Point;F)V

    iget v7, p1, Landroid/graphics/Point;->x:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    const/16 v10, 0x190

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C(IIIII)V

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F(F)V

    :cond_3
    :goto_2
    return v3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->E0(II)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k1()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->z()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->z()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->z()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->r()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->j(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->z()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q2()V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q2()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->k:Z

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->v()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->J()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->p0()Z

    move-result v4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->n(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    :cond_6
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_2

    :cond_7
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_8

    const/high16 v2, 0x42b40000    # 90.0f

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_8
    if-ne v2, v1, :cond_9

    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_1

    :cond_9
    :goto_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_b
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t:I

    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->L:Lcom/android/gallery3d/filtershow/ui/a;

    if-eqz v0, :cond_c

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y:I

    if-ne v2, v1, :cond_c

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->K:I

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/filtershow/ui/a;->b(Landroid/graphics/Canvas;I)V

    :cond_c
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    return p3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->L:Lcom/android/gallery3d/filtershow/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/ui/a;->d(II)V

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->B()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->B()F

    move-result v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->M0(F)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->q:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->p:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->P0(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->p:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->q:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r:F

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->M0(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->R0()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->g()V

    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->b:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->B()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-object v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    :goto_0
    iget-object v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    sget-object v7, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    if-ne v5, v7, :cond_2

    return v3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->B()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    iput-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->n:Z

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    if-nez v2, :cond_4

    iput-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C:Z

    sget-object v7, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-object v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iget-object v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l:Landroid/graphics/Point;

    iput v4, v7, Landroid/graphics/Point;->x:I

    iput v5, v7, Landroid/graphics/Point;->y:I

    iget-object v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->J:Landroid/graphics/Point;

    iput v4, v7, Landroid/graphics/Point;->x:I

    iput v5, v7, Landroid/graphics/Point;->y:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->g:J

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v7

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/x;->J0(Landroid/graphics/Point;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->A:F

    iget-object v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M0()Landroid/widget/SeekBar;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M0()Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    int-to-float v7, v7

    iput v7, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->B:F

    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-ne v2, v6, :cond_e

    iget-object v9, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    sget-object v10, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    if-ne v9, v10, :cond_e

    iget-object v9, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iput v4, v9, Landroid/graphics/Point;->x:I

    iput v5, v9, Landroid/graphics/Point;->y:I

    iget-boolean v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C:Z

    if-eqz v4, :cond_5

    iput-boolean v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C:Z

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v9, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_5

    iput-boolean v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D:Z

    :cond_5
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v4

    cmpl-float v5, v4, v7

    if-lez v5, :cond_6

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    div-float/2addr v9, v4

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->G()Landroid/graphics/Point;

    move-result-object v4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v10

    iget v11, v4, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    add-float/2addr v11, v9

    float-to-int v9, v11

    iput v9, v10, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v10, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/gallery3d/filtershow/imageshow/x;->P0(Landroid/graphics/Point;)V

    iput-boolean v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f:Z

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->p()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->e:Z

    if-nez v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v9, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->g:J

    sub-long/2addr v4, v9

    const-wide/16 v9, 0xc8

    cmp-long v4, v4, v9

    if-lez v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    :cond_7
    :goto_1
    iget-boolean v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D:Z

    if-eqz v4, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D(Landroid/view/MotionEvent;)V

    :cond_8
    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->I:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

    if-eqz v4, :cond_e

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->J:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->x:I

    sub-int v12, v9, v11

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int v13, v5, v10

    if-lez v12, :cond_9

    goto :goto_2

    :cond_9
    neg-int v12, v12

    :goto_2
    if-lez v13, :cond_a

    goto :goto_3

    :cond_a
    neg-int v13, v13

    :goto_3
    if-lez v12, :cond_b

    div-int/2addr v13, v12

    int-to-double v13, v13

    const-wide v15, 0x3ff0c152382d7365L    # 1.0471975511965976

    cmpg-double v13, v13, v15

    if-gez v13, :cond_b

    if-le v12, v6, :cond_b

    move v6, v3

    goto :goto_4

    :cond_b
    move v6, v8

    :goto_4
    iget v12, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y:I

    if-eq v12, v3, :cond_c

    if-eqz v6, :cond_c

    sub-int/2addr v9, v11

    invoke-interface {v4, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;->a(I)V

    iput v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y:I

    goto :goto_5

    :cond_c
    if-eqz v12, :cond_d

    if-nez v6, :cond_d

    sub-int/2addr v5, v10

    iput v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->K:I

    iput v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y:I

    :cond_d
    :goto_5
    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->J:Landroid/graphics/Point;

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    :cond_e
    if-eq v2, v3, :cond_f

    const/4 v4, 0x3

    if-eq v2, v4, :cond_f

    const/4 v4, 0x4

    if-ne v2, v4, :cond_13

    :cond_f
    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$e;

    iput-boolean v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f:Z

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->l:Landroid/graphics/Point;

    iput v8, v2, Landroid/graphics/Point;->x:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->m:Landroid/graphics/Point;

    iput v8, v2, Landroid/graphics/Point;->x:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->J:Landroid/graphics/Point;

    iput v8, v2, Landroid/graphics/Point;->x:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    iput v8, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->K:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y:I

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->I:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->L:Lcom/android/gallery3d/filtershow/ui/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/ui/a;->f()V

    :cond_10
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v2

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_11

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/gallery3d/filtershow/imageshow/x;->M0(F)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->x0()V

    :cond_11
    iget-boolean v2, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D:Z

    if-eqz v2, :cond_12

    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D(Landroid/view/MotionEvent;)V

    :cond_12
    iput-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->D:Z

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->g()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return v3
.end method

.method protected p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected q(Z)Landroid/graphics/Matrix;
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/h;->p(Ljava/util/Collection;ZLandroid/graphics/Rect;FF)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1
.end method

.method protected r(Z)Landroid/graphics/Matrix;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->q(Z)Landroid/graphics/Matrix;

    move-result-object p1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public s()Z
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->c0()Z

    move-result v0

    return v0
.end method

.method public setMenuItemListener(Lcom/android/gallery3d/filtershow/ui/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->L:Lcom/android/gallery3d/filtershow/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/ui/a;->setListener(Lcom/android/gallery3d/filtershow/ui/a$a;)V

    :cond_0
    return-void
.end method

.method public setScrollInteractionListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;)V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/c;

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->I:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

    new-instance p1, Lcom/android/gallery3d/filtershow/ui/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->M:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/gallery3d/filtershow/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->L:Lcom/android/gallery3d/filtershow/ui/a;

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/c;->l0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/ui/a;->setAdapter(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->b:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public t()Z
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->d0()Z

    move-result v0

    return v0
.end method

.method public u()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E()V

    return-void
.end method

.method public v()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    iput v8, v1, Landroid/graphics/Point;->x:I

    iput v8, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->f(Landroid/graphics/Point;F)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    const/16 v7, 0x190

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C(IIIII)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F(F)V

    iput-boolean v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    :cond_0
    return-void
.end method

.method public w(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method public x(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    return-void
.end method

.method public z()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->o:Z

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->M0(F)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->P0(Landroid/graphics/Point;)V

    return-void
.end method
