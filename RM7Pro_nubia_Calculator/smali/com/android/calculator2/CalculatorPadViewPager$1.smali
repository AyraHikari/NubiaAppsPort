.class Lcom/android/calculator2/CalculatorPadViewPager$1;
.super Landroidx/viewpager/widget/PagerAdapter;
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

    .line 32
    iput-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$1;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/calculator2/CalculatorPadViewPager$1;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorPadViewPager;->removeViewAt(I)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/calculator2/CalculatorPadViewPager$1;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/android/calculator2/CalculatorPadViewPager$1;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030006

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 95
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getPageWidth(I)F
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const p0, 0x3f471c72

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$1;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-virtual {p1, p2}, Lcom/android/calculator2/CalculatorPadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance v0, Lcom/android/calculator2/CalculatorPadViewPager$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/calculator2/CalculatorPadViewPager$1$1;-><init>(Lcom/android/calculator2/CalculatorPadViewPager$1;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Lcom/android/calculator2/CalculatorPadViewPager$1$2;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorPadViewPager$1$2;-><init>(Lcom/android/calculator2/CalculatorPadViewPager$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    new-instance v0, Lcom/android/calculator2/CalculatorPadViewPager$1$3;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorPadViewPager$1$3;-><init>(Lcom/android/calculator2/CalculatorPadViewPager$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorPadViewPager$1;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/CalculatorPadViewPager$1;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
