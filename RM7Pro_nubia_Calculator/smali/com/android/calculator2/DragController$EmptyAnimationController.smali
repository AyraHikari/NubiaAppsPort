.class public Lcom/android/calculator2/DragController$EmptyAnimationController;
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
    name = "EmptyAnimationController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/DragController;


# direct methods
.method public constructor <init>(Lcom/android/calculator2/DragController;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/calculator2/DragController$EmptyAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-direct {p0, p1}, Lcom/android/calculator2/DragController$AnimationController;-><init>(Lcom/android/calculator2/DragController;)V

    return-void
.end method


# virtual methods
.method public getDateTranslationY(F)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFirstTranslatedViewHolderIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFormulaScale(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getHistoryElementTranslationY(F)F
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/calculator2/DragController$EmptyAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {v0}, Lcom/android/calculator2/DragController;->access$1800(Lcom/android/calculator2/DragController;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/calculator2/DragController$EmptyAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$900(Lcom/android/calculator2/DragController;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getResultTranslationX(F)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResultTranslationY(F)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initializeDisplayHeight()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/calculator2/DragController$EmptyAnimationController;->this$0:Lcom/android/calculator2/DragController;

    iget-object p0, p0, Lcom/android/calculator2/DragController$EmptyAnimationController;->this$0:Lcom/android/calculator2/DragController;

    invoke-static {p0}, Lcom/android/calculator2/DragController;->access$1900(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/calculator2/DragController;->access$1802(Lcom/android/calculator2/DragController;I)I

    return-void
.end method

.method public initializeFormulaTranslationX(Lcom/android/calculator2/AlignedTextView;)V
    .locals 0

    return-void
.end method

.method public initializeFormulaTranslationY(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    return-void
.end method

.method public initializeResultTranslationX(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    return-void
.end method

.method public initializeResultTranslationY(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    return-void
.end method

.method public initializeScales(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    return-void
.end method
