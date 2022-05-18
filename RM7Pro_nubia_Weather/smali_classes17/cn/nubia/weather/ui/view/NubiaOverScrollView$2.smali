.class Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaOverScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/NubiaOverScrollView;->firstBackRefreshAnimation()V
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
    .line 473
    iput-object p1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 476
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->access$000(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;->this$0:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->access$000(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onWillRefresh()V

    .line 479
    :cond_0
    return-void
.end method
