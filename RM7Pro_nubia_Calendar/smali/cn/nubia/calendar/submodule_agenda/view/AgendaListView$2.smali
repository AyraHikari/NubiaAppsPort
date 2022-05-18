.class Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;
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
    .line 93
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->refresh(Z)V

    .line 97
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    return-void
.end method
