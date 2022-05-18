.class Lcom/hpplay/sdk/source/service/c$2;
.super Lcom/hpplay/sdk/source/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/c;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsg(JLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/a/g;->onMsg(JLjava/lang/String;)V

    .line 138
    const-string v0, "IMLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg call play state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :try_start_1
    const-string v0, "fe"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_0
    :try_start_2
    const-string v0, "st"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    const-string v2, "std"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 157
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 158
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/c$a;->removeMessages(I)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->c(Lcom/hpplay/sdk/source/service/c;)V

    .line 162
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->d(Lcom/hpplay/sdk/source/service/c;)V

    .line 193
    :cond_2
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v2

    const-string v3, "key_support_audio"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 151
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v2

    const-string v3, "key_support_pic"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 153
    const-string v2, "IMLinkService"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    const-string v1, "IMLinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    const v1, 0x33c2b

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;I)V

    goto :goto_1

    .line 163
    :cond_3
    if-ne v0, v5, :cond_5

    .line 164
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/c;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/c;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/c;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c2a

    const v3, 0x33c2c

    invoke-interface {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    const/16 v1, 0x1f5

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/service/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/c;->b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;

    move-result-object v0

    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/service/c$a;->removeMessages(I)V

    .line 176
    :cond_6
    if-ne v1, v5, :cond_7

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    const v1, 0x33c2e

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;I)V

    goto :goto_1

    .line 179
    :cond_7
    const/4 v0, 0x3

    if-ne v1, v0, :cond_8

    .line 181
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    const v1, 0x33c2f

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;I)V

    goto/16 :goto_1

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$2;->a:Lcom/hpplay/sdk/source/service/c;

    const v1, 0x33c2d

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
