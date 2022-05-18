.class Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 553
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 554
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 555
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 556
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 557
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 558
    return-void
.end method

.method private setAnimationMatrix()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    iget v2, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    aput v2, v0, v1

    .line 573
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    aput v2, v0, v1

    .line 574
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 575
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 576
    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method setTranslation(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "translation"    # Landroid/graphics/PointF;

    .prologue
    .line 566
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 567
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 568
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 569
    return-void
.end method

.method setValues([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 563
    return-void
.end method
