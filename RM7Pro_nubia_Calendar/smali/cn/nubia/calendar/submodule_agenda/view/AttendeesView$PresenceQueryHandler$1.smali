.class Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler$1;
.super Ljava/lang/Object;
.source "AttendeesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

.field final synthetic val$item:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

    .prologue
    .line 476
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler$1;->val$item:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler$1;->val$item:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;

    .line 480
    return-void
.end method
