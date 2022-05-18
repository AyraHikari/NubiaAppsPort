.class public Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;
.super Lcn/nubia/deftmachanism/DeftModel;
.source "CalendarUserModel.java"


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "nobody@gmail.com"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "LOCAL"

.field private static final CONTACT_BIRTHDAY:Ljava/lang/String; = "Contact Birthday"

.field private static final TAG:Ljava/lang/String; = "CalendarUserModel"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftModel;-><init>()V

    .line 58
    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    return-void
.end method


# virtual methods
.method public getBirthdayCalendarId()J
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 33
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 34
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "account_name=? AND account_type=? AND name=?"

    .line 36
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "nobody@gmail.com"

    aput-object v0, v4, v1

    const-string v0, "LOCAL"

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v1, "Contact Birthday"

    aput-object v1, v4, v0

    .line 38
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 39
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 41
    .local v8, "ret":J
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 43
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 49
    :cond_0
    if-eqz v6, :cond_1

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    const/4 v6, 0x0

    .line 54
    :cond_1
    :goto_0
    return-wide v8

    .line 46
    :catch_0
    move-exception v7

    .line 47
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-eqz v6, :cond_1

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    const/4 v6, 0x0

    goto :goto_0

    .line 49
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    const/4 v6, 0x0

    .line 53
    :cond_2
    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 26
    return-void
.end method

.method public loadUserInfo()V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->getBirthdayCalendarId()J

    move-result-wide v0

    .line 30
    .local v0, "id":J
    return-void
.end method
