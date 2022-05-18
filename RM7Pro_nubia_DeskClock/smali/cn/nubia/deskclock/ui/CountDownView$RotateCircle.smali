.class Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;
.super Ljava/lang/Object;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateCircle"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownView;)V
    .locals 2

    .prologue
    .line 885
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    .line 887
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    .line 888
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandlePointPaintWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 889
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 891
    return-void
.end method


# virtual methods
.method public drawCircle(Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "angle"    # F

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 895
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$2300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 896
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$2600(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1000(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$1000(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2400(Lcn/nubia/deskclock/ui/CountDownView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/CountDownView;->access$1000(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/CountDownView;->access$2500(Lcn/nubia/deskclock/ui/CountDownView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 897
    invoke-static {v5}, Lcn/nubia/deskclock/ui/CountDownView;->access$1000(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 896
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 898
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$2300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2600(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 899
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$2300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 901
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v6, v0, :cond_2

    .line 902
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 903
    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getDrawCircleOriginX()F

    move-result v1

    int-to-float v2, v6

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCircleGradDistance()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 904
    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getDrawCircleOriginY()F

    move-result v2

    int-to-float v3, v6

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCircleGradDistance()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 905
    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2400(Lcn/nubia/deskclock/ui/CountDownView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getDrawCircleOriginX()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 906
    invoke-static {v5}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCircleGradDistance()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 907
    invoke-static {v4}, Lcn/nubia/deskclock/ui/CountDownView;->access$2500(Lcn/nubia/deskclock/ui/CountDownView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v5}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getDrawCircleOriginY()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v6

    iget-object v7, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 908
    invoke-static {v7}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCircleGradDistance()F

    move-result v7

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    .line 902
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 909
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 910
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCountdownFirstCircleClolor()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 911
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 912
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 924
    :goto_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 901
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 913
    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x44340000    # 720.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 914
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 915
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCountdownSecondCircleClolor()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 916
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float v3, p2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 918
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 919
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCountdownSecondCircleClolor()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 920
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x44340000    # 720.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 921
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getCountdownThridCircleClolor()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 922
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mRectF:Landroid/graphics/RectF;

    const v2, 0x441d8000    # 630.0f

    const/high16 v0, 0x44340000    # 720.0f

    sub-float v3, p2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 927
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 928
    return-void
.end method
