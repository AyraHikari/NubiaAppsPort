.class Lcom/android/calculator2/CalculatorPadViewPager$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalculatorPadViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorPadViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorPadViewPager;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorPadViewPager;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$4;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/calculator2/CalculatorPadViewPager$4;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorPadViewPager;->access$000(Lcom/android/calculator2/CalculatorPadViewPager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$4;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorPadViewPager$4;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorPadViewPager;->access$000(Lcom/android/calculator2/CalculatorPadViewPager;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 149
    iget-object p0, p0, Lcom/android/calculator2/CalculatorPadViewPager$4;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-static {p0, v1}, Lcom/android/calculator2/CalculatorPadViewPager;->access$002(Lcom/android/calculator2/CalculatorPadViewPager;I)I

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
