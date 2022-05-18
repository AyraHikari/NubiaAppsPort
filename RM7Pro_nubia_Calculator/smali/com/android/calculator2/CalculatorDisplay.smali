.class public Lcom/android/calculator2/CalculatorDisplay;
.super Landroid/widget/LinearLayout;
.source "CalculatorDisplay.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# static fields
.field private static final FADE_DURATION:J = 0xc8L


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mHideToolbarRunnable:Ljava/lang/Runnable;

.field private final mTapDetector:Landroid/view/GestureDetector;

.field private mTransition:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/CalculatorDisplay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorDisplay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p2, Lcom/android/calculator2/CalculatorDisplay$1;

    invoke-direct {p2, p0}, Lcom/android/calculator2/CalculatorDisplay$1;-><init>(Lcom/android/calculator2/CalculatorDisplay;)V

    iput-object p2, p0, Lcom/android/calculator2/CalculatorDisplay;->mHideToolbarRunnable:Ljava/lang/Runnable;

    const-string p2, "accessibility"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/calculator2/CalculatorDisplay;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 70
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/android/calculator2/CalculatorDisplay$2;

    invoke-direct {p3, p0}, Lcom/android/calculator2/CalculatorDisplay$2;-><init>(Lcom/android/calculator2/CalculatorDisplay;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/calculator2/CalculatorDisplay;->mTapDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorDisplay;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/CalculatorDisplay;)Landroid/transition/Transition;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/calculator2/CalculatorDisplay;->mTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/calculator2/CalculatorDisplay;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/calculator2/CalculatorDisplay;->mHideToolbarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    return p1
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 108
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 114
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0203

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 94
    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1}, Landroid/transition/Fade;-><init>()V

    const-wide/16 v2, 0xc8

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mTransition:Landroid/transition/Transition;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
