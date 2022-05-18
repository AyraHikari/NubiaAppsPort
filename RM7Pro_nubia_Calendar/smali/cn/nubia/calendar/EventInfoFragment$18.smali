.class Lcn/nubia/calendar/EventInfoFragment$18;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
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
    .line 2512
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$18;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2515
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$18;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$4500(Lcn/nubia/calendar/EventInfoFragment;)V

    .line 2519
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$18;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$3000(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2521
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$18;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v1}, Lcn/nubia/calendar/EventInfoFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2529
    :cond_0
    :goto_0
    return-void

    .line 2522
    :catch_0
    move-exception v0

    .line 2524
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2526
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$18;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$3100(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2527
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$18;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v1}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
