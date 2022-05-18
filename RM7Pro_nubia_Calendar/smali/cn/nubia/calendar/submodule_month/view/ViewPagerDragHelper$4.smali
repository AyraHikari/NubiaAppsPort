.class Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPagerDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->bounceBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .prologue
    .line 489
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 492
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$002(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;I)I

    .line 493
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$102(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;I)I

    .line 494
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$300(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$202(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;F)F

    .line 495
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$400(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$400(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onDragHelperScrolled(F)V

    .line 497
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$400(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$4;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$000(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onScrollStateChanged(I)V

    .line 499
    :cond_0
    return-void
.end method
