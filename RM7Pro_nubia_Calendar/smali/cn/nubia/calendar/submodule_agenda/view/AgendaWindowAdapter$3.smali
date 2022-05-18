.class Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$3;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
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
    .line 799
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 803
    return-void
.end method
