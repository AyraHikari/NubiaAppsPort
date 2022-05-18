.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$7;
.super Ljava/lang/Object;
.source "AgendaListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 793
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$7;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 796
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$7;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->cancelSearch()V

    .line 797
    return-void
.end method
