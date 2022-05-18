.class Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$002(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$200(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 87
    return-void
.end method
