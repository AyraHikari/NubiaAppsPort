.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$4;
.super Ljava/lang/Object;
.source "AgendaListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;
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
    .line 444
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$4;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "pos"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$4;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$600(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    .line 448
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$4;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$700(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 449
    return-void
.end method
