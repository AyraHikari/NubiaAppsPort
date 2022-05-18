.class Lcom/android/calculator2/CalculatorFormula$2;
.super Ljava/lang/Object;
.source "CalculatorFormula.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

    .line 351
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula$2;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 355
    new-instance p2, Landroid/view/MenuInflater;

    iget-object p3, p0, Lcom/android/calculator2/CalculatorFormula$2;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p3}, Lcom/android/calculator2/CalculatorFormula;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 356
    iget-object p3, p0, Lcom/android/calculator2/CalculatorFormula$2;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {p3, p2, p1}, Lcom/android/calculator2/CalculatorFormula;->access$100(Lcom/android/calculator2/CalculatorFormula;Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    .line 357
    iget-object p2, p0, Lcom/android/calculator2/CalculatorFormula$2;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {p2, p1}, Lcom/android/calculator2/CalculatorFormula;->access$302(Lcom/android/calculator2/CalculatorFormula;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    const/4 p2, 0x0

    .line 358
    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 359
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p3

    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula$2;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
