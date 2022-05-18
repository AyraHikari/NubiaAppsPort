.class public abstract Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
.super Ljava/lang/Object;
.source "NuCmsHttpAbstractRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ENCODE_PATTERN_URL:Ljava/lang/String; = "^.+\\?(%[0-9a-fA-F]+|[=&A-Za-z0-9_#\\-\\.\\*])*$"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private charSet:Ljava/lang/String;

.field private connectTimeout:I

.field protected dataParser:Lcom/nubia/nucms/network/http/parser/DataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nubia/nucms/network/http/parser/DataParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private fullUri:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpBody:Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;

.field private httpListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private maxRedirectTimes:I

.field private maxRetryTimes:I

.field private method:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field private paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private socketTimeout:I

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    const/4 v0, -0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRetryTimes:I

    .line 68
    iput v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRedirectTimes:I

    .line 72
    iput v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->connectTimeout:I

    .line 76
    iput v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->socketTimeout:I

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nubia/nucms/network/frame/NuCmsNetListener;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p2, "listener":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    invoke-direct {p0, p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setHttpListener(Lcom/nubia/nucms/network/frame/NuCmsNetListener;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 113
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    if-eqz p2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_1
    return-object p0
.end method

.method public addHeader(Ljava/util/List;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p1, "nps":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    if-eqz p1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    .line 328
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    .line 329
    .local v0, "np":Lcom/nubia/nucms/network/http/params/NameValuePair;
    iget-object v2, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    .end local v0    # "np":Lcom/nubia/nucms/network/http/params/NameValuePair;
    :cond_1
    return-object p0
.end method

.method public addHeader(Ljava/util/Map;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 356
    :cond_1
    return-object p0
.end method

.method public addUrlParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    if-eqz p2, :cond_1

    .line 288
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    return-object p0
.end method

.method public addUrlParam(Ljava/util/List;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    if-eqz p1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    .line 303
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    .line 304
    .local v0, "pair":Lcom/nubia/nucms/network/http/params/NameValuePair;
    iget-object v2, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    .end local v0    # "pair":Lcom/nubia/nucms/network/http/params/NameValuePair;
    :cond_1
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 281
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    return-void
.end method

.method public abstract createDataParser()Lcom/nubia/nucms/network/http/parser/DataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nubia/nucms/network/http/parser/DataParser",
            "<TT;>;"
        }
    .end annotation
.end method

.method public createFullUri()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 360
    :cond_0
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->baseUrl:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 361
    new-instance v10, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    sget-object v11, Lcom/nubia/nucms/network/exception/NuCmsClientException;->UrlIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-direct {v10, v11}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsClientException;)V

    throw v10

    .line 362
    :cond_1
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->baseUrl:Ljava/lang/String;

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 363
    new-instance v10, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    sget-object v11, Lcom/nubia/nucms/network/exception/NuCmsClientException;->IllegalScheme:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-direct {v10, v11}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsClientException;)V

    throw v10

    .line 365
    :cond_2
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->baseUrl:Ljava/lang/String;

    :goto_0
    iput-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    .line 368
    :cond_3
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 370
    .local v2, "hasQes":Z
    if-eqz v2, :cond_7

    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    const-string v11, "^.+\\?(%[0-9a-fA-F]+|[=&A-Za-z0-9_#\\-\\.\\*])*$"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 371
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 372
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 373
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 374
    invoke-static {v7}, Lcom/nubia/nucms/utils/NuCmsUriUtil;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 375
    .local v4, "key":Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/nubia/nucms/utils/NuCmsUriUtil;->getQueryParameters(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 376
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 408
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "hasQes":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    invoke-direct {v10, v1}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 379
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    .restart local v2    # "hasQes":Z
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_1
    sget-object v10, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "param uri origin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 381
    sget-object v10, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "param uri encode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_2
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    if-nez v10, :cond_8

    .line 387
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 407
    :goto_3
    return-object v10

    .line 384
    :cond_7
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 389
    :cond_8
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v6

    .line 390
    .local v6, "size":I
    if-lez v6, :cond_d

    .line 391
    if-nez v2, :cond_b

    .line 392
    const-string v10, "?"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_9
    :goto_4
    const/4 v3, 0x0

    .line 397
    .local v3, "i":I
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 398
    .local v8, "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v12, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->charSet:Ljava/lang/String;

    invoke-static {v10, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 399
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_c

    const-string v10, ""

    :goto_6
    iget-object v13, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->charSet:Ljava/lang/String;

    invoke-static {v10, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v3, v3, 0x1

    if-eq v3, v6, :cond_a

    .line 401
    const-string v10, "&"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 393
    .end local v3    # "i":I
    .end local v8    # "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 394
    const-string v10, "&"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 399
    .restart local v3    # "i":I
    .restart local v8    # "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_6

    .line 406
    .end local v3    # "i":I
    .end local v8    # "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->fullUri:Ljava/lang/String;

    .line 407
    iget-object v10, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->fullUri:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->connectTimeout:I

    return v0
.end method

.method public getDataParser()Lcom/nubia/nucms/network/http/parser/DataParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/nubia/nucms/network/http/parser/DataParser",
            "<TT;>;>()TD;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->dataParser:Lcom/nubia/nucms/network/http/parser/DataParser;

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->createDataParser()Lcom/nubia/nucms/network/http/parser/DataParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setDataParser(Lcom/nubia/nucms/network/http/parser/DataParser;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->dataParser:Lcom/nubia/nucms/network/http/parser/DataParser;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpBody()Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->httpBody:Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;

    return-object v0
.end method

.method public getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->httpListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    return-object v0
.end method

.method public getMaxRedirectTimes()I
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRedirectTimes:I

    return v0
.end method

.method public getMaxRetryTimes()I
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRetryTimes:I

    return v0
.end method

.method public getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->method:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    return-object v0
.end method

.method public getParamMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->socketTimeout:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isCancelledOrInterrupted()Z
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reqToString()Ljava/lang/String;
    .locals 9

    .prologue
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n________________ request-start ________________"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n full uri         : "

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->fullUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n method           : "

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->method:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n class            : "

    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n charSet          : "

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->charSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n maxRetryTimes    : "

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRetryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n maxRedirectTimes : "

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRedirectTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n httpListener     : "

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->httpListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n cancelled        : "

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n httpBody         : "

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->httpBody:Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n header           "

    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v2, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 439
    const-string v2, ": null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_0
    const-string v2, "\n paramMap         "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v2, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 449
    const-string v2, ": null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_1
    const-string v2, "\n________________ request-end ________________"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 441
    :cond_2
    iget-object v2, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 442
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "\n|    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%-20s"

    new-array v5, v8, [Ljava/lang/Object;

    .line 443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    .line 444
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 451
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 452
    .restart local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "\n|    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%-20s"

    new-array v5, v8, [Ljava/lang/Object;

    .line 453
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    .line 454
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->baseUrl:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setCharSet(Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->charSet:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(I)TS;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->connectTimeout:I

    .line 185
    return-object p0
.end method

.method public setDataParser(Lcom/nubia/nucms/network/http/parser/DataParser;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Lcom/nubia/nucms/network/http/parser/DataParser",
            "<TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p1, "dataParser":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->dataParser:Lcom/nubia/nucms/network/http/parser/DataParser;

    .line 217
    iget-object v0, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->dataParser:Lcom/nubia/nucms/network/http/parser/DataParser;

    invoke-virtual {v0, p0}, Lcom/nubia/nucms/network/http/parser/DataParser;->setRequest(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    .line 218
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->headers:Ljava/util/Map;

    .line 258
    return-object p0
.end method

.method public setHttpBody(Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "httpBody"    # Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1, p0}, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->setRequest(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->httpBody:Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;

    .line 247
    return-object p0
.end method

.method public setHttpBody(Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "httpBody"    # Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
    .param p2, "method"    # Lcom/nubia/nucms/network/http/consts/HttpMethods;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;",
            "Lcom/nubia/nucms/network/http/consts/HttpMethods;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0, p2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 317
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setHttpBody(Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 318
    return-object p0
.end method

.method public setHttpListener(Lcom/nubia/nucms/network/frame/NuCmsNetListener;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p1, "httpListener":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->httpListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .line 207
    return-object p0
.end method

.method public setMaxRedirectTimes(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "maxRedirectTimes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(I)TS;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRedirectTimes:I

    .line 174
    return-object p0
.end method

.method public setMaxRetryTimes(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "maxRetryTimes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(I)TS;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->maxRetryTimes:I

    .line 163
    return-object p0
.end method

.method public setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "method"    # Lcom/nubia/nucms/network/http/consts/HttpMethods;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Lcom/nubia/nucms/network/http/consts/HttpMethods;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->method:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 142
    return-object p0
.end method

.method public setParamMap(Ljava/util/Map;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->paramMap:Ljava/util/Map;

    .line 269
    return-object p0
.end method

.method public setSocketTimeout(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "socketTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(I)TS;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->socketTimeout:I

    .line 196
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->uri:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->reqToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
