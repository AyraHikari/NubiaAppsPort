.class public final synthetic Lcom/android/calculator2/-$$Lambda$CalculatorService$ddpACLMV2zJ29KgA_aXtMvlXXNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/-$$Lambda$CalculatorService$ddpACLMV2zJ29KgA_aXtMvlXXNQ;->f$0:Lcom/android/calculator2/CalculatorService;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/calculator2/-$$Lambda$CalculatorService$ddpACLMV2zJ29KgA_aXtMvlXXNQ;->f$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorService;->lambda$createFloatView$2(Lcom/android/calculator2/CalculatorService;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
