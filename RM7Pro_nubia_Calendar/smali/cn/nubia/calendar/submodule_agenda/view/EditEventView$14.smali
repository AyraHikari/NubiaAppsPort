.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setCalendarsCursor(Landroid/database/Cursor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 2715
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2718
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$4100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2719
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    new-instance v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$4102(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2723
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$4100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2724
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$14;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$4100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
