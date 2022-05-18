.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->setModelIfDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

.field final synthetic val$queryType:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 479
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iput p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;->val$queryType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 483
    :try_start_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "android.permission.READ_CALENDAR"

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$900(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Z

    move-result v2

    .line 485
    .local v2, "flagIsMoreEventsAfterDel":Z
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 486
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 487
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 488
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "queryType"

    iget v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;->val$queryType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    const-string v4, "flagIsMoreEventsAfterDel"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 491
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "flagIsMoreEventsAfterDel":Z
    .end local v3    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
