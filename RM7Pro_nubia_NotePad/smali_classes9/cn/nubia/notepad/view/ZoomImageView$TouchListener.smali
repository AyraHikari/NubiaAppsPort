.class final Lcn/nubia/notepad/view/ZoomImageView$TouchListener;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchListener"
.end annotation


# static fields
.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_ZOOM:I = 0x2


# instance fields
.field private midPoint:Landroid/graphics/PointF;

.field private mode:I

.field private startDis:F

.field private startPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcn/nubia/notepad/view/ZoomImageView;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/view/ZoomImageView;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->mode:I

    .line 140
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startPoint:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/view/ZoomImageView;Lcn/nubia/notepad/view/ZoomImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;
    .param p2, "x1"    # Lcn/nubia/notepad/view/ZoomImageView$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;-><init>(Lcn/nubia/notepad/view/ZoomImageView;)V

    return-void
.end method

.method private checkDxBound([FF)F
    .locals 6
    .param p1, "values"    # [F
    .param p2, "dx"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 305
    iget-object v2, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v2}, Lcn/nubia/notepad/view/ZoomImageView;->access$1200(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v2

    int-to-float v0, v2

    .line 306
    .local v0, "width":F
    iget-object v2, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v2}, Lcn/nubia/notepad/view/ZoomImageView;->access$1000(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v2

    int-to-float v2, v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 314
    :goto_0
    return v1

    .line 308
    :cond_0
    aget v2, p1, v4

    add-float/2addr v2, p2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 309
    aget v1, p1, v4

    neg-float p2, v1

    :cond_1
    :goto_1
    move v1, p2

    .line 314
    goto :goto_0

    .line 310
    :cond_2
    aget v1, p1, v4

    add-float/2addr v1, p2

    iget-object v2, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v2}, Lcn/nubia/notepad/view/ZoomImageView;->access$1000(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v2

    int-to-float v2, v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v2, v0

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 312
    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v1}, Lcn/nubia/notepad/view/ZoomImageView;->access$1000(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v1

    int-to-float v1, v1

    aget v2, p1, v5

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    neg-float v1, v1

    aget v2, p1, v4

    sub-float p2, v1, v2

    goto :goto_1
.end method

.method private checkDyBound([FF)F
    .locals 6
    .param p1, "values"    # [F
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x5

    .line 284
    iget-object v2, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v2}, Lcn/nubia/notepad/view/ZoomImageView;->access$1100(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v2

    int-to-float v0, v2

    .line 285
    .local v0, "height":F
    iget-object v2, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v2}, Lcn/nubia/notepad/view/ZoomImageView;->access$900(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v2

    int-to-float v2, v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 293
    :goto_0
    return v1

    .line 287
    :cond_0
    aget v2, p1, v4

    add-float/2addr v2, p2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 288
    aget v1, p1, v4

    neg-float p2, v1

    :cond_1
    :goto_1
    move v1, p2

    .line 293
    goto :goto_0

    .line 289
    :cond_2
    aget v1, p1, v4

    add-float/2addr v1, p2

    iget-object v2, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v2}, Lcn/nubia/notepad/view/ZoomImageView;->access$900(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v2

    int-to-float v2, v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v2, v0

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 291
    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v1}, Lcn/nubia/notepad/view/ZoomImageView;->access$900(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v1

    int-to-float v1, v1

    aget v2, p1, v5

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    neg-float v1, v1

    aget v2, p1, v4

    sub-float p2, v1, v2

    goto :goto_1
.end method

.method private checkFitScale(F[F)F
    .locals 3
    .param p1, "scale"    # F
    .param p2, "values"    # [F

    .prologue
    const/4 v2, 0x0

    .line 335
    aget v0, p2, v2

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v1}, Lcn/nubia/notepad/view/ZoomImageView;->access$1300(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v0}, Lcn/nubia/notepad/view/ZoomImageView;->access$1300(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v0

    aget v1, p2, v2

    div-float p1, v0, v1

    .line 337
    :cond_0
    aget v0, p2, v2

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v1}, Lcn/nubia/notepad/view/ZoomImageView;->access$600(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v0}, Lcn/nubia/notepad/view/ZoomImageView;->access$600(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v0

    aget v1, p2, v2

    div-float p1, v0, v1

    .line 340
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    aget v1, p2, v2

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/ZoomImageView;->access$502(Lcn/nubia/notepad/view/ZoomImageView;F)F

    .line 341
    return p1
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 263
    .local v0, "dx":D
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 265
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method private isInImageArea(Landroid/view/MotionEvent;[F)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "values"    # [F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 239
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v8}, Lcn/nubia/notepad/view/ZoomImageView;->access$900(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x4

    aget v9, p2, v9

    mul-float v5, v8, v9

    .line 240
    .local v5, "zoomY":F
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v8}, Lcn/nubia/notepad/view/ZoomImageView;->access$1000(Lcn/nubia/notepad/view/ZoomImageView;)I

    move-result v8

    int-to-float v8, v8

    aget v9, p2, v6

    mul-float v4, v8, v9

    .line 242
    .local v4, "zoomX":F
    const/4 v8, 0x5

    aget v1, p2, v8

    .line 244
    .local v1, "leftY":F
    const/4 v8, 0x2

    aget v0, p2, v8

    .line 246
    .local v0, "leftX":F
    add-float v3, v1, v5

    .line 248
    .local v3, "rightY":F
    add-float v2, v0, v4

    .line 249
    .local v2, "rightX":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_0

    .line 250
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    cmpg-float v8, v8, v2

    if-gez v8, :cond_0

    .line 251
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_0

    .line 252
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    cmpg-float v8, v8, v3

    if-ltz v8, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    cmpg-float v8, v8, v2

    if-gez v8, :cond_2

    .line 254
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    cmpg-float v8, v8, v3

    if-gez v8, :cond_2

    :cond_1
    move v6, v7

    .line 257
    :cond_2
    return v6
.end method

.method private mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 270
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 271
    .local v0, "midX":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 272
    .local v1, "midY":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v9, 0x1

    const/16 v8, 0x9

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/notepad/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 234
    return v9

    .line 152
    :pswitch_1
    iput v9, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->mode:I

    .line 154
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$100(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-virtual {v7}, Lcn/nubia/notepad/view/ZoomImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 155
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 156
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$100(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 157
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$300(Lcn/nubia/notepad/view/ZoomImageView;)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->mode:I

    if-ne v6, v9, :cond_1

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v0, v6, v7

    .line 164
    .local v0, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v1, v6, v7

    .line 166
    .local v1, "dy":F
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$100(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 167
    new-array v4, v8, [F

    .line 168
    .local v4, "values":[F
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 169
    invoke-direct {p0, v4, v0}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->checkDxBound([FF)F

    move-result v0

    .line 170
    invoke-direct {p0, v4, v1}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->checkDyBound([FF)F

    move-result v1

    .line 171
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 175
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "values":[F
    :cond_1
    iget v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->mode:I

    if-ne v6, v10, :cond_0

    .line 176
    new-array v5, v8, [F

    .line 177
    .local v5, "values1":[F
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 178
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->midPoint:Landroid/graphics/PointF;

    if-eqz v6, :cond_0

    invoke-direct {p0, p2, v5}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->isInImageArea(Landroid/view/MotionEvent;[F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-direct {p0, p2}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v2

    .line 181
    .local v2, "endDis":F
    cmpl-float v6, v2, v7

    if-lez v6, :cond_0

    .line 182
    iget v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startDis:F

    div-float v3, v2, v6

    .line 183
    .local v3, "scale":F
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$100(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 185
    new-array v4, v8, [F

    .line 186
    .restart local v4    # "values":[F
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 188
    invoke-direct {p0, v3, v4}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->checkFitScale(F[F)F

    move-result v3

    .line 193
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->midPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->midPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v3, v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 204
    .end local v2    # "endDis":F
    .end local v3    # "scale":F
    .end local v4    # "values":[F
    .end local v5    # "values1":[F
    :pswitch_3
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startPoint:Landroid/graphics/PointF;

    invoke-static {v6, p2, v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$400(Lcn/nubia/notepad/view/ZoomImageView;Landroid/view/MotionEvent;Landroid/graphics/PointF;)V

    goto/16 :goto_0

    .line 207
    :pswitch_4
    const/4 v6, 0x0

    iput v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->mode:I

    .line 209
    new-array v4, v8, [F

    .line 210
    .restart local v4    # "values":[F
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 212
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$500(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$600(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 213
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$700(Lcn/nubia/notepad/view/ZoomImageView;)Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 214
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$700(Lcn/nubia/notepad/view/ZoomImageView;)Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;

    move-result-object v6

    invoke-interface {v6}, Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;->onLowerMinScale()V

    goto/16 :goto_0

    .line 215
    :cond_2
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$500(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$600(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    .line 216
    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$500(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v7}, Lcn/nubia/notepad/view/ZoomImageView;->access$800(Lcn/nubia/notepad/view/ZoomImageView;)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 217
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-virtual {v6}, Lcn/nubia/notepad/view/ZoomImageView;->makeImgInitShow()V

    goto/16 :goto_0

    .line 222
    .end local v4    # "values":[F
    :pswitch_5
    iput v10, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->mode:I

    .line 224
    invoke-direct {p0, p2}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startDis:F

    .line 226
    iget v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->startDis:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 227
    invoke-direct {p0, p2}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->midPoint:Landroid/graphics/PointF;

    .line 229
    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v6}, Lcn/nubia/notepad/view/ZoomImageView;->access$100(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-virtual {v7}, Lcn/nubia/notepad/view/ZoomImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
