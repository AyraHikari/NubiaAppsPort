.class public Lcom/hpplay/sdk/source/browse/pincode/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/pincode/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field private c:Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ConferenCodeParser"

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b;->b:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v2, "code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMapParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    sget-object v3, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceCodeAuth:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    .line 76
    iget-object v0, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v1, 0x1

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 77
    new-instance v0, Lcom/hpplay/sdk/source/browse/pincode/b$1;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/sdk/source/browse/pincode/b$1;-><init>(Lcom/hpplay/sdk/source/browse/pincode/b;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 141
    return-void
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/browse/pincode/b;)Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b;->c:Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    return-object v0
.end method

.method private b(Lcom/hpplay/sdk/source/browse/pincode/c;)V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    const-string v2, "vals"

    iget-object v3, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "pageNum"

    iget v3, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "pageSize"

    iget v3, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMapParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    sget-object v3, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceLikeEqAuth:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    .line 159
    iget-object v0, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v1, 0x1

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 160
    new-instance v0, Lcom/hpplay/sdk/source/browse/pincode/b$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/pincode/b$2;-><init>(Lcom/hpplay/sdk/source/browse/pincode/b;)V

    .line 246
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 247
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/b;->c:Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;

    .line 44
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/b;->b:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    .line 39
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/pincode/c;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "ConferenCodeParser"

    const-string v1, "parsePinCode pinCode is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b;->b:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/b;->b:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "ConferenCodeParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsePinCode trim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->d:Z

    if-eqz v0, :cond_2

    .line 59
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/pincode/b;->b(Lcom/hpplay/sdk/source/browse/pincode/c;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/browse/pincode/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
