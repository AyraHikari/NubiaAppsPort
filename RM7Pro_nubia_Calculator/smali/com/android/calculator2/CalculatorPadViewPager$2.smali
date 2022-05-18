.class Lcom/android/calculator2/CalculatorPadViewPager$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
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

    .line 99
    iput-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$2;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/android/calculator2/CalculatorPadViewPager$2;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 103
    iget-object v2, p0, Lcom/android/calculator2/CalculatorPadViewPager$2;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-virtual {v2, v0}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v0, p1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v3

    .line 105
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 109
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 110
    check-cast v2, Landroid/view/ViewGroup;

    .line 111
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_2
    if-ltz v4, :cond_2

    .line 112
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v0, p1, :cond_1

    move v6, v3

    goto :goto_3

    :cond_1
    const/4 v6, 0x4

    .line 113
    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
