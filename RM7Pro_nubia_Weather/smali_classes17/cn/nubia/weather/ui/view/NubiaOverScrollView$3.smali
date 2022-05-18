.class Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;
.super Ljava/lang/Object;
.source "NubiaOverScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/NubiaOverScrollView;->secondRefreshBackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    .prologue
    .line 498
    iput-object p1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 502
    .local v0, "delay":I
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollTo(II)V

    .line 503
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->invalidate()V

    .line 504
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->access$000(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->access$000(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onDragScrolled(I)V

    .line 507
    :cond_0
    return-void
.end method
