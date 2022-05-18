.class Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;
.super Landroid/view/SurfaceView;
.source "Image3dPlayerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/image3d/Image3dPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Image3dVideoView"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStartIndex:I

.field private mStartMovePoint:I

.field private mTempPoint:I

.field final synthetic this$0:Lcn/nubia/image3d/Image3dPlayerActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/image3d/Image3dPlayerActivity;Landroid/content/Context;)V
    .locals 1

    .line 159
    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    .line 160
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartIndex:I

    .line 156
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartMovePoint:I

    .line 157
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    .line 161
    iput-object p2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p0}, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 164
    new-instance v0, Lcn/nubia/image3d/Image3DFileReader;

    invoke-direct {v0, p2}, Lcn/nubia/image3d/Image3DFileReader;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$002(Lcn/nubia/image3d/Image3dPlayerActivity;Lcn/nubia/image3d/Image3DFileReader;)Lcn/nubia/image3d/Image3DFileReader;

    .line 165
    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/image3d/Image3DFileReader;->setListener(Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;)V

    return-void
.end method


# virtual methods
.method public onDecoderComplete()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$102(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    .line 276
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0, v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$702(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    const-string v0, "Image3dPlayerActivity"

    const-string v1, "onDecoderComplete"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayActionComplete()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/image3d/Image3DFileReader;->closeDisplayAction()V

    .line 284
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$500(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/GyroscopeSensor;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcn/nubia/image3d/GyroscopeSensor;->setSensorEventOmegaMagnitude(F)V

    .line 285
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$600(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3dPlayController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/image3d/Image3DFileReader;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/image3d/Image3dPlayController;->setCurrentFrameIndex(I)V

    .line 286
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$402(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    const-string v0, "Image3dPlayerActivity"

    const-string v1, "onDisplayActionComplete"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1100(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    invoke-static {v0, p1}, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->getDefaultSize(II)I

    move-result p1

    .line 295
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1200(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    invoke-static {v0, p2}, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->getDefaultSize(II)I

    move-result p2

    .line 296
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1100(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1200(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1100(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1200(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v1

    mul-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 298
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1100(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result p1

    mul-int/2addr p1, p2

    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1200(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    div-int/2addr p1, v0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1100(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1200(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v1

    mul-int/2addr v1, p1

    if-le v0, v1, :cond_1

    .line 300
    iget-object p2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1200(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result p2

    mul-int/2addr p2, p1

    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1100(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    div-int/2addr p2, v0

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 171
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$100(Lcn/nubia/image3d/Image3dPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$200(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto :goto_2

    .line 175
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$300(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$300(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    goto :goto_2

    .line 176
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    goto :goto_2

    .line 183
    :cond_3
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$300(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$300(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    goto :goto_2

    .line 184
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    .line 191
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    goto/16 :goto_3

    .line 205
    :cond_6
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$600(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3dPlayController;

    move-result-object v0

    iget v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartIndex:I

    iget v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartMovePoint:I

    iget v3, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/image3d/Image3dPlayController;->getIndexFromOffset(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 206
    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$400(Lcn/nubia/image3d/Image3dPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 207
    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/image3d/Image3DFileReader;->seekTo(I)V

    goto :goto_3

    .line 211
    :cond_7
    iget v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    iget v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartMovePoint:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_8

    .line 212
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$800(Lcn/nubia/image3d/Image3dPlayerActivity;)V

    .line 214
    :cond_8
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartMovePoint:I

    .line 215
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0, v4}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$702(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    .line 216
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/image3d/Image3DFileReader;->closeDisplayAction()V

    goto :goto_3

    .line 193
    :cond_9
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$400(Lcn/nubia/image3d/Image3dPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 194
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/image3d/Image3DFileReader;->closeDisplayAction()V

    .line 195
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$500(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/GyroscopeSensor;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Lcn/nubia/image3d/GyroscopeSensor;->setSensorEventOmegaMagnitude(F)V

    .line 196
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$600(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3dPlayController;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/image3d/Image3DFileReader;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/image3d/Image3dPlayController;->setCurrentFrameIndex(I)V

    .line 197
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0, v4}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$402(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    .line 200
    :cond_a
    iget v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mTempPoint:I

    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartMovePoint:I

    .line 201
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0, v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$702(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    .line 202
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$600(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3dPlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/image3d/Image3dPlayController;->getCurrentFrameIndex()I

    move-result v0

    iput v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mStartIndex:I

    .line 222
    :cond_b
    :goto_3
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "Image3dPlayerActivity"

    const-string p2, "surfaceChanged"

    .line 228
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6

    const-string v0, "Image3dPlayerActivity"

    const-string v1, "surfaceCreated"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$900(Lcn/nubia/image3d/Image3dPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$900(Lcn/nubia/image3d/Image3dPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/image3d/Image3DFileReader;->create(Ljava/lang/String;)I

    move-result v1

    .line 237
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcn/nubia/image3d/Image3DFileReader;->setSurface(Landroid/view/Surface;)V

    const/4 p1, 0x0

    if-gez v1, :cond_0

    .line 239
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mContext:Landroid/content/Context;

    const v1, 0x7f1000bb

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1000(Lcn/nubia/image3d/Image3dPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 241
    iput p1, v0, Landroid/os/Message;->what:I

    .line 242
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1000(Lcn/nubia/image3d/Image3dPlayerActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/image3d/Image3DFileReader;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1102(Lcn/nubia/image3d/Image3dPlayerActivity;I)I

    .line 246
    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/image3d/Image3DFileReader;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1202(Lcn/nubia/image3d/Image3dPlayerActivity;I)I

    .line 247
    iget-object v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v1, p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$402(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    .line 248
    invoke-virtual {p0}, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->requestLayout()V

    .line 249
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/image3d/Image3DFileReader;->start()V

    .line 250
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/image3d/Image3DFileReader;->getFrameNum()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/image3d/Image3DFileReader;->getMaxOffsetOnDiretion()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 251
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/image3d/Image3DFileReader;->getDirection()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$202(Lcn/nubia/image3d/Image3dPlayerActivity;I)I

    .line 252
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/image3d/Image3DFileReader;->getRotaion()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$302(Lcn/nubia/image3d/Image3dPlayerActivity;I)I

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    new-instance v2, Lcn/nubia/image3d/Image3dPlayController;

    iget-object v3, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v4}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/image3d/Image3DFileReader;->getFrameNum()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v5}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/image3d/Image3DFileReader;->getDirection()I

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {v2, v3, v4, v5, p1}, Lcn/nubia/image3d/Image3dPlayController;-><init>(Landroid/content/Context;IIF)V

    invoke-static {v0, v2}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$602(Lcn/nubia/image3d/Image3dPlayerActivity;Lcn/nubia/image3d/Image3dPlayController;)Lcn/nubia/image3d/Image3dPlayController;

    .line 255
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$600(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3dPlayController;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$300(Lcn/nubia/image3d/Image3dPlayerActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/image3d/Image3dPlayController;->setRotation(I)V

    .line 257
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$500(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/GyroscopeSensor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/image3d/GyroscopeSensor;->setSensorEventOmegaMagnitude(F)V

    .line 258
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$500(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/GyroscopeSensor;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/image3d/GyroscopeSensor;->openSensor()V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "Image3dPlayerActivity"

    const-string v0, "surfaceDestroyed"

    .line 265
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$500(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/GyroscopeSensor;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/image3d/GyroscopeSensor;->closeSensor()V

    .line 267
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/image3d/Image3DFileReader;->release()V

    .line 268
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$702(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    .line 269
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1, v0}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$102(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z

    return-void
.end method
