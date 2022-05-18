.class Lcom/android/calculator2/CalculatorResult$4;
.super Ljava/lang/Object;
.source "CalculatorResult.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorResult;->setupContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorResult;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult$4;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1135
    new-instance p2, Landroid/view/MenuInflater;

    iget-object p3, p0, Lcom/android/calculator2/CalculatorResult$4;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p3}, Lcom/android/calculator2/CalculatorResult;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 1136
    iget-object p3, p0, Lcom/android/calculator2/CalculatorResult$4;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p3, p2, p1}, Lcom/android/calculator2/CalculatorResult;->access$500(Lcom/android/calculator2/CalculatorResult;Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    .line 1137
    iget-object p2, p0, Lcom/android/calculator2/CalculatorResult$4;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p2, p1}, Lcom/android/calculator2/CalculatorResult;->access$802(Lcom/android/calculator2/CalculatorResult;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    const/4 p2, 0x0

    .line 1138
    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 1139
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p3

    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult$4;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
