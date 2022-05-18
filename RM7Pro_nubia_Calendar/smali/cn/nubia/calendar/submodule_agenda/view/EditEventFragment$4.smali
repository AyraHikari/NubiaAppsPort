.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$4;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->saveButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 868
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 871
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/calendar/util/Utils;->setCalendarIcon(Landroid/content/Context;)V

    .line 880
    :cond_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
