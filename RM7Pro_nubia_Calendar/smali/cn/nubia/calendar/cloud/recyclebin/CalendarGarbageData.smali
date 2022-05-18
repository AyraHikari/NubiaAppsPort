.class public Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;
.super Lcn/nubia/cloud/sync/common/recyclebin/GarbageData;
.source "CalendarGarbageData.java"


# static fields
.field public static final CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ATTACHMENT:Ljava/lang/String; = "attachment"

.field private static final KEY_CLOUD_PATH:Ljava/lang/String; = "cloud_path"


# instance fields
.field private mCloudPath:Ljava/lang/String;

.field private mHasAttach:Z

.field private mSyncItem:Lcn/nubia/calendar/cloud/CalendarSyncItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData$1;

    invoke-direct {v0}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData$1;-><init>()V

    sput-object v0, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/cloud/sync/common/recyclebin/GarbageData;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    .line 24
    new-instance v0, Lcn/nubia/calendar/cloud/CalendarSyncItem;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/cloud/CalendarSyncItem;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->mSyncItem:Lcn/nubia/calendar/cloud/CalendarSyncItem;

    .line 26
    return-void
.end method


# virtual methods
.method public getItemJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->mSyncItem:Lcn/nubia/calendar/cloud/CalendarSyncItem;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->mSyncItem:Lcn/nubia/calendar/cloud/CalendarSyncItem;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->mSyncItem:Lcn/nubia/calendar/cloud/CalendarSyncItem;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/CalendarSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
