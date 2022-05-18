.class Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$1;
.super Ljava/lang/Object;
.source "AgendaAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method
