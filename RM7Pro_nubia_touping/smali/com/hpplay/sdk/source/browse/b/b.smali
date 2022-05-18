.class public Lcom/hpplay/sdk/source/browse/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final A:Ljava/lang/String; = "mirror"

.field public static final B:Ljava/lang/String; = "version"

.field public static final C:Ljava/lang/String; = "port"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/lang/String; = "lelinkport"

.field public static final E:Ljava/lang/String; = "channel"

.field public static final F:Ljava/lang/String; = "ver"

.field public static final G:Ljava/lang/String; = "appInfo"

.field public static final H:Ljava/lang/String; = "manufacturer"

.field public static final I:Ljava/lang/String; = "pincode"

.field public static final J:Ljava/lang/String; = "pt"

.field public static final K:Ljava/lang/String; = "pol"

.field public static final L:Ljava/lang/String; = "phone"

.field public static final M:Ljava/lang/String; = "vv"

.field public static final N:Ljava/lang/String; = "hstv"

.field public static final O:Ljava/lang/String; = "etv"

.field public static final P:Ljava/lang/String; = "atv"

.field public static final Q:Ljava/lang/String; = "hmd"

.field public static final R:Ljava/lang/String; = "htv"

.field public static final S:Ljava/lang/String; = "isconference"

.field public static final T:Ljava/lang/String; = "dlna_location"

.field public static final U:Ljava/lang/String; = "ssdp_packet_data"

.field public static final V:Ljava/lang/String; = "dlna_mode_name"

.field public static final W:Ljava/lang/String; = "dlna_mode_desc"

.field public static final X:Ljava/lang/String; = "domain"

.field public static final Y:Ljava/lang/String; = "remotePort"

.field public static final Z:Ljava/lang/String; = "cname"

.field public static final a:I = 0x1

.field public static final aa:Ljava/lang/String; = "ssid"

.field public static final ab:Ljava/lang/String; = "deviceName"

.field public static final ac:Ljava/lang/String; = "language"

.field public static final ad:Ljava/lang/String; = "createTime"

.field public static final ae:Ljava/lang/String; = "a"

.field private static final af:Ljava/lang/String; = "BrowserInfo"

.field private static final ag:Ljava/lang/String; = "extras"

.field public static final b:I = 0x5

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field public static final m:I = 0x7

.field public static final n:Ljava/lang/String; = "name"

.field public static final o:Ljava/lang/String; = "ip"

.field public static final p:Ljava/lang/String; = "type"

.field public static final q:Ljava/lang/String; = "packagename"

.field public static final r:Ljava/lang/String; = "devicemac"

.field public static final s:Ljava/lang/String; = "lebofeature"

.field public static final t:Ljava/lang/String; = "feature"

.field public static final u:Ljava/lang/String; = "h"

.field public static final v:Ljava/lang/String; = "w"

.field public static final w:Ljava/lang/String; = "raop"

.field public static final x:Ljava/lang/String; = "u"

.field public static final y:Ljava/lang/String; = "airplay"

.field public static final z:Ljava/lang/String; = "remote"


# instance fields
.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:I

.field private al:I

.field private am:I

.field private an:Z

.field private ao:Z

.field private ap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/b$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/b/b$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/browse/b/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    .line 106
    iput p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    .line 107
    iput p2, p0, Lcom/hpplay/sdk/source/browse/b/b;->al:I

    .line 108
    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/sdk/source/browse/b/b;->a(ILorg/json/JSONObject;)V

    .line 112
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ah:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ai:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->aj:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->am:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->al:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ao:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    .line 277
    :goto_2
    if-ge v2, v0, :cond_2

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 273
    goto :goto_0

    :cond_1
    move v1, v2

    .line 274
    goto :goto_1

    .line 282
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->am:I

    .line 144
    return-void
.end method

.method public a(ILorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 187
    if-eqz p2, :cond_1

    .line 188
    const-string v0, "u"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ah:Ljava/lang/String;

    .line 189
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ai:Ljava/lang/String;

    .line 190
    const-string v0, "ip"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->aj:Ljava/lang/String;

    .line 191
    const-string v0, "port"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->am:I

    .line 192
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    .line 193
    iput p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->al:I

    .line 194
    const-string v0, "extras"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 199
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_0
    iput-object v2, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    .line 206
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ah:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    .line 184
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    .line 168
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ai:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ao:Z

    .line 176
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/b/b;->aj:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->am:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->al:I

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x4

    iget v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ao:Z

    return v0
.end method

.method public j()Ljava/util/Map;
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
    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    return-object v0
.end method

.method public k()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 211
    :try_start_0
    const-string v0, "u"

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/b/b;->ah:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v0, "name"

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/b/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v0, "ip"

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/b/b;->aj:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v0, "port"

    iget v2, p0, Lcom/hpplay/sdk/source/browse/b/b;->am:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v0, "type"

    iget v2, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 217
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

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

    check-cast v0, Ljava/lang/String;

    .line 219
    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v2, "BrowserInfo"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :cond_0
    :goto_1
    return-object v1

    .line 221
    :cond_1
    :try_start_1
    const-string v0, "extras"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserInfo{uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->al:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->am:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOnLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLocalWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ao:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ah:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ai:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ak:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->am:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->al:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->an:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 258
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ao:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/b/b;->ap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v1, v2

    .line 258
    goto :goto_1

    .line 264
    :cond_2
    return-void
.end method
