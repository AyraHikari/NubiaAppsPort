.class Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;
.super Ljava/lang/Object;
.source "ViewPagerDragHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->bounceTo(FF)V
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
    .line 468
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 472
    .local v0, "fra":F
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$400(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$400(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .line 474
    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$500(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)F

    move-result v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$3;->this$0:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->access$600(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;)F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;->onDragHelperScrolled(F)V

    .line 476
    :cond_0
    return-void
.end method
