.class Lcn/nubia/calendar/EventInfoFragment$2;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 460
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$2;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 466
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$2;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$2;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$300(Lcn/nubia/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$2;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$402(Lcn/nubia/calendar/EventInfoFragment;J)J

    .line 468
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$2;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$500(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 470
    :cond_0
    return-void
.end method
