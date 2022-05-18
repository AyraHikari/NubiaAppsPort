.class public Lcn/nubia/calendar/db/DefaultCalendarAccountManager;
.super Ljava/lang/Object;
.source "DefaultCalendarAccountManager.java"


# instance fields
.field mCalendarAccountName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarAccountType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarProjection:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountName:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountType:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarName:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarProjection:[Ljava/lang/String;

    return-void
.end method

.method private asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;

    .prologue
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    .line 140
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    .line 141
    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method private createCalendarByName(Ljava/lang/String;I)V
    .locals 8
    .param p1, "calendarName"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 147
    iget-object v4, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    .local v2, "size":I
    iget-object v4, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 149
    iget-object v4, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 152
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 153
    iget-object v4, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarName:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v5, "nobody@gmail.com"

    iget-object v4, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountName:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    :goto_1
    return-void

    .line 152
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v3, "vals":Landroid/content/ContentValues;
    const-string v4, "account_name"

    const-string v5, "nobody@gmail.com"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "account_type"

    const-string v5, "LOCAL"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "sync_events"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v4, "visible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v4, "canOrganizerRespond"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v4, "canModifyTimeZone"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v4, "maxReminders"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v4, "allowedReminders"

    const-string v5, "0,1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v4, "allowedAttendeeTypes"

    const-string v5, "0,1,2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "allowedAvailability"

    const-string v5, "0,1,2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v4, "calendar_displayName"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "calendar_color"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v4, "calendar_access_level"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v4, "Contact Birthday"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    const-string v4, "ownerAccount"

    const-string v5, "birthday@gmail.com"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "nobody@gmail.com"

    const-string v7, "LOCAL"

    .line 189
    invoke-direct {p0, v5, v6, v7}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 188
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "ownerAccount"

    const-string v5, "nobody@gmail.com"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private createLocalCalendar()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 64
    .local v8, "cur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 67
    .local v10, "hasLocalAccountName":Z
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "accountType":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountName:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarAccountType:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mCalendarName:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    if-nez v10, :cond_1

    .line 81
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 82
    const-string v0, "nobody@gmail.com"

    .line 83
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 v10, 0x1

    .line 88
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 91
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_4

    .line 128
    if-eqz v8, :cond_3

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_3
    :goto_0
    return-void

    .line 96
    :cond_4
    :try_start_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v11, "vals":Landroid/content/ContentValues;
    const-string v0, "account_name"

    const-string v1, "nobody@gmail.com"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "calendar_displayName"

    const-string v1, "My Calendar"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "account_type"

    const-string v1, "LOCAL"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "sync_events"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v0, "visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v0, "canOrganizerRespond"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v0, "canModifyTimeZone"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v0, "maxReminders"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v0, "allowedReminders"

    const-string v1, "0,1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "allowedAttendeeTypes"

    const-string v1, "0,1,2"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "allowedAvailability"

    const-string v1, "0,1,2"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "calendar_color"

    const v1, 0xbdff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v0, "calendar_access_level"

    const/16 v1, 0x2bc

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v0, "ownerAccount"

    const-string v1, "nobody@gmail.com"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "nobody@gmail.com"

    const-string v3, "LOCAL"

    .line 121
    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :goto_1
    if-eqz v8, :cond_3

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v9

    .line 125
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 128
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "vals":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_5
    throw v0
.end method


# virtual methods
.method public createCalendarAccount()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->createLocalCalendar()V

    .line 46
    const-string v0, "Lunar"

    const v1, 0xff874c

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->createCalendarByName(Ljava/lang/String;I)V

    .line 49
    const-string v0, "Chinese Holiday"

    const/high16 v1, 0xe00000

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->createCalendarByName(Ljava/lang/String;I)V

    .line 53
    const-string v0, "Western Holiday"

    const v1, 0x43b951

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->createCalendarByName(Ljava/lang/String;I)V

    .line 57
    const-string v0, "Contact Birthday"

    const v1, 0xfeb012

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->createCalendarByName(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method
