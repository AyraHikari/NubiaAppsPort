.class Lcom/android/calculator2/Calculator$8;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->onStart()V
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

    .line 857
    iput-object p1, p0, Lcom/android/calculator2/Calculator$8;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 860
    iget-object p0, p0, Lcom/android/calculator2/Calculator$8;->this$0:Lcom/android/calculator2/Calculator;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calculator2/Calculator;->access$402(Lcom/android/calculator2/Calculator;Z)Z

    return-void
.end method
