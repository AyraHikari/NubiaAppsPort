.class public final synthetic Lcom/android/calculator2/-$$Lambda$CalculatorResult$6Vn8AEyRC0kXfgwsC5zkp4OI2nQ;
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

    iput-object p1, p0, Lcom/android/calculator2/-$$Lambda$CalculatorResult$6Vn8AEyRC0kXfgwsC5zkp4OI2nQ;->f$0:Lcom/android/calculator2/CalculatorResult;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/calculator2/-$$Lambda$CalculatorResult$6Vn8AEyRC0kXfgwsC5zkp4OI2nQ;->f$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorResult;->lambda$setupActionMode$0(Lcom/android/calculator2/CalculatorResult;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
