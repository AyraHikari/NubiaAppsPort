.class public Lcn/nubia/video/mediaeditorview/textfilter/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static o:I = 0xe


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/content/Context;

.field private c:Lcn/nubia/video/mediaeditorview/textfilter/d;

.field private d:J

.field private e:J

.field public f:Landroid/graphics/PointF;

.field public g:Landroid/graphics/PointF;

.field public h:Landroid/graphics/PointF;

.field public i:Landroid/graphics/PointF;

.field private j:Z

.field public k:Landroid/graphics/Bitmap;

.field public l:Landroid/graphics/Bitmap;

.field m:Landroid/graphics/Matrix;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->g:Landroid/graphics/PointF;

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->h:Landroid/graphics/PointF;

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->j:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->k:Landroid/graphics/Bitmap;

    .line 8
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->l:Landroid/graphics/Bitmap;

    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->m:Landroid/graphics/Matrix;

    .line 10
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->b:Landroid/content/Context;

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 12
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->c()V

    .line 13
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->a()V

    .line 14
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/textfilter/d;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->b()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/f;->j:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->k:Landroid/graphics/Bitmap;

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/f;->k:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->l:Landroid/graphics/Bitmap;

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->n:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x41200000    # 10.0f
    .end array-data
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    invoke-static {}, Lcn/nubia/video/mediaeditorview/textfilter/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    sget v1, Lcn/nubia/video/mediaeditorview/textfilter/f;->d:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setFont(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    invoke-static {}, Lcn/nubia/video/mediaeditorview/textfilter/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextSize(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/i;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextItem(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setSelect(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->j:Z

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->e:J

    return-wide v0
.end method

.method public getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->c:Lcn/nubia/video/mediaeditorview/textfilter/d;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->d:J

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sget v3, Lcn/nubia/video/mediaeditorview/textfilter/b;->o:I

    int-to-float v4, v3

    sub-float v6, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    sub-float v7, v0, v2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->g:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float v4, v3

    add-float v8, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    sub-float v9, v0, v2

    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->h:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sget v3, Lcn/nubia/video/mediaeditorview/textfilter/b;->o:I

    int-to-float v4, v3

    sub-float v6, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    add-float v7, v0, v2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float v4, v3

    add-float v8, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    add-float v9, v0, v2

    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sget v3, Lcn/nubia/video/mediaeditorview/textfilter/b;->o:I

    int-to-float v4, v3

    sub-float v6, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    sub-float v7, v0, v2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->h:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float v4, v3

    sub-float v8, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    add-float v9, v0, v2

    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->g:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sget v3, Lcn/nubia/video/mediaeditorview/textfilter/b;->o:I

    int-to-float v4, v3

    add-float v6, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    sub-float v7, v0, v2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float v4, v3

    add-float v8, v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v3

    add-float v9, v0, v2

    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->k:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->n:I

    int-to-float v5, v4

    sub-float/2addr v3, v5

    sget v5, Lcn/nubia/video/mediaeditorview/textfilter/b;->o:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-int/2addr v5, v1

    int-to-float v4, v5

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->l:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sget v4, Lcn/nubia/video/mediaeditorview/textfilter/b;->o:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget v5, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->n:I

    int-to-float v6, v5

    sub-float/2addr v3, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-int/2addr v4, v1

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v4, v5

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->e:J

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->m:Landroid/graphics/Matrix;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Lcn/nubia/video/mediaeditorview/textfilter/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/textfilter/b$a;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->j:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b;->d:J

    return-void
.end method
