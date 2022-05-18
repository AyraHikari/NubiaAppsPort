.class final Lcn/nubia/calendar/cloud/CalendarSyncItem$1;
.super Ljava/lang/Object;
.source "CalendarSyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/cloud/CalendarSyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/Jsonable$Creator",
        "<",
        "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/calendar/cloud/CalendarSyncItem;
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 329
    :try_start_0
    new-instance v0, Lcn/nubia/calendar/cloud/CalendarSyncItem;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/cloud/CalendarSyncItem;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/cloud/CalendarSyncItem$1;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/calendar/cloud/CalendarSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/calendar/cloud/CalendarSyncItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 338
    new-array v0, p1, [Lcn/nubia/calendar/cloud/CalendarSyncItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/cloud/CalendarSyncItem$1;->newArray(I)[Lcn/nubia/calendar/cloud/CalendarSyncItem;

    move-result-object v0

    return-object v0
.end method
