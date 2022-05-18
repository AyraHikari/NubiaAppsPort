.class Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/graphics/PointF;

.field private c:F

.field private d:Landroid/graphics/PointF;

.field e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:Z

.field private k:F

.field final synthetic l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->d:Landroid/graphics/PointF;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->e:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->f:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->g:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->h:I

    .line 7
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->j:Z

    const/high16 p1, 0x40800000    # 4.0f

    .line 8
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->k:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 4
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->d()Z

    move-result v2

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v5, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->f:I

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->t(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;I)I

    goto/16 :goto_4

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->f:I

    invoke-static {p1, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->t(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;I)I

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    if-eq p1, v4, :cond_11

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    invoke-static {p1, v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->u(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->b:Landroid/graphics/PointF;

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    invoke-static {v0, p1, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->c:F

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->f(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->a:F

    goto/16 :goto_4

    .line 11
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v5, :cond_a

    .line 12
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    if-eq p1, v4, :cond_a

    .line 13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->s(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->g:I

    if-ne p1, p2, :cond_4

    .line 14
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getContainerWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x32

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_a

    const/high16 p1, 0x42480000    # 50.0f

    cmpl-float p2, v0, p1

    if-lez p2, :cond_a

    cmpl-float p1, v1, p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 15
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getContainerHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x32

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_a

    .line 16
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 17
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->d:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p2

    .line 18
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    .line 19
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3

    .line 20
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->s(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->h:I

    if-ne p1, p2, :cond_a

    .line 21
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 22
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->d:Landroid/graphics/PointF;

    invoke-static {p2, v0, p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    .line 23
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->b:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->e(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->a:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_a

    .line 24
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->b:Landroid/graphics/PointF;

    invoke-static {p2, v1, p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 25
    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->c:F

    div-float/2addr p1, p2

    .line 26
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 27
    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->c:F

    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->i:F

    cmpl-float v3, p2, v1

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v3, :cond_6

    .line 28
    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->k:F

    cmpl-float v1, p1, p2

    if-lez v1, :cond_5

    move p1, p2

    :cond_5
    cmpg-float p2, p1, v6

    if-gez p2, :cond_9

    move p1, v6

    goto :goto_2

    :cond_6
    cmpl-float v3, p2, v1

    if-lez v3, :cond_9

    cmpl-float v3, p1, v6

    if-lez v3, :cond_8

    mul-float v3, p1, p2

    div-float/2addr v3, v1

    .line 29
    iget v6, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->k:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    mul-float/2addr v6, v1

    div-float p1, v6, p2

    :cond_7
    mul-float v3, p1, p2

    cmpg-float v3, v3, v1

    if-gez v3, :cond_9

    goto :goto_1

    :cond_8
    mul-float v3, p1, p2

    div-float/2addr v3, v1

    cmpg-float v3, v3, v6

    if-gez v3, :cond_9

    mul-float/2addr v1, v6

    :goto_1
    div-float p1, v1, p2

    .line 30
    :cond_9
    :goto_2
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->b:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, p1, v3, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 31
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->b:Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 32
    :cond_a
    :goto_3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->s(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->f:I

    if-eq p1, p2, :cond_11

    .line 33
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    if-eq p1, v4, :cond_11

    if-eqz v2, :cond_11

    .line 34
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->r(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Lcn/nubia/video/mediaeditorview/textfilter/b;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    .line 35
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->w(Landroid/graphics/Matrix;Lcn/nubia/video/mediaeditorview/textfilter/b;)V

    goto/16 :goto_4

    .line 36
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->e:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-gez p1, :cond_c

    if-eqz v2, :cond_c

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 37
    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 38
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->g(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->h(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/content/Context;)V

    .line 39
    :cond_c
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->f:I

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->t(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;I)I

    goto/16 :goto_4

    .line 40
    :cond_d
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->d:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->e:J

    .line 42
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1, v3}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->n(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Z)Z

    .line 43
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->o(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    .line 44
    :cond_e
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1, v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->p(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;FF)V

    .line 45
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    if-eq p1, v4, :cond_11

    .line 46
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v4}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->r(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Lcn/nubia/video/mediaeditorview/textfilter/b;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    .line 47
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v4}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->d(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 48
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 49
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->g:I

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->t(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;I)I

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    iget-object p2, p2, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    add-int/lit8 p2, p2, -0x32

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 51
    invoke-static {v4}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x32

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v6}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v6

    iget-object v6, v6, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x32

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 52
    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v7

    iget-object v7, v7, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x32

    invoke-direct {p1, p2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    new-instance p2, Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v4}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x32

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 54
    invoke-static {v6}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v6

    iget-object v6, v6, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, -0x32

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v7

    iget-object v7, v7, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x32

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 55
    invoke-static {v8}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v8

    iget-object v8, v8, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x32

    invoke-direct {p2, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v0, v0

    float-to-int v1, v1

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 57
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    iget-object p2, p2, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->u(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->b:Landroid/graphics/PointF;

    .line 58
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    invoke-static {p2, p1, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->c:F

    .line 59
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->j:Z

    if-eqz p1, :cond_f

    .line 60
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    iget-object p2, p2, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->u(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->i:F

    .line 61
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->j:Z

    .line 62
    :cond_f
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->d:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->e(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->a:F

    .line 63
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->h:I

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->t(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;I)I

    goto :goto_4

    .line 64
    :cond_10
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_11

    if-eqz v2, :cond_11

    .line 65
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1, v5}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->n(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Z)Z

    .line 66
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;->l:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->y()V

    :cond_11
    :goto_4
    return v5
.end method
