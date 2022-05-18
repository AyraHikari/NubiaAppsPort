.class Lcom/android/calculator2/CalculatorResult$2;
.super Ljava/lang/Object;
.source "CalculatorResult.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorResult;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInitialDownX:F

.field private mInitialDownY:F

.field final synthetic this$0:Lcom/android/calculator2/CalculatorResult;

.field final synthetic val$slop:I


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorResult;I)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult$2;->this$0:Lcom/android/calculator2/CalculatorResult;

    iput p2, p0, Lcom/android/calculator2/CalculatorResult$2;->val$slop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget p1, p0, Lcom/android/calculator2/CalculatorResult$2;->mInitialDownX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 242
    iget v0, p0, Lcom/android/calculator2/CalculatorResult$2;->mInitialDownY:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 243
    iget v1, p0, Lcom/android/calculator2/CalculatorResult$2;->val$slop:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 245
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$2;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 237
    :cond_1
    iput v0, p0, Lcom/android/calculator2/CalculatorResult$2;->mInitialDownX:F

    .line 238
    iput v1, p0, Lcom/android/calculator2/CalculatorResult$2;->mInitialDownY:F

    .line 251
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$2;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
