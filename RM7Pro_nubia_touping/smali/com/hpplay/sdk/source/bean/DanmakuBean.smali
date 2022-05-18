.class public Lcom/hpplay/sdk/source/bean/DanmakuBean;
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
            "Lcom/hpplay/sdk/source/bean/DanmakuBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DanmakuBean"


# instance fields
.field private columSpace:I

.field private content:Ljava/lang/String;

.field private displayTime:J

.field private fontColor:Ljava/lang/String;

.field private fontSize:I

.field private immShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/hpplay/sdk/source/bean/DanmakuBean$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/DanmakuBean$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->content:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontColor:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->displayTime:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontSize:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->columSpace:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->immShow:Z

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setColumSpace(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->columSpace:I

    .line 54
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, "DanmakuBean"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDisplayTime(J)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->displayTime:J

    .line 40
    return-void
.end method

.method public setFontColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontColor:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontSize:I

    .line 44
    return-void
.end method

.method public setImmShow(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->immShow:Z

    .line 58
    return-void
.end method

.method public toJson(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    :try_start_0
    const-string v1, "manifestVer"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v1, "danmukuId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "content"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "displayTime"

    iget-wide v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->displayTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    const-string v1, "fontSize"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v1, "fontColor"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "columSpace"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->columSpace:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v1, "immShow"

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->immShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 72
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "DanmakuBean"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "DanmakuBean"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->displayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->fontSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->columSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuBean;->immShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
