.class Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->d:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iput-object p3, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 168
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 169
    const-string v0, "LelinkCodeParser"

    const-string v1, "requestLelinkTxtInfo cancel"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v5, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 174
    const-string v0, "LelinkCodeParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLelinkTxtInfo response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hpplay/sdk/source/browse/b/b;

    .line 176
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->c:Ljava/lang/String;

    .line 176
    invoke-static/range {v0 .. v5}, Lcom/hpplay/sdk/source/browse/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    .line 179
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->d:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->d:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-static {v1, v6, v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 183
    :cond_2
    const-string v0, "LelinkCodeParser"

    const-string v1, " server error "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->d:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 187
    :cond_3
    const-string v0, "LelinkCodeParser"

    const-string v1, "requestLelinkTxtInfo failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 190
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->d:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "LelinkCodeParser"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
