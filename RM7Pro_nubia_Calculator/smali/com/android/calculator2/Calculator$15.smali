.class Lcom/android/calculator2/Calculator$15;
.super Landroid/os/CountDownTimer;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->initCountTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;JJ)V
    .locals 0

    .line 2454
    iput-object p1, p0, Lcom/android/calculator2/Calculator$15;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 2466
    iget-object p0, p0, Lcom/android/calculator2/Calculator$15;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0}, Lcom/android/calculator2/Calculator;->access$1500(Lcom/android/calculator2/Calculator;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 2457
    sget-wide v0, Lcom/android/calculator2/Calculator;->MAX_REPEAT_COUNT_TIME:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x190

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    return-void

    .line 2461
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/Calculator$15;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0}, Lcom/android/calculator2/Calculator;->access$1500(Lcom/android/calculator2/Calculator;)V

    return-void
.end method
