.class Lcn/nubia/calendar/EventInfoFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field defLayerType:I

.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 893
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 909
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$300(Lcn/nubia/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/EventInfoFragment$5;->defLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 910
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 914
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$300(Lcn/nubia/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/EventInfoFragment$5;->defLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 916
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->access$2402(Lcn/nubia/calendar/EventInfoFragment;Z)Z

    .line 917
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 899
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$300(Lcn/nubia/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayerType()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->defLayerType:I

    .line 900
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$300(Lcn/nubia/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 903
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$500(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$2600(Lcn/nubia/calendar/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 904
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$5;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$500(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 905
    return-void
.end method
