.class Lcn/nubia/calendar/EventInfoFragment$11;
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
    .line 1078
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$11;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1081
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$11;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$3900(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$11;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4002(Lcn/nubia/calendar/EventInfoFragment;Z)Z

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$11;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v1}, Lcn/nubia/calendar/EventInfoFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$11;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v1}, Lcn/nubia/calendar/EventInfoFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
