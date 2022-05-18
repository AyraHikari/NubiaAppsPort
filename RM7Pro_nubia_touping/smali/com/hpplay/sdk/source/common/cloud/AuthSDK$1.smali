.class Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->startAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

.field final synthetic val$appVersionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    iput-object p2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->val$appVersionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/16 v8, 0x192

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$002(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Z)Z

    .line 175
    const-string v0, "AuthSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authSDK onRequestResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_0
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_8

    .line 178
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v3, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    const/4 v2, 0x0

    .line 181
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;

    invoke-direct {v0, v4}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :goto_0
    if-eqz v0, :cond_6

    :try_start_2
    iget-object v2, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    iget v4, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->status:I

    iput v4, v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthStatusCode:I

    const/16 v2, 0xc8

    if-ne v4, v2, :cond_6

    .line 187
    new-instance v2, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;-><init>()V

    .line 188
    iget-object v4, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v4, v4, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->uid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    const-string v4, "AuthSDK"

    const-string v5, "uid reduplicate with other device, use server uid instead"

    invoke-static {v4, v5}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v4, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v4, v4, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->setUid(Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v4, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v4, v4, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->hid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    const-string v4, "AuthSDK"

    const-string v5, "hid reduplicate with other device, use server hid instead"

    invoke-static {v4, v5}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v4, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-object v4, v4, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->hid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->setHid(Ljava/lang/String;)V

    .line 200
    :cond_1
    iget-object v4, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-wide v4, v4, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->reg_time:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 201
    iget-object v4, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;->data:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;

    iget-wide v4, v4, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->reg_time:J

    invoke-virtual {v2, v4, v5}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->setReg_time(J)V

    .line 203
    :cond_2
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->hasRepeatInfo()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 205
    iget-object v4, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v4, v2}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$100(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;)V

    .line 206
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->updateRepeatInfo()V

    .line 207
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 208
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->updateUID()V

    .line 210
    :cond_3
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getHid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 211
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->updateHID()V

    .line 213
    :cond_4
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getRegTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 214
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getRegTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/hpplay/sdk/source/common/store/Session;->setmRegTime(J)V

    .line 217
    :cond_5
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v2

    const-string v4, "sdk_verify"

    invoke-virtual {v2, v4, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$200(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;)V

    .line 219
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/hpplay/sdk/source/common/store/Session;->isAuthSuccess:Z

    .line 220
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "sdk_verify_successful"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 223
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v4, "AuthSDK"

    const-string v5, "AuthSDK parse error:"

    invoke-static {v4, v5, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 227
    :cond_6
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "sdk_verify_successful"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 228
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/hpplay/sdk/source/common/store/Session;->isAuthSuccess:Z

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    iget v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthStatusCode:I

    if-ne v8, v0, :cond_7

    .line 230
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "sdk_verify_successful"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 233
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 234
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    iget v2, v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthStatusCode:I

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthFailed(I)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    :cond_8
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/hpplay/sdk/source/common/store/Session;->isAuthSuccess:Z

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 241
    :goto_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$300(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    iget v2, v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthStatusCode:I

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthFailed(I)V

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 245
    :cond_9
    const-string v0, "AuthSDK"

    const-string v1, "authSDK auth failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    iget v0, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthStatusCode:I

    if-eq v0, v8, :cond_b

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->this$0:Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    iget-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK$1;->val$appVersionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->access$400(Lcom/hpplay/sdk/source/common/cloud/AuthSDK;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 255
    :cond_b
    :goto_4
    return-void

    .line 251
    :catch_1
    move-exception v0

    .line 252
    const-string v1, "AuthSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
