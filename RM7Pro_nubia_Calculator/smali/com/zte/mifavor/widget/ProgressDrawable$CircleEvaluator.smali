.class Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;
.super Ljava/lang/Object;
.source "ProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleEvaluator"
.end annotation


# instance fields
.field private mIndex:I

.field private mPointInterpolator:Landroid/view/animation/Interpolator;

.field mRunning:F

.field mStarting:F

.field final synthetic this$0:Lcom/zte/mifavor/widget/ProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/ProgressDrawable;I)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p2, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mIndex:I

    .line 284
    iget p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mIndex:I

    int-to-float p1, p1

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    const p2, 0x450fc000    # 2300.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mStarting:F

    const p1, 0x3f26f4df

    .line 285
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mRunning:F

    .line 286
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mPointInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getAlpha(F)F
    .locals 0

    .line 300
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mIndex:I

    int-to-float p0, p0

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr p1, p0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    return p1
.end method

.method public getPoint(F)F
    .locals 3

    .line 290
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mStarting:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 292
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mRunning:F

    iget v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mStarting:F

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-ltz v0, :cond_1

    return v1

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mPointInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mStarting:F

    sub-float/2addr p1, v2

    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->mRunning:F

    div-float/2addr p1, p0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v1

    return p0
.end method

.method public getPreEndAlpah(F)F
    .locals 3

    .line 317
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getPoint(F)F

    move-result p1

    const/high16 v0, 0x438c0000    # 280.0f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    .line 320
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getAlpha(F)F

    move-result p0

    return p0

    :cond_0
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    const/high16 v1, 0x43a00000    # 320.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 322
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sub-float/2addr p1, v0

    const/high16 v0, 0x42200000    # 40.0f

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    .line 323
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getStartEndAlpha(F)F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getAlpha(F)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getAlpha(F)F

    move-result p0

    add-float/2addr p1, p0

    return p1

    .line 325
    :cond_1
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getStartEndAlpha(F)F

    move-result p0

    return p0
.end method

.method public getStartEndAlpha(F)F
    .locals 3

    const p0, 0x3eef4dea

    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    .line 306
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    div-float/2addr p1, p0

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v2

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    return p0

    :cond_0
    const p0, 0x3f08590b

    cmpl-float p0, p1, p0

    const/high16 p1, 0x42ff0000    # 127.5f

    if-ltz p0, :cond_1

    return p1

    :cond_1
    return p1
.end method

.method public getStartEndRadius(F)F
    .locals 3

    const v0, 0x3ed5b450

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$500(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$1100(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v2

    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$500(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    sub-float p1, v0, p1

    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1

    :cond_0
    const v1, 0x3f1525d8

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$500(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$1100(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v2

    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$500(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p1, v2, p1

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    return v1

    .line 337
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$500(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
