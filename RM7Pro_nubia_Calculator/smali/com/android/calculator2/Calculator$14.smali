.class Lcom/android/calculator2/Calculator$14;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 2427
    iput-object p1, p0, Lcom/android/calculator2/Calculator$14;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 2436
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_0

    .line 2438
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    .line 2439
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/Calculator$14;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0, p1}, Lcom/android/calculator2/Calculator;->access$1400(Lcom/android/calculator2/Calculator;Landroid/view/View;)V

    :cond_1
    return v1

    .line 2444
    :pswitch_1
    iget-object p0, p0, Lcom/android/calculator2/Calculator$14;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0, p1}, Lcom/android/calculator2/Calculator;->access$1400(Lcom/android/calculator2/Calculator;Landroid/view/View;)V

    return v1

    .line 2432
    :pswitch_2
    iget-object p2, p0, Lcom/android/calculator2/Calculator$14;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p2}, Lcom/android/calculator2/Calculator;->access$1200(Lcom/android/calculator2/Calculator;)V

    .line 2433
    iget-object p0, p0, Lcom/android/calculator2/Calculator$14;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0, p1}, Lcom/android/calculator2/Calculator;->access$1300(Lcom/android/calculator2/Calculator;Landroid/view/View;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
