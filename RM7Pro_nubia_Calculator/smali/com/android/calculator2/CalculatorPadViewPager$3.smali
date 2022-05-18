.class Lcom/android/calculator2/CalculatorPadViewPager$3;
.super Ljava/lang/Object;
.source "CalculatorPadViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


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

    .line 122
    iput-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$3;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/android/calculator2/CalculatorPadViewPager$3;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorPadViewPager;->getWidth()I

    move-result p0

    int-to-float p0, p0

    neg-float v1, p2

    mul-float/2addr p0, v1

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    add-float/2addr p2, v2

    .line 128
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
