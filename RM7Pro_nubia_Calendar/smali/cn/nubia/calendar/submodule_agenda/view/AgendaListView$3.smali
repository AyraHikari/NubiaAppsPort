.class Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$3;
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
    .line 102
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$500(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->refresh(Z)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->access$600(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)V

    .line 109
    return-void
.end method
