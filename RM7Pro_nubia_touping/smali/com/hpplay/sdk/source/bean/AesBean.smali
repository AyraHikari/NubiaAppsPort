.class public Lcom/hpplay/sdk/source/bean/AesBean;
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
            "Lcom/hpplay/sdk/source/bean/AesBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AesBean"


# instance fields
.field private iv:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/hpplay/sdk/source/bean/AesBean$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/AesBean$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/bean/AesBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->mode:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->key:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->iv:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :try_start_0
    const-string v0, "mode"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/AesBean;->mode:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v0, "key"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/AesBean;->key:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "iv"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/AesBean;->iv:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v2, "AesBean"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getIv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->iv:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->mode:I

    return v0
.end method

.method public setIv(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/AesBean;->iv:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/AesBean;->key:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/hpplay/sdk/source/bean/AesBean;->mode:I

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AesBean;->iv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
