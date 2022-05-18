.class Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;
.super Ljava/lang/Object;
.source "AgendaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 153
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;"
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$202(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$200(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 158
    return-void
.end method
