.class Lcom/android/calculator2/Evaluator$AsyncEvaluator$1;
.super Ljava/lang/Object;
.source "Evaluator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Evaluator$AsyncEvaluator;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calculator2/Evaluator$AsyncEvaluator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Evaluator$AsyncEvaluator;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator$1;->this$1:Lcom/android/calculator2/Evaluator$AsyncEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator$1;->this$1:Lcom/android/calculator2/Evaluator$AsyncEvaluator;

    invoke-static {p0}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->access$500(Lcom/android/calculator2/Evaluator$AsyncEvaluator;)V

    return-void
.end method
