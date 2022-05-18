.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->fillAccountsToModel()V
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
    .line 3599
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

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
    .line 3602
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3603
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3604
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/model/CalendarEventModel;

    move-result-object v0

    const-string v1, "ownerAccount"

    .line 3605
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3604
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 3606
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/model/CalendarEventModel;

    move-result-object v0

    const-string v1, "ownerAccount"

    .line 3607
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3606
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 3608
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$17;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/model/CalendarEventModel;

    move-result-object v0

    const-string v1, "_id"

    .line 3609
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3608
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    .line 3610
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 3612
    :cond_0
    return-void
.end method
