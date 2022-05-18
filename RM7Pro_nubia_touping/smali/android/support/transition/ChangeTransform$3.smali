.class Landroid/support/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeTransform;->createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/support/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$Transforms;Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/transition/ChangeTransform;

    .prologue
    .line 322
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$3;->this$0:Landroid/support/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/support/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/support/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroid/support/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 324
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "currentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 358
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_transform:I

    iget-object v2, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 359
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 360
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 329
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform$3;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 334
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->this$0:Landroid/support/transition/ChangeTransform;

    invoke-static {v0}, Landroid/support/transition/ChangeTransform;->access$000(Landroid/support/transition/ChangeTransform;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Landroid/support/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 341
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 342
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 343
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_transform:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 347
    iget-object v1, p0, Landroid/support/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {v1}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 348
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, v0}, Landroid/support/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 349
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/transition/ChangeTransform;->access$100(Landroid/view/View;)V

    .line 354
    return-void
.end method
