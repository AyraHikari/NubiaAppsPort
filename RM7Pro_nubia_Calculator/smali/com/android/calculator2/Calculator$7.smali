.class Lcom/android/calculator2/Calculator$7;
.super Landroid/content/BroadcastReceiver;
.source "Calculator.java"


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

    .line 806
    iput-object p1, p0, Lcom/android/calculator2/Calculator$7;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 809
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 810
    iget-object p1, p0, Lcom/android/calculator2/Calculator$7;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p1}, Lcom/android/calculator2/Calculator;->access$500(Lcom/android/calculator2/Calculator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 811
    iget-object p1, p0, Lcom/android/calculator2/Calculator$7;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p1}, Lcom/android/calculator2/Calculator;->access$600(Lcom/android/calculator2/Calculator;)V

    .line 812
    iget-object p0, p0, Lcom/android/calculator2/Calculator$7;->this$0:Lcom/android/calculator2/Calculator;

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method
