.class Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->access$002(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->access$202(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 87
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
