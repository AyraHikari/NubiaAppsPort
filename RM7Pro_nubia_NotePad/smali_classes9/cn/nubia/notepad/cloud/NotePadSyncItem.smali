.class public Lcn/nubia/notepad/cloud/NotePadSyncItem;
.super Lcn/nubia/cloud/sync/common/SyncItem;
.source "NotePadSyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable;


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field private static final AUTHORITY:Ljava/lang/String; = "cn.nubia.notepad.provider.NotePad"

.field public static final CLASSIFY:Ljava/lang/String; = "classify"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CREATE_DATE:Ljava/lang/String; = "create_date"

.field public static final CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ATTACHMENT:Ljava/lang/String; = "attachments"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified_date"

.field public static final REMIND:Ljava/lang/String; = "remind"

.field public static final REMIND_TIME:Ljava/lang/String; = "remindtime"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final SECOND_TITLE:Ljava/lang/String; = "second_title"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOP:Ljava/lang/String; = "top"


# instance fields
.field private mAttachment:Ljava/lang/String;

.field private mClassify:I

.field private mContent:Ljava/lang/String;

.field private mCreatedDate:J

.field private mHasAttach:Z

.field private mLabel:Ljava/lang/String;

.field private mMode:I

.field private mModifiedDate:J

.field private mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

.field private mRemind:I

.field private mRemindTime:J

.field private mResource:Ljava/lang/String;

.field private mSecondTitle:Ljava/lang/String;

.field private mTitele:Ljava/lang/String;

.field private mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcn/nubia/notepad/cloud/NotePadSyncItem$1;

    invoke-direct {v0}, Lcn/nubia/notepad/cloud/NotePadSyncItem$1;-><init>()V

    sput-object v0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1
    .param p1, "localID"    # J
    .param p3, "serverID"    # J
    .param p5, "deleted"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcn/nubia/cloud/sync/common/SyncItem;-><init>(JJI)V

    .line 31
    new-instance v0, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 3
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/cloud/sync/common/SyncItem;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    .line 31
    new-instance v2, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v2}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    iput-object v2, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 55
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 57
    :try_start_0
    const-string v2, "attachments"

    invoke-virtual {p1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 58
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mHasAttach:Z

    .line 66
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 61
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mHasAttach:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "canVisitPath"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/sync/common/SyncItem;->addAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public addAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/cloud/sync/common/SyncItem;->addAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public getAttachment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public getClassify()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mClassify:I

    return v0
.end method

.method public getCreateData()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mCreatedDate:J

    return-wide v0
.end method

.method public getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mMode:I

    return v0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mModifiedDate:J

    return-wide v0
.end method

.method protected getModuleToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "cn.nubia.notepad.provider.NotePad"

    return-object v0
.end method

.method public getRemind()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRemind:I

    return v0
.end method

.method public getRemindTime()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRemindTime:J

    return-wide v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mResource:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mSecondTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mTitele:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mTop:I

    return v0
.end method

.method public getmContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public itemHasAttachMent()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mHasAttach:Z

    return v0
.end method

.method protected onToJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 6

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "title"

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mTitele:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "content"

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "resource"

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mResource:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "create_date"

    iget-wide v4, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mCreatedDate:J

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "modified_date"

    iget-wide v4, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mModifiedDate:J

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "remindtime"

    iget-wide v4, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRemindTime:J

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "classify"

    iget v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mClassify:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "remind"

    iget v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRemind:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "mode"

    iget v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mMode:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "top"

    iget v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mTop:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "attachment"

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mAttachment:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "label"

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "second_title"

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mSecondTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAttachment(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachment"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mAttachment:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setClassify(I)V
    .locals 0
    .param p1, "classify"    # I

    .prologue
    .line 188
    iput p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mClassify:I

    .line 189
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mContent:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setCreateDate(J)V
    .locals 1
    .param p1, "create"    # J

    .prologue
    .line 148
    iput-wide p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mCreatedDate:J

    .line 149
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mLabel:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 196
    iput p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mMode:I

    .line 197
    return-void
.end method

.method public setModifiedDate(J)V
    .locals 1
    .param p1, "modified"    # J

    .prologue
    .line 156
    iput-wide p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mModifiedDate:J

    .line 157
    return-void
.end method

.method public setRemind(I)V
    .locals 0
    .param p1, "remind"    # I

    .prologue
    .line 164
    iput p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRemind:I

    .line 165
    return-void
.end method

.method public setRemindTime(J)V
    .locals 1
    .param p1, "remindTime"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mRemindTime:J

    .line 173
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mResource:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSecondTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "secondTitle"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mSecondTitle:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mTitele:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 180
    iput p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->mTop:I

    .line 181
    return-void
.end method
