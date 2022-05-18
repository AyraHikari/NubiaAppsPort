.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$8;
.super Ljava/lang/Object;
.source "AgendaListActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->enterSearchMode()V
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
    .line 805
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$8;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 821
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$8;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$1000(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 808
    const/4 v0, 0x0

    return v0
.end method
