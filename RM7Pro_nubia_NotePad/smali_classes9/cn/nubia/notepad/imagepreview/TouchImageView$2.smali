.class Lcn/nubia/notepad/imagepreview/TouchImageView$2;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/imagepreview/TouchImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 116
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    invoke-static/range {p2 .. p2}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->wrap(Landroid/view/MotionEvent;)Lcn/nubia/notepad/imagepreview/WrapMotionEvent;

    move-result-object v9

    .line 120
    .local v9, "event":Lcn/nubia/notepad/imagepreview/WrapMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$200(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$200(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/ScaleGestureDetector;

    .line 122
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$300(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    .line 125
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v9}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX()F

    move-result v21

    invoke-virtual {v9}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY()F

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 127
    .local v6, "curr":Landroid/graphics/PointF;
    invoke-virtual {v9}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getAction()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 253
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->invalidate()V

    .line 255
    const/16 v21, 0x0

    return v21

    .line 129
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->allowInert:Z

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->savedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX()F

    move-result v22

    invoke-virtual {v9}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY()F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->set(FF)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->start:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    goto/16 :goto_0

    .line 137
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$400(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    move/from16 v21, v0

    const/high16 v22, 0x41200000    # 10.0f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->savedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mid:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$500(Lcn/nubia/notepad/imagepreview/TouchImageView;Landroid/graphics/PointF;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    goto/16 :goto_0

    .line 145
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->allowInert:Z

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    .line 147
    invoke-virtual {v9}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->start:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 148
    .local v19, "xDiff":I
    invoke-virtual {v9}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->start:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 149
    .local v20, "yDiff":I
    const/16 v21, 0xa

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 151
    .local v16, "pressTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastPressTime:J

    move-wide/from16 v22, v0

    sub-long v22, v16, v22

    const-wide/16 v24, 0x258

    cmp-long v21, v22, v24

    if-gtz v21, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$600(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/util/Timer;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$600(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/util/Timer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Timer;->cancel()V

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_3

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 156
    .local v18, "targetScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->start:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->start:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 164
    .end local v18    # "targetScale":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$700(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$800(Lcn/nubia/notepad/imagepreview/TouchImageView;FF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastPressTime:J

    .line 172
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1000(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    goto/16 :goto_0

    .line 160
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    goto/16 :goto_1

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastPressTime:J

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/util/Timer;

    invoke-direct/range {v22 .. v22}, Ljava/util/Timer;-><init>()V

    invoke-static/range {v21 .. v22}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$602(Lcn/nubia/notepad/imagepreview/TouchImageView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$600(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/util/Timer;

    move-result-object v21

    new-instance v22, Lcn/nubia/notepad/imagepreview/TouchImageView$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lcn/nubia/notepad/imagepreview/TouchImageView$Task;-><init>(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/TouchImageView$1;)V

    const-wide/16 v24, 0x12c

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_2

    .line 180
    .end local v16    # "pressTime":J
    .end local v19    # "xDiff":I
    .end local v20    # "yDiff":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->savedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$400(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    goto/16 :goto_0

    .line 187
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->allowInert:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 189
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sub-float v7, v21, v22

    .line 190
    .local v7, "deltaX":F
    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    .line 192
    .local v8, "deltaY":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 194
    .local v10, "dragTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1100(Lcn/nubia/notepad/imagepreview/TouchImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDragTime:J

    move-wide/from16 v24, v0

    sub-long v24, v10, v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const v23, 0x3f666666    # 0.9f

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v10, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDragTime:J

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v7, v8}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$800(Lcn/nubia/notepad/imagepreview/TouchImageView;FF)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDelta:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 201
    .end local v7    # "deltaX":F
    .end local v8    # "deltaY":F
    .end local v10    # "dragTime":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$200(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$400(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)F

    move-result v14

    .line 203
    .local v14, "newDist":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 205
    const/high16 v21, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    move/from16 v22, v0

    sub-float v22, v22, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    move/from16 v21, v0

    sub-float v21, v21, v14

    .line 206
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const/high16 v22, 0x42480000    # 50.0f

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    move/from16 v21, v0

    div-float v12, v14, v21

    .line 209
    .local v12, "mScaleFactor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v14, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v15, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 212
    .local v15, "origScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v22, v0

    mul-float v22, v22, v12

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_9

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    move/from16 v21, v0

    div-float v12, v21, v15

    .line 221
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$700(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origWidth:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-lez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_a

    .line 224
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 226
    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v21, v12, v21

    if-gez v21, :cond_8

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$300(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    .line 228
    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v21, v12, v21

    if-gez v21, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1000(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    .line 248
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1300(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    goto/16 :goto_0

    .line 216
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    move/from16 v21, v0

    div-float v12, v21, v15

    goto/16 :goto_3

    .line 233
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1200(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)Landroid/graphics/PointF;

    move-result-object v13

    .line 234
    .local v13, "mid":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    iget v0, v13, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$300(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    .line 237
    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v21, v12, v21

    if-gez v21, :cond_8

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_c

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 242
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_d

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    .line 240
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_b

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    .line 244
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
