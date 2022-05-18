.class public final synthetic Lcom/android/calculator2/-$$Lambda$CalculatorResult$4i-OC1GIUG-PCmw0Psoet69Y898;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/calculator2/CalculatorResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/-$$Lambda$CalculatorResult$4i-OC1GIUG-PCmw0Psoet69Y898;->f$0:Lcom/android/calculator2/CalculatorResult;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/calculator2/-$$Lambda$CalculatorResult$4i-OC1GIUG-PCmw0Psoet69Y898;->f$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorResult;->lambda$setupContextMenu$1(Lcom/android/calculator2/CalculatorResult;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
