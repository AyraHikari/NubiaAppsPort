.class public Lcom/hpplay/sdk/source/bean/MediaAssetBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hpplay/sdk/source/bean/MediaAssetBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaAssetBean"


# instance fields
.field private actor:Ljava/lang/String;

.field private albumArtURI:Ljava/lang/String;

.field private director:Ljava/lang/String;

.field private duration:J

.field private id:Ljava/lang/String;

.field private manifestVer:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private size:J

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/hpplay/sdk/source/bean/MediaAssetBean$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/MediaAssetBean$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->manifestVer:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->uri:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->id:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->mediaType:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->name:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->director:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->actor:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->albumArtURI:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->duration:J

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->size:J

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->resolution:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 134
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 136
    :try_start_0
    const-string v0, "manifestVer"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->manifestVer:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v0, "uri"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v0, "id"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v0, "mediaType"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->mediaType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v0, "name"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v0, "director"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->director:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v0, "actor"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->actor:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v0, "albumArtURI"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->albumArtURI:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->duration:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    const-string v0, "size"

    iget-wide v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->size:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    const-string v0, "resolution"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->resolution:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v2, "MediaAssetBean"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getActor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArtURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->albumArtURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->duration:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->manifestVer:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->size:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->actor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "MediaAssetBean"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAlbumArtURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->albumArtURI:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->director:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "MediaAssetBean"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->duration:J

    .line 115
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->id:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setManifestVer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->manifestVer:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->mediaType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "MediaAssetBean"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->resolution:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->size:J

    .line 123
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->uri:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->manifestVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->mediaType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->director:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->actor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->albumArtURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->resolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return-void
.end method
