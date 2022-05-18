.class public Lcn/nubia/calendar/db/SuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.calendar.suggestionsprovider"

.field private static final DEBUG:Z = true

.field private static final EVENT_INDEX_ALL_DAY:I = 0x3

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x4

.field private static final EVENT_INDEX_COLOR:I = 0xa

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x8

.field private static final EVENT_INDEX_DURATION:I = 0xc

.field private static final EVENT_INDEX_EVENT_DTEND:I = 0x6

.field private static final EVENT_INDEX_EVENT_DTSTART:I = 0x5

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x9

.field private static final EVENT_INDEX_EVENT_TIMEZONE:I = 0x7

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_ORGANIZER:I = 0xb

.field private static final EVENT_INDEX_RRULE:I = 0x2

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SuggestionsProvider"


# instance fields
.field private final mTZUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/db/SuggestionsProvider;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 76
    new-instance v0, Lcn/nubia/calendar/db/SuggestionsProvider$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/db/SuggestionsProvider$1;-><init>(Lcn/nubia/calendar/db/SuggestionsProvider;)V

    iput-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider;->mTZUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/db/SuggestionsProvider;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/db/SuggestionsProvider;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    const-string v2, "SuggestionsProvider"

    const-string v5, "global query:"

    invoke-static {v2, v5}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v7, 0x0

    .line 120
    .local v7, "query":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {p0}, Lcn/nubia/calendar/db/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    .local v1, "currentUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title LIKE \'%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%\' OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "eventLocation"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIKE \'%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%\' OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "organizer"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIKE \'%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%\' OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "description"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIKE \'%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "currentSelection":Ljava/lang/String;
    sget-object v2, Lcn/nubia/calendar/db/SuggestionsProvider;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "dtstart"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v4, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;

    invoke-direct {v4, p0, v6, v7}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;-><init>(Lcn/nubia/calendar/db/SuggestionsProvider;Landroid/database/Cursor;Ljava/lang/String;)V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "currentUri":Landroid/net/Uri;
    .end local v3    # "currentSelection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    return-object v4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method
