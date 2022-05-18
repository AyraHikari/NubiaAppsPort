.class public Lcom/hpplay/sdk/source/bean/PlayerInfoBean;
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
            "Lcom/hpplay/sdk/source/bean/PlayerInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PlayerInfoBean"


# instance fields
.field private aes:Lcom/hpplay/sdk/source/bean/AesBean;

.field private header:Ljava/lang/String;

.field private loopMode:I

.field private manifestVer:I

.field private monitor:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->loopMode:I

    .line 28
    new-instance v0, Lcom/hpplay/sdk/source/bean/AesBean;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/AesBean;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->aes:Lcom/hpplay/sdk/source/bean/AesBean;

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->loopMode:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->manifestVer:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->uri:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->header:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->sessionID:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->loopMode:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->monitor:Ljava/lang/String;

    .line 124
    const-class v0, Lcom/hpplay/sdk/source/bean/AesBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/AesBean;

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->aes:Lcom/hpplay/sdk/source/bean/AesBean;

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    :try_start_0
    const-string v0, "manifestVer"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->manifestVer:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v0, "uri"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "header"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->header:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v0, "sessionID"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->sessionID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v0, "loopMode"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->loopMode:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v0, "monitor"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->monitor:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->aes:Lcom/hpplay/sdk/source/bean/AesBean;

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "aes"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->aes:Lcom/hpplay/sdk/source/bean/AesBean;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/bean/AesBean;->encode()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v2, "PlayerInfoBean"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAesBean()Lcom/hpplay/sdk/source/bean/AesBean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->aes:Lcom/hpplay/sdk/source/bean/AesBean;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getLoopMode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->loopMode:I

    return v0
.end method

.method public getManifestVer()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->manifestVer:I

    return v0
.end method

.method public getMonitor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->monitor:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->header:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setLoopMode(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->loopMode:I

    .line 41
    return-void
.end method

.method public setManifestVer(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->manifestVer:I

    .line 65
    return-void
.end method

.method public setMonitor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->monitor:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->sessionID:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->uri:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->manifestVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->sessionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->loopMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->monitor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->aes:Lcom/hpplay/sdk/source/bean/AesBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    return-void
.end method
