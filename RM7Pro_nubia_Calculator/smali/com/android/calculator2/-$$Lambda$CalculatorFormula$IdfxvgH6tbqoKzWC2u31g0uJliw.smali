.class public final synthetic Lcom/android/calculator2/-$$Lambda$CalculatorFormula$IdfxvgH6tbqoKzWC2u31g0uJliw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/calculator2/CalculatorFormula;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calculator2/CalculatorFormula;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$IdfxvgH6tbqoKzWC2u31g0uJliw;->f$0:Lcom/android/calculator2/CalculatorFormula;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$IdfxvgH6tbqoKzWC2u31g0uJliw;->f$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->lambda$setupContextMenu4RightMouseBtn$2(Lcom/android/calculator2/CalculatorFormula;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
