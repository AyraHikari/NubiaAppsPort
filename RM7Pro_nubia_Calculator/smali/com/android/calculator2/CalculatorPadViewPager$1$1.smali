.class Lcom/android/calculator2/CalculatorPadViewPager$1$1;
.super Ljava/lang/Object;
.source "CalculatorPadViewPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorPadViewPager$1;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calculator2/CalculatorPadViewPager$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorPadViewPager$1;I)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$1$1;->this$1:Lcom/android/calculator2/CalculatorPadViewPager$1;

    iput p2, p0, Lcom/android/calculator2/CalculatorPadViewPager$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$1$1;->this$1:Lcom/android/calculator2/CalculatorPadViewPager$1;

    iget-object p1, p1, Lcom/android/calculator2/CalculatorPadViewPager$1;->this$0:Lcom/android/calculator2/CalculatorPadViewPager;

    iget p0, p0, Lcom/android/calculator2/CalculatorPadViewPager$1$1;->val$position:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/calculator2/CalculatorPadViewPager;->setCurrentItem(IZ)V

    return-void
.end method
