.class Lcn/nubia/calendar/DeleteEventHelper$1;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/DeleteEventHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/DeleteEventHelper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper$1;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 125
    if-nez p3, :cond_0

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 129
    new-instance v6, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v6}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    .line 130
    .local v6, "mModel":Lcn/nubia/calendar/model/CalendarEventModel;
    invoke-static {v6, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$1;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$000(Lcn/nubia/calendar/DeleteEventHelper;)J

    move-result-wide v0

    iget-wide v2, v6, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v6, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 134
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 135
    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper$1;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$1;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$000(Lcn/nubia/calendar/DeleteEventHelper;)J

    move-result-wide v2

    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$1;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$100(Lcn/nubia/calendar/DeleteEventHelper;)J

    move-result-wide v4

    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$1;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    .line 136
    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$200(Lcn/nubia/calendar/DeleteEventHelper;)I

    move-result v7

    .line 135
    invoke-virtual/range {v1 .. v7}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJLcn/nubia/calendar/model/CalendarEventModel;I)V

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
