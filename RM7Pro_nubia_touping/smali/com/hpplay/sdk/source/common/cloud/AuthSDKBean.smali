.class public Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthSDKBean"


# instance fields
.field public data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

.field public status:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->decode(Lorg/json/JSONObject;)V

    .line 23
    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 162
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->status:I

    .line 163
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;-><init>()V

    iput-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    .line 166
    iget-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->decode(Lorg/json/JSONObject;)V

    .line 168
    :cond_0
    return-void
.end method
