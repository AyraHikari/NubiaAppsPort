.class final Lcn/nubia/calendar/util/CalendarUtils$1;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/util/CalendarUtils;->getCalendarIdByEventId(Landroid/content/ContentResolver;J)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 58
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/CalendarUtils;->access$002(J)J

    .line 61
    :cond_0
    if-eqz p3, :cond_1

    .line 62
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 63
    const/4 p3, 0x0

    .line 65
    :cond_1
    return-void
.end method
