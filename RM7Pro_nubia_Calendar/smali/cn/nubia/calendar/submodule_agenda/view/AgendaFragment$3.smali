.class Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "AgendaFragment.java"


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
    .line 144
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;"
    const-string v0, "cn.nubia.calendar.delete.events"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V

    .line 149
    :cond_0
    return-void
.end method
