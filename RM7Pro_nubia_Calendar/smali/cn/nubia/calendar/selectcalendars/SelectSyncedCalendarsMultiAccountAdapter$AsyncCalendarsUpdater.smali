.class Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;
.super Landroid/content/AsyncQueryHandler;
.source "SelectSyncedCalendarsMultiAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCalendarsUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 127
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .line 128
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 133
    if-nez p3, :cond_1

    .line 166
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 139
    .local v0, "currentCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 140
    invoke-static {v0, p3}, Lcn/nubia/calendar/util/Utils;->compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {p3}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 147
    .local v2, "newCursor":Landroid/database/MatrixCursor;
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 149
    invoke-static {}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v2, v4}, Lcn/nubia/calendar/util/Utils;->checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V

    .line 152
    invoke-static {}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$100()Ljava/util/Map;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v3, p1, v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 155
    iget-object v3, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$300(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->startManagingCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    if-eqz v0, :cond_0

    .line 163
    iget-object v3, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$300(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "Calendar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adapter expired, try again on the next query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
