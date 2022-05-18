.class public Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;
.super Lcn/nubia/cloud/sync/common/recyclebin/GarbageData;
.source "NotePadGarbageData.java"


# static fields
.field public static final CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ATTACHMENT:Ljava/lang/String; = "attachment"

.field private static final KEY_CLOUD_PATH:Ljava/lang/String; = "cloud_path"


# instance fields
.field private mCloudPath:Ljava/lang/String;

.field private mHasAttach:Z

.field private mSyncItem:Lcn/nubia/notepad/cloud/NotePadSyncItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData$1;

    invoke-direct {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData$1;-><init>()V

    sput-object v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 6
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
    new-instance v5, Lcn/nubia/notepad/cloud/NotePadSyncItem;

    invoke-direct {v5, p1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    iput-object v5, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mSyncItem:Lcn/nubia/notepad/cloud/NotePadSyncItem;

    .line 26
    :try_start_0
    const-string v5, "attachment"

    invoke-virtual {p1, v5}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "attachment":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mHasAttach:Z

    .line 40
    .end local v1    # "attachment":Ljava/lang/String;
    :goto_0
    return-void

    .line 30
    .restart local v1    # "attachment":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "arrays":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 32
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 33
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "cloud_path"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mCloudPath:Ljava/lang/String;

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mHasAttach:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v0    # "arrays":Lorg/json/JSONArray;
    .end local v1    # "attachment":Ljava/lang/String;
    .end local v3    # "index":I
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAttachMent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mSyncItem:Lcn/nubia/notepad/cloud/NotePadSyncItem;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mSyncItem:Lcn/nubia/notepad/cloud/NotePadSyncItem;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mCloudPath:Ljava/lang/String;

    return-object v0
.end method

.method public getItemJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mSyncItem:Lcn/nubia/notepad/cloud/NotePadSyncItem;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mSyncItem:Lcn/nubia/notepad/cloud/NotePadSyncItem;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mSyncItem:Lcn/nubia/notepad/cloud/NotePadSyncItem;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hasAttachMent()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->mHasAttach:Z

    return v0
.end method
