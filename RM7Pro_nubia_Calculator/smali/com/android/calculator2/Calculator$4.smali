.class Lcom/android/calculator2/Calculator$4;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/calculator2/Calculator$4;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDisplayMemory()Z
    .locals 4

    .line 287
    iget-object p0, p0, Lcom/android/calculator2/Calculator$4;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0}, Lcom/android/calculator2/Calculator;->access$200(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Evaluator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getMemoryIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
