.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;
.super Ljava/lang/Object;
.source "AgendaListActivity.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventLoadFinish(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$000(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$200(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-nez p1, :cond_3

    move v0, v3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$300(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-nez p1, :cond_4

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$400(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez p1, :cond_5

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 223
    return-void

    :cond_1
    move v0, v2

    .line 216
    goto :goto_0

    :cond_2
    move v2, v1

    .line 218
    goto :goto_1

    :cond_3
    move v0, v1

    .line 220
    goto :goto_2

    :cond_4
    move v0, v1

    .line 221
    goto :goto_3

    :cond_5
    move v3, v1

    .line 222
    goto :goto_4
.end method
