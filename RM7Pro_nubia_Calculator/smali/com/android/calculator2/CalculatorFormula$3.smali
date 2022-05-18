.class Lcom/android/calculator2/CalculatorFormula$3;
.super Ljava/lang/Object;
.source "CalculatorFormula.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorFormula;->setupContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorFormula;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorFormula;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula$3;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula$3;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->showContextMenu()Z

    move-result p0

    return p0
.end method
