.class Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0

    .prologue
    .line 6187
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/submodule_day/view/DayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p2, "x1"    # Lcn/nubia/calendar/submodule_day/view/DayView$1;

    .prologue
    .line 6187
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6189
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$800(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$802(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 6190
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$800(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaused:Z

    if-eqz v0, :cond_2

    .line 6191
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$900(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 6192
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 6222
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 6189
    goto :goto_0

    .line 6196
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3902(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 6198
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4000(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6199
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3900(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v0

    if-gez v0, :cond_7

    .line 6200
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4100(Lcn/nubia/calendar/submodule_day/view/DayView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 6201
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4002(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 6206
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4102(Lcn/nubia/calendar/submodule_day/view/DayView;F)F

    .line 6209
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4500(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4500(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4300(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 6212
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3900(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v0

    if-gez v0, :cond_8

    .line 6213
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3902(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 6219
    :cond_6
    :goto_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4600(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 6220
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4700(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6221
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    goto :goto_1

    .line 6202
    :cond_7
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3900(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4300(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 6203
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4400(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4100(Lcn/nubia/calendar/submodule_day/view/DayView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 6204
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4002(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    goto :goto_2

    .line 6214
    :cond_8
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3900(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4300(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 6215
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContinueScroll;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4300(Lcn/nubia/calendar/submodule_day/view/DayView;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3902(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    goto :goto_3
.end method
