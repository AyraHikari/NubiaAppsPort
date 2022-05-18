.class Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/DNSSDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

.field private b:Lcom/hpplay/sdk/source/browse/c/a;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;Lcom/hpplay/sdk/source/browse/c/a;Z)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->a:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    .line 109
    iput-boolean p3, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->c:Z

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;Lcom/hpplay/sdk/source/browse/c/a;ZLcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$1;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;-><init>(Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;Lcom/hpplay/sdk/source/browse/c/a;Z)V

    return-void
.end method

.method private a(Lcom/hpplay/sdk/source/mdns/ServiceInstance;Ljava/util/Map;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/sdk/source/mdns/ServiceInstance;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hpplay/sdk/source/browse/b/b;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    const-string v0, "vv"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    const-string v2, "MDNSBrowseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveServiceInfo vv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isFilterNewLelinkV1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 184
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->c:Z

    if-eqz v1, :cond_4

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    const/4 v0, 0x0

    move v2, v0

    .line 190
    :goto_0
    new-instance v3, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 191
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/ServiceName;->getInstance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 196
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 198
    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 202
    :cond_1
    const-string v0, "lelinkport"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 212
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/ServiceName;->getInstance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v0, "MDNSBrowseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------------> "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/ServiceName;->getInstance()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->a:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    iget-wide v0, v0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->e:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    .line 219
    const-string v0, "msearchTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----> "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->a:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    iget-wide v10, v7, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->e:J

    sub-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->a:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->e:J

    .line 223
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    if-nez v2, :cond_5

    const-string v1, "vv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    const-string v0, "MDNSBrowseHandler"

    const-string v1, "filter new lelink field vv"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_4
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "MDNSBrowseHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 230
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 234
    :cond_6
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 235
    return-object v3

    :cond_7
    move v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 113
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_0

    const-string v0, "no route to host"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    const-string v0, "MDNSBrowseHandler"

    invoke-static {v0, p2}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->a:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->b()V

    .line 117
    :cond_1
    return-void
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public serviceDiscovered(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/ServiceInstance;)V
    .locals 8

    .prologue
    const-wide v6, 0x4007333333333333L    # 2.9

    .line 124
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getTextAttributes()Ljava/util/Map;

    move-result-object v3

    .line 125
    if-nez v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "version"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    const-string v1, "channel"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    const/high16 v2, -0x40800000    # -1.0f

    .line 133
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 134
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 140
    :goto_1
    const-string v2, ""

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 142
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 143
    array-length v4, v1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_7

    .line 144
    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 147
    :goto_2
    const-string v2, "MDNSBrowseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceResolved Property parse name:version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " channel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFilter501Version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    iget-boolean v5, v5, Lcom/hpplay/sdk/source/common/store/Session;->isFilter501Version:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v2, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v2, :cond_0

    .line 151
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-boolean v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->isFilter501Version:Z

    if-eqz v2, :cond_5

    .line 153
    float-to-double v4, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2

    const-string v0, "5.0.1."

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "60001"

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-direct {p0, p2, v3}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->a(Lcom/hpplay/sdk/source/mdns/ServiceInstance;Ljava/util/Map;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/c/a;->serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "MDNSBrowseHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 137
    const-string v4, "MDNSBrowseHandler"

    invoke-static {v4, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v0, v2

    goto/16 :goto_1

    .line 163
    :cond_5
    float-to-double v4, v0

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_6

    const-string v0, "60001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-direct {p0, p2, v3}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;->a(Lcom/hpplay/sdk/source/mdns/ServiceInstance;Ljava/util/Map;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/c/a;->serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 167
    :catch_2
    move-exception v0

    .line 168
    const-string v1, "MDNSBrowseHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public serviceRemoved(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/ServiceInstance;)V
    .locals 3

    .prologue
    .line 176
    const-string v0, "MDNSBrowseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Removed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method
