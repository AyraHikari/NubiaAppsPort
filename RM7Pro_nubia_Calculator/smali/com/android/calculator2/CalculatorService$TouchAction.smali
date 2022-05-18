.class Lcom/android/calculator2/CalculatorService$TouchAction;
.super Ljava/lang/Object;
.source "CalculatorService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService$TouchAction;-><init>(Lcom/android/calculator2/CalculatorService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$700(Lcom/android/calculator2/CalculatorService;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$1208()I

    .line 412
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 414
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v4}, Lcom/android/calculator2/CalculatorService;->access$800(Lcom/android/calculator2/CalculatorService;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v3, v4}, Lcom/android/calculator2/CalculatorService;->access$1402(Lcom/android/calculator2/CalculatorService;I)I

    .line 415
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v4}, Lcom/android/calculator2/CalculatorService;->access$1000(Lcom/android/calculator2/CalculatorService;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v3, v4}, Lcom/android/calculator2/CalculatorService;->access$1502(Lcom/android/calculator2/CalculatorService;I)I

    .line 416
    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v3, v0}, Lcom/android/calculator2/CalculatorService;->access$802(Lcom/android/calculator2/CalculatorService;I)I

    .line 417
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0, p2}, Lcom/android/calculator2/CalculatorService;->access$1002(Lcom/android/calculator2/CalculatorService;I)I

    const-string p2, "CalculatorService"

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aaron onTouch: movedx="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorService;->access$1400(Lcom/android/calculator2/CalculatorService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "CalculatorService"

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aaron onTouch: movedy="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorService;->access$1500(Lcom/android/calculator2/CalculatorService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1400(Lcom/android/calculator2/CalculatorService;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0x14

    if-ge p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1500(Lcom/android/calculator2/CalculatorService;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v0, :cond_2

    .line 421
    :cond_1
    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorService;->access$1400(Lcom/android/calculator2/CalculatorService;)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 422
    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorService;->access$1500(Lcom/android/calculator2/CalculatorService;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 430
    :cond_2
    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$1700()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 431
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0, v1}, Lcom/android/calculator2/CalculatorService;->access$1800(Lcom/android/calculator2/CalculatorService;Z)V

    return v1

    .line 433
    :cond_3
    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$1900()I

    move-result v0

    if-lt p2, v0, :cond_4

    .line 434
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0, v2}, Lcom/android/calculator2/CalculatorService;->access$1800(Lcom/android/calculator2/CalculatorService;Z)V

    return v1

    .line 436
    :cond_4
    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$2000()I

    move-result v0

    if-gt p2, v0, :cond_5

    .line 437
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0, v1}, Lcom/android/calculator2/CalculatorService;->access$2100(Lcom/android/calculator2/CalculatorService;Z)V

    return v1

    .line 439
    :cond_5
    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$2200()I

    move-result v0

    if-lt p2, v0, :cond_6

    .line 440
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0, v2}, Lcom/android/calculator2/CalculatorService;->access$2100(Lcom/android/calculator2/CalculatorService;Z)V

    return v1

    .line 443
    :cond_6
    instance-of p1, p1, Lcom/android/calculator2/CalculatorFormula;

    if-eqz p1, :cond_7

    .line 444
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorFormula;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 446
    :cond_7
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1, v1}, Lcom/android/calculator2/CalculatorService;->access$1302(Lcom/android/calculator2/CalculatorService;Z)Z

    .line 447
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$2300(Lcom/android/calculator2/CalculatorService;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$2400(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p2}, Lcom/android/calculator2/CalculatorService;->access$2300(Lcom/android/calculator2/CalculatorService;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$700(Lcom/android/calculator2/CalculatorService;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_8

    goto :goto_0

    .line 453
    :cond_8
    invoke-static {v2}, Lcom/android/calculator2/CalculatorService;->access$1202(I)I

    .line 454
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0, v2}, Lcom/android/calculator2/CalculatorService;->access$1302(Lcom/android/calculator2/CalculatorService;Z)Z

    .line 456
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorService;->access$900(Lcom/android/calculator2/CalculatorService;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$1100(Lcom/android/calculator2/CalculatorService;)I

    move-result p0

    sub-int/2addr p2, p0

    .line 458
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$2500()I

    move-result v0

    if-ge p0, v0, :cond_9

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$2500()I

    move-result p2

    if-ge p0, p2, :cond_9

    return v2

    .line 463
    :cond_9
    instance-of p0, p1, Landroid/widget/Button;

    if-nez p0, :cond_a

    instance-of p0, p1, Landroid/widget/ImageButton;

    if-eqz p0, :cond_b

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_b
    return v1

    .line 399
    :pswitch_2
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0, p1}, Lcom/android/calculator2/CalculatorService;->access$702(Lcom/android/calculator2/CalculatorService;Landroid/view/View;)Landroid/view/View;

    .line 400
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/android/calculator2/CalculatorService;->access$802(Lcom/android/calculator2/CalculatorService;I)I

    .line 401
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/android/calculator2/CalculatorService;->access$902(Lcom/android/calculator2/CalculatorService;I)I

    .line 402
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/android/calculator2/CalculatorService;->access$1002(Lcom/android/calculator2/CalculatorService;I)I

    .line 403
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/android/calculator2/CalculatorService;->access$1102(Lcom/android/calculator2/CalculatorService;I)I

    .line 404
    invoke-static {v2}, Lcom/android/calculator2/CalculatorService;->access$1202(I)I

    .line 405
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$TouchAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0, v2}, Lcom/android/calculator2/CalculatorService;->access$1302(Lcom/android/calculator2/CalculatorService;Z)Z

    :cond_c
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
