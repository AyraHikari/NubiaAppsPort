.class Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;
.super Ljava/lang/Object;
.source "AgendaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->onScroll(Landroid/widget/AbsListView;III)V
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
    .line 660
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;"
    const/4 v6, 0x0

    .line 663
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$200(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 664
    .local v4, "t":Landroid/text/format/Time;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mJulianDayOnTop:I

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 665
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$500(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Lcn/nubia/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 667
    return-void
.end method
