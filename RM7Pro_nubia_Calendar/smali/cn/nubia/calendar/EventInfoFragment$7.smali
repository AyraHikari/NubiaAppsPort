.class Lcn/nubia/calendar/EventInfoFragment$7;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 977
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 980
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v2}, Lcn/nubia/calendar/EventInfoFragment;->saveReminders()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iget-boolean v2, v2, Lcn/nubia/calendar/EventInfoFragment;->mRecieverChanged:Z

    if-nez v2, :cond_1

    .line 981
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2, v6}, Lcn/nubia/calendar/EventInfoFragment;->access$3702(Lcn/nubia/calendar/EventInfoFragment;Z)Z

    .line 983
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 984
    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$1500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v4

    .line 983
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 985
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 986
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "beginTime"

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$3400(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 987
    const-string v2, "endTime"

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$3500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 988
    const-string v2, "allDay"

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$3800(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 989
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 990
    const-string v2, "editMode"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 991
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v2, v0}, Lcn/nubia/calendar/EventInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 992
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$7;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 994
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method
