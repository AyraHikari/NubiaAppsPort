.class Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$1;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 218
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$002(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 223
    return-void
.end method
