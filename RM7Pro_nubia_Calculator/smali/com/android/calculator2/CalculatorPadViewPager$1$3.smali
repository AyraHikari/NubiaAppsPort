.class Lcom/android/calculator2/CalculatorPadViewPager$1$3;
.super Ljava/lang/Object;
.source "CalculatorPadViewPager.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorPadViewPager$1;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/calculator2/CalculatorPadViewPager$1$3;->this$1:Lcom/android/calculator2/CalculatorPadViewPager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method
