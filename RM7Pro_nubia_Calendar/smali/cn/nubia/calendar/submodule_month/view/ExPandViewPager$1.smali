.class Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExPandViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->bounceTranslationTo(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

.field final synthetic val$translationY:F


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;F)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    .prologue
    .line 397
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;->this$0:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iput p2, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;->val$translationY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 400
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;->this$0:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->access$000(Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;->val$translationY:F

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 401
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$1;->this$0:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setBottomTranslationY()V

    .line 402
    return-void
.end method
