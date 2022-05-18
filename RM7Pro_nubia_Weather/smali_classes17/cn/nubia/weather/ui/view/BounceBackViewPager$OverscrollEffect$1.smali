.class Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect$1;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->onRelease()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect$1;->this$1:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 71
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect$1;->this$1:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$100(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;F)V

    .line 67
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 62
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 58
    return-void
.end method
