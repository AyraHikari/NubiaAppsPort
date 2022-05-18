.class Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;
.super Ljava/lang/Object;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountDownControlHandle"
.end annotation


# instance fields
.field private mDistance:F

.field private mDstRectF:Landroid/graphics/RectF;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mScale:F

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSrcRectF:Landroid/graphics/Rect;

.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownView;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/CountDownView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 941
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mDistance:F

    .line 937
    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mScale:F

    .line 938
    iput-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 939
    iput-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 942
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mPath:Landroid/graphics/Path;

    .line 943
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mRectF:Landroid/graphics/RectF;

    .line 944
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mSrcRectF:Landroid/graphics/Rect;

    .line 945
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mDstRectF:Landroid/graphics/RectF;

    .line 946
    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 957
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$2700(Lcn/nubia/deskclock/ui/CountDownView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$3000(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2800(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$2900(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 959
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$3000(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandleOriginX()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandleOriginY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 961
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$3100(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 962
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$3200(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$3000(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 963
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 980
    :goto_0
    return-void

    .line 966
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 967
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mSrcRectF:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$3300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 968
    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$3300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 967
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 969
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mDstRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandlePointOriginX()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 970
    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandlePointOriginY()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 971
    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandlePointOriginX()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/CountDownView;->access$3300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 972
    invoke-static {v5}, Lcn/nubia/deskclock/ui/CountDownView;->access$2800(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandlePointOriginY()F

    move-result v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 973
    invoke-static {v5}, Lcn/nubia/deskclock/ui/CountDownView;->access$3300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v6}, Lcn/nubia/deskclock/ui/CountDownView;->access$2900(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 969
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 975
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$3100(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 976
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$3300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mSrcRectF:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 977
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto/16 :goto_0
.end method

.method public setHanleDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 949
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mDistance:F

    .line 950
    return-void
.end method

.method public setHanleScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 953
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mScale:F

    .line 954
    return-void
.end method

.method public startHandleHideAnimator()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1033
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 1034
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1037
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1040
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 1041
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1042
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1044
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1046
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1047
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$3400(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->setHanleScale(F)V

    .line 1048
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$3400(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getMaxCutHandleDistance()F

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->setHanleDistance(F)V

    .line 1049
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v2, v6}, Lcn/nubia/deskclock/ui/CountDownView;->access$2702(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 1050
    new-array v2, v8, [F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getMaxCutHandleDistance()F

    move-result v3

    aput v3, v2, v7

    aput v5, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1051
    .local v1, "animatorUP":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1052
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v2, v5, v3, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1053
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$4;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$4;-><init>(Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1062
    new-array v2, v8, [F

    aput v5, v2, v7

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 1063
    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandlePointChangedScale()F

    move-result v3

    aput v3, v2, v6

    .line 1062
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1064
    .local v0, "animatorScale":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1065
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v5, v3, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1066
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$5;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$5;-><init>(Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1075
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1076
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1077
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1078
    return-void
.end method

.method public startHandleShowAnimator()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 983
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 984
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 985
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 987
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 989
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 990
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 991
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 993
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 995
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 996
    new-array v2, v8, [F

    aput v5, v2, v6

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getMaxCutHandleDistance()F

    move-result v3

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 997
    .local v1, "animatorUP":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 998
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v2, v5, v3, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 999
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$1;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$1;-><init>(Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1007
    new-array v2, v8, [F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 1008
    invoke-static {v3}, Lcn/nubia/deskclock/ui/CountDownView;->access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getHandlePointChangedScale()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    .line 1007
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1009
    .local v0, "animatorScale":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1010
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v5, v3, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1011
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$2;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$2;-><init>(Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1020
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1021
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$3;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$3;-><init>(Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1029
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1030
    return-void
.end method
