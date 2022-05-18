.class public Lcom/android/calculator2/DragController$ResultAnimationController;
.super Lcom/android/calculator2/DragController$AnimationController;
.source "DragController.java"

# interfaces
.implements Lcom/android/calculator2/DragController$AnimateTextInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultAnimationController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/DragController;


# direct methods
.method public constructor <init>(Lcom/android/calculator2/DragController;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-direct {p0, p1}, Lcom/android/calculator2/DragController$AnimationController;-><init>(Lcom/android/calculator2/DragController;)V

    return-void
.end method


# virtual methods
.method public getDateTranslationY(F)F
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$1600(Lcom/android/calculator2/DragController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 441
    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$1300(Lcom/android/calculator2/DragController;)F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$1300(Lcom/android/calculator2/DragController;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 442
    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 443
    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public getFirstTranslatedViewHolderIndex()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFormulaScale(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getFormulaTranslationX(F)F
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$1200(Lcom/android/calculator2/DragController;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 417
    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1200(Lcom/android/calculator2/DragController;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getFormulaTranslationY(F)F
    .locals 1

    .line 423
    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$800(Lcom/android/calculator2/DragController;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public getResultScale(F)F
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$1700(Lcom/android/calculator2/DragController;)F

    move-result v0

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1700(Lcom/android/calculator2/DragController;)F

    move-result p0

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public getResultTranslationX(F)F
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$1500(Lcom/android/calculator2/DragController;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1500(Lcom/android/calculator2/DragController;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getResultTranslationY(F)F
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$1300(Lcom/android/calculator2/DragController;)F

    move-result v0

    mul-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1300(Lcom/android/calculator2/DragController;)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public initializeFormulaTranslationX(Lcom/android/calculator2/AlignedTextView;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getPaddingEnd()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/calculator2/AlignedTextView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/android/calculator2/DragController;->access$1202(Lcom/android/calculator2/DragController;I)I

    return-void
.end method

.method public initializeFormulaTranslationY(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/calculator2/AlignedTextView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 379
    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 380
    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$900(Lcom/android/calculator2/DragController;)I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 381
    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$1000(Lcom/android/calculator2/DragController;)I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1100(Lcom/android/calculator2/DragController;)F

    move-result p0

    add-float/2addr p1, p0

    .line 378
    invoke-static {v0, p1}, Lcom/android/calculator2/DragController;->access$802(Lcom/android/calculator2/DragController;F)F

    return-void
.end method

.method public initializeResultTranslationX(Lcom/android/calculator2/CalculatorResult;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getPaddingEnd()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/android/calculator2/DragController;->access$1502(Lcom/android/calculator2/DragController;I)I

    return-void
.end method

.method public initializeResultTranslationY(Lcom/android/calculator2/CalculatorResult;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 394
    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getTranslationY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 395
    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$900(Lcom/android/calculator2/DragController;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 396
    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$1000(Lcom/android/calculator2/DragController;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1400(Lcom/android/calculator2/DragController;)F

    move-result p0

    add-float/2addr p1, p0

    .line 393
    invoke-static {v0, p1}, Lcom/android/calculator2/DragController;->access$1302(Lcom/android/calculator2/DragController;F)F

    return-void
.end method

.method public initializeScales(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V
    .locals 1

    .line 368
    iget-object p1, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getScaleX()F

    move-result v0

    mul-float/2addr p1, v0

    .line 369
    iget-object v0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorResult;->getTextSize()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Lcom/android/calculator2/DragController;->access$1702(Lcom/android/calculator2/DragController;F)F

    .line 370
    iget-object p0, p0, Lcom/android/calculator2/DragController$ResultAnimationController;->this$0:Lcom/android/calculator2/DragController;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/android/calculator2/DragController;->access$602(Lcom/android/calculator2/DragController;F)F

    return-void
.end method
