.class Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "SelectSyncedCalendarsMultiAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 258
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 263
    if-eqz p3, :cond_0

    .line 264
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-static {p3}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->access$002(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;

    .line 266
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    new-instance v3, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    iget-object v4, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    const v5, 0x7f110053

    .line 267
    invoke-virtual {v4, v5}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .line 268
    invoke-static {v5}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->access$000(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Landroid/database/MatrixCursor;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-direct {v3, v4, v5, v6}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)V

    .line 266
    invoke-static {v2, v3}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->access$102(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .line 271
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-static {v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->access$200(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-static {v3}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->access$100(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 273
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-static {v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->access$200(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v0

    .line 274
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 275
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-static {v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->access$200(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
