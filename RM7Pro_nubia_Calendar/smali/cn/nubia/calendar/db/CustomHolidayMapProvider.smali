.class public Lcn/nubia/calendar/db/CustomHolidayMapProvider;
.super Landroid/content/ContentProvider;
.source "CustomHolidayMapProvider.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private holidayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

.field private matrixCursor:Landroid/database/MatrixCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "is_holiday"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 41
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    array-length v4, p4

    if-lez v4, :cond_0

    .line 53
    aget-object v4, p4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, "year":I
    aget-object v4, p4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "month":I
    const/4 v4, 0x2

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "day":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/nubia/calendar/model/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

    .line 59
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

    if-eqz v4, :cond_0

    .line 60
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v5, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->matrixCursor:Landroid/database/MatrixCursor;

    .line 61
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->holidayList:Ljava/util/ArrayList;

    .line 62
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->holidayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->matrixCursor:Landroid/database/MatrixCursor;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 69
    .end local v0    # "day":I
    .end local v1    # "month":I
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "year":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->matrixCursor:Landroid/database/MatrixCursor;

    return-object v4

    .line 65
    .restart local v0    # "day":I
    .restart local v1    # "month":I
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "year":I
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomHolidayMapProvider;->matrixCursor:Landroid/database/MatrixCursor;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
