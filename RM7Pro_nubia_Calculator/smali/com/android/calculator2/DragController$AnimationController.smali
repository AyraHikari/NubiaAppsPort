.class public Lcom/android/calculator2/DragController$AnimationController;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Lcom/android/calculator2/DragController$AnimateTextInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/DragController;


# direct methods
.method public constructor <init>(Lcom/android/calculator2/DragController;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTranslationY(F)F
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$1600(Lcom/android/calculator2/DragController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/calculator2/DragController$AnimationController;->getFormulaTranslationY(F)F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 351
    invoke-static {v2}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Lcom/android/calculator2/DragController$AnimationController;->getFormulaScale(F)F

    move-result p0

    div-float/2addr v2, p0

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    return v0
.end method

.method public getFirstTranslatedViewHolderIndex()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFormulaScale(F)F
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$600(Lcom/android/calculator2/DragController;)F

    move-result v0

    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$600(Lcom/android/calculator2/DragController;)F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getFormulaTranslationX(F)F
    .locals 1

    .line 337
    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1200(Lcom/android/calculator2/DragController;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public getFormulaTranslationY(F)F
    .locals 1

    .line 342
    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$800(Lcom/android/calculator2/DragController;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public getHistoryElementTranslationY(F)F
    .locals 0

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/calculator2/DragController$AnimationController;->getDateTranslationY(F)F

    move-result p0

    return p0
.end method

.method public getResultScale(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getResultTranslationX(F)F
    .locals 1

    .line 321
    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1500(Lcom/android/calculator2/DragController;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public getResultTranslationY(F)F
    .locals 1

    .line 325
    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1300(Lcom/android/calculator2/DragController;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public initializeColorAnimators(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object v1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getCurrentTextColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calculator2/DragController;->access$002(Lcom/android/calculator2/DragController;I)I

    .line 276
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-virtual {p1}, Lcom/android/calculator2/AlignedTextView;->getCurrentTextColor()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/calculator2/DragController;->access$202(Lcom/android/calculator2/DragController;I)I

    .line 278
    iget-object p1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getCurrentTextColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/calculator2/DragController;->access$302(Lcom/android/calculator2/DragController;I)I

    .line 279
    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorResult;->getCurrentTextColor()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/calculator2/DragController;->access$502(Lcom/android/calculator2/DragController;I)I

    return-void
.end method

.method public initializeDisplayHeight()V
    .locals 0

    return-void
.end method

.method public initializeFormulaTranslationX(Lcom/android/calculator2/AlignedTextView;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

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

    .line 289
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$700(Lcom/android/calculator2/DragController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object p2, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 292
    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/calculator2/AlignedTextView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 293
    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$900(Lcom/android/calculator2/DragController;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 291
    invoke-static {p2, p0}, Lcom/android/calculator2/DragController;->access$802(Lcom/android/calculator2/DragController;F)F

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object v1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 298
    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/calculator2/AlignedTextView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 299
    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 300
    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$900(Lcom/android/calculator2/DragController;)I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 301
    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$1000(Lcom/android/calculator2/DragController;)I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1100(Lcom/android/calculator2/DragController;)F

    move-result p0

    sub-float/2addr p1, p0

    .line 297
    invoke-static {v0, p1}, Lcom/android/calculator2/DragController;->access$802(Lcom/android/calculator2/DragController;F)F

    :goto_0
    return-void
.end method

.method public initializeResultTranslationX(Lcom/android/calculator2/CalculatorResult;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

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

    .line 312
    iget-object v0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object v1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v1}, Lcom/android/calculator2/DragController;->access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    .line 313
    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$900(Lcom/android/calculator2/DragController;)I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p1}, Lcom/android/calculator2/DragController;->access$1000(Lcom/android/calculator2/DragController;)I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1400(Lcom/android/calculator2/DragController;)F

    move-result p0

    add-float/2addr p1, p0

    .line 312
    invoke-static {v0, p1}, Lcom/android/calculator2/DragController;->access$1302(Lcom/android/calculator2/DragController;F)F

    return-void
.end method

.method public initializeScales(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    .line 284
    iget-object p2, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object p0, p0, Lcom/android/calculator2/DragController$AnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getTextSize()F

    move-result p0

    invoke-virtual {p1}, Lcom/android/calculator2/AlignedTextView;->getTextSize()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p2, p0}, Lcom/android/calculator2/DragController;->access$602(Lcom/android/calculator2/DragController;F)F

    return-void
.end method
