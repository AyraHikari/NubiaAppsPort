.class Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttendeesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 440
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;

    .line 441
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 442
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "queryIndex"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 447
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p2

    .line 455
    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .line 457
    .local v3, "item":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    :try_start_0
    iget v5, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    if-ge v5, p1, :cond_2

    .line 458
    iput p1, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    .line 459
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 460
    const/4 v5, 0x0

    .line 461
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 462
    .local v0, "contactId":J
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 465
    .local v2, "contactUri":Landroid/net/Uri;
    const/4 v5, 0x1

    .line 466
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    .line 470
    const/4 v5, 0x2

    .line 471
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 473
    .local v6, "photoId":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 475
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;

    .line 476
    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;)Landroid/content/Context;

    move-result-object v5

    new-instance v8, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler$1;

    invoke-direct {v8, p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)V

    .line 475
    invoke-static {v5, v3, v8, v2}, Lcn/nubia/calendar/ContactsAsyncHelper;->retrieveContactPhotoAsync(Landroid/content/Context;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;Ljava/lang/Runnable;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    .end local v0    # "contactId":J
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v6    # "photoId":J
    :cond_2
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 486
    .restart local v0    # "contactId":J
    .restart local v2    # "contactUri":Landroid/net/Uri;
    .restart local v4    # "lookupKey":Ljava/lang/String;
    .restart local v6    # "photoId":J
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;

    invoke-static {v5, v3}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 501
    .end local v0    # "contactId":J
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v6    # "photoId":J
    :catchall_0
    move-exception v5

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 502
    throw v5

    .line 493
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    .line 494
    iget-object v5, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v5}, Lcn/nubia/calendar/util/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 495
    iget-object v5, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    const/4 v8, 0x0

    iput-object v8, v5, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 496
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;

    invoke-static {v5, v3}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
