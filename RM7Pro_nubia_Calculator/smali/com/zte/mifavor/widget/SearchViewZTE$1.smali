.class Lcom/zte/mifavor/widget/SearchViewZTE$1;
.super Ljava/lang/Object;
.source "SearchViewZTE.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/SearchViewZTE;->performAnimate(IIIIILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/zte/mifavor/widget/SearchViewZTE;

.field final synthetic val$endSize:I

.field final synthetic val$endX:I

.field final synthetic val$startSize:I

.field final synthetic val$startX:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/SearchViewZTE;IIII)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->this$0:Lcom/zte/mifavor/widget/SearchViewZTE;

    iput p2, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$startX:I

    iput p3, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$endX:I

    iput p4, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$startSize:I

    iput p5, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$endSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 181
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 183
    iget-object v0, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v1, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$startX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$endX:I

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 183
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v2, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$startSize:I

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->val$endSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 185
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 187
    iget-object v1, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->this$0:Lcom/zte/mifavor/widget/SearchViewZTE;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/SearchViewZTE;->setLeft(I)V

    .line 188
    iget-object v1, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->this$0:Lcom/zte/mifavor/widget/SearchViewZTE;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/SearchViewZTE;->setRight(I)V

    .line 189
    iget-object v0, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->this$0:Lcom/zte/mifavor/widget/SearchViewZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    iget-object p0, p0, Lcom/zte/mifavor/widget/SearchViewZTE$1;->this$0:Lcom/zte/mifavor/widget/SearchViewZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->requestLayout()V

    return-void
.end method
