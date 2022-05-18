.class Lcn/nubia/calendar/EventInfoFragment$1$1;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/EventInfoFragment$1;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/EventInfoFragment$1;

    .prologue
    .line 433
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$1$1;->this$1:Lcn/nubia/calendar/EventInfoFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$1$1;->this$1:Lcn/nubia/calendar/EventInfoFragment$1;

    iget-object v0, v0, Lcn/nubia/calendar/EventInfoFragment$1;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$1$1;->this$1:Lcn/nubia/calendar/EventInfoFragment$1;

    iget-object v0, v0, Lcn/nubia/calendar/EventInfoFragment$1;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$1$1;->this$1:Lcn/nubia/calendar/EventInfoFragment$1;

    iget-object v0, v0, Lcn/nubia/calendar/EventInfoFragment$1;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$100(Lcn/nubia/calendar/EventInfoFragment;)V

    .line 439
    :cond_0
    return-void
.end method
