.class public Lcom/hpplay/sdk/source/browse/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/hpplay/sdk/source/browse/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hpplay/sdk/source/browse/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "LelinkServiceInfoWrapper"

.field private static final b:Ljava/lang/String; = "info"

.field private static final c:Ljava/lang/String; = "(?<!\\d)\\d{1,3}\\.\\d{1,3}(?=\\.\\d)"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/d$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/b/d$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/browse/b/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(ILcom/hpplay/sdk/source/browse/b/b;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    .line 51
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->d()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->g:I

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/sdk/source/browse/b/d;->a(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->e:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->g:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->i:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->j:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->k:Ljava/lang/String;

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    .line 61
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-direct {v0, v3, v3}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 62
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    const-string v2, "u"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 67
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/b/d;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/browse/b/d;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 490
    if-ne p0, p1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->g:I

    .line 127
    return-void
.end method

.method public a(ILcom/hpplay/sdk/source/browse/b/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 353
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    .line 356
    :cond_0
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    .line 357
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/hpplay/sdk/source/browse/b/d;->a(Lcom/hpplay/sdk/source/browse/b/b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 365
    if-nez v0, :cond_3

    .line 367
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-direct {v0, v4, p1}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 368
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 371
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 372
    const-string v2, "u"

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 374
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v1

    .line 379
    if-nez v1, :cond_5

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    .line 382
    :goto_1
    const-string v1, "u"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    const-string v1, "u"

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_4
    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method public a(ILorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 406
    if-eqz p2, :cond_0

    .line 407
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    .line 408
    const-string v0, "ip"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    .line 409
    const-string v0, "u"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    .line 410
    const-string v0, "info"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_0

    .line 413
    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 414
    new-instance v3, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(ILorg/json/JSONObject;)V

    .line 415
    invoke-virtual {p0, p1, v3}, Lcom/hpplay/sdk/source/browse/b/d;->a(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->j:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->i:Z

    .line 176
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 113
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/b/b;)Z
    .locals 2

    .prologue
    .line 341
    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dongle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string v1, "LelinkServiceInfoWrapper"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->g:I

    return v0
.end method

.method public b(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 397
    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 401
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->a(Lcom/hpplay/sdk/source/browse/b/d;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->e:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 457
    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 458
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 461
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/d;->k:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->i:Z

    return v0
.end method

.method public i()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 186
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 195
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 191
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string v1, "packagename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "remote"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v1, "LelinkServiceInfoWrapper"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 2

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 236
    :goto_0
    return v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "LelinkServiceInfoWrapper"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 2

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 244
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "w"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 249
    :goto_0
    return v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "LelinkServiceInfoWrapper"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 255
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 261
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 263
    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    .line 265
    const-string v3, "appInfo"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    aget-object v0, v0, v2

    .line 269
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 277
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 273
    goto :goto_0

    :cond_1
    move v0, v2

    .line 277
    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 303
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 306
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    :pswitch_1
    const-string v0, "Lelink"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :pswitch_2
    const-string v0, "DLNA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :pswitch_3
    const-string v0, "IM"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public s()Ljava/util/Map;
    .locals 2
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
    .line 329
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 422
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 424
    :try_start_0
    const-string v0, "u"

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v0, "name"

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v0, "ip"

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 430
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 431
    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 432
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string v2, "LelinkServiceInfoWrapper"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    :cond_0
    :goto_1
    return-object v1

    .line 434
    :cond_1
    :try_start_1
    const-string v0, "info"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LelinkServiceInfo{, name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrowserInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->k:Ljava/lang/String;

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknow"

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 474
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    const-string v1, "manufacturer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknow"

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 532
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tv"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 516
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 520
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    if-lez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 515
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 528
    :cond_1
    return-void
.end method
