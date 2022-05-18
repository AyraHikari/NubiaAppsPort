.class Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/hpplay/sdk/source/browse/c/a;

.field private c:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/sdk/source/browse/c/a;)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->a:Ljava/lang/ref/WeakReference;

    .line 178
    const-string v0, "([0-9]{1,3}[\\.]){3}[0-9]{1,3}:[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->c:Ljava/util/regex/Pattern;

    .line 179
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/sdk/source/browse/c/a;Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$1;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;-><init>(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/sdk/source/browse/c/a;)V

    return-void
.end method

.method private a(Lcom/hpplay/cybergarage/upnp/Device;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 282
    const-string v0, "DLNABrowserHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveDevice name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v6}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 284
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v6}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 290
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v3, "DLNABrowserHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ipAddress-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 296
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 297
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 298
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 302
    :cond_1
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 303
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getPort(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 304
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 305
    const-string v2, "dlna_location"

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v2, "manufacturer"

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v2, "dlna_mode_name"

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "dlna_mode_desc"

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getModelDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 312
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 313
    const-string v2, "ssdp_packet_data"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 316
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 233
    .line 234
    const-string v1, "vv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    const-string v3, "DLNABrowserHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveServiceInfo vv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFilterNewLelinkV1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 237
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 243
    :goto_0
    new-instance v3, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-direct {v3, v2, v2}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 244
    const-string v0, "devicename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 245
    const-string v0, "deviceip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 247
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 248
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 252
    :cond_0
    const-string v0, "lelinkport"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 256
    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_1
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 262
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string v0, "devicename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  -- "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    if-nez v1, :cond_3

    const-string v6, "vv"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 269
    const-string v0, "DLNABrowserHandler"

    const-string v6, "filter new lelink field vv"

    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v1, v2

    .line 240
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v2, "DLNABrowserHandler"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 272
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 273
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 276
    :cond_4
    const-string v0, "DLNABrowserHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------------> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 278
    return-object v3

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public deviceAdded(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    .line 185
    if-nez v0, :cond_1

    .line 186
    const-string v0, "DLNABrowserHandler"

    const-string v1, "deviceAdded handler is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->a(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    .line 190
    const-string v1, "DLNABrowserHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceAdded isAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "urn:upnp-org:serviceId:RenderingControl"

    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_2

    .line 196
    const-string v1, "LELINKFT"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "DLNABrowserHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->a(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/browse/c/a;->serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->a(Lcom/hpplay/cybergarage/upnp/Device;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/browse/c/a;->serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "DLNABrowserHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public deviceRemoved(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    .line 220
    if-nez v0, :cond_1

    .line 221
    const-string v0, "DLNABrowserHandler"

    const-string v1, "deviceRemoved handler is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->b(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    .line 225
    const-string v1, "DLNABrowserHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceRemoved isRemoved-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->a(Lcom/hpplay/cybergarage/upnp/Device;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;->b:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/browse/c/a;->serviceRemoved(Lcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0
.end method
