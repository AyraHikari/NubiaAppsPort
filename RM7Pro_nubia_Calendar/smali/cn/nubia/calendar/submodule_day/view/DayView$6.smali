.class Lcn/nubia/calendar/submodule_day/view/DayView$6;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 2448
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2450
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1600(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1700(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v5

    if-eq v4, v5, :cond_1

    move v1, v2

    .line 2451
    .local v1, "fadeinEvents":Z
    :goto_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1802(Lcn/nubia/calendar/submodule_day/view/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2452
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1600(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1702(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 2453
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1900(Lcn/nubia/calendar/submodule_day/view/DayView;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2454
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1902(Lcn/nubia/calendar/submodule_day/view/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2460
    :goto_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/Event;

    .line 2461
    .local v0, "e":Lcn/nubia/calendar/model/Event;
    invoke-virtual {v0}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2462
    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1900(Lcn/nubia/calendar/submodule_day/view/DayView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "e":Lcn/nubia/calendar/model/Event;
    .end local v1    # "fadeinEvents":Z
    :cond_1
    move v1, v3

    .line 2450
    goto :goto_0

    .line 2456
    .restart local v1    # "fadeinEvents":Z
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1900(Lcn/nubia/calendar/submodule_day/view/DayView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 2467
    :cond_3
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2000(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2000(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 2468
    :cond_4
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/text/StaticLayout;

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2002(Lcn/nubia/calendar/submodule_day/view/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;

    .line 2473
    :goto_3
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2100(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 2474
    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2100(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1900(Lcn/nubia/calendar/submodule_day/view/DayView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 2475
    :cond_5
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/text/StaticLayout;

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2102(Lcn/nubia/calendar/submodule_day/view/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;

    .line 2480
    :goto_4
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2200(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 2482
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2302(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 2483
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2402(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 2484
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2500(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 2487
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2600(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2700(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2488
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2602(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 2493
    :cond_6
    if-eqz v1, :cond_a

    .line 2494
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-nez v2, :cond_7

    .line 2495
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const-string v4, "EventsAlpha"

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 2496
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2495
    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2802(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 2498
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x190

    .line 2499
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2501
    :cond_7
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 2502
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 2506
    :goto_5
    return-void

    .line 2470
    :cond_8
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2000(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2477
    :cond_9
    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2100(Lcn/nubia/calendar/submodule_day/view/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 2504
    :cond_a
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$6;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto :goto_5

    .line 2495
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
