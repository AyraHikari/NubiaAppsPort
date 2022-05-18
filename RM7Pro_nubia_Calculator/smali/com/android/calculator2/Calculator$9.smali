.class Lcom/android/calculator2/Calculator$9;
.super Ljava/util/TimerTask;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->onResume()V
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

    .line 895
    iput-object p1, p0, Lcom/android/calculator2/Calculator$9;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/android/calculator2/Calculator$9;->this$0:Lcom/android/calculator2/Calculator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calculator2/Calculator;->access$702(Lcom/android/calculator2/Calculator;Z)Z

    .line 898
    iget-object p0, p0, Lcom/android/calculator2/Calculator$9;->this$0:Lcom/android/calculator2/Calculator;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setRequestedOrientation(I)V

    return-void
.end method
