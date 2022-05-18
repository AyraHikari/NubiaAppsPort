.class public Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
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
        "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LelinkServiceInfo"


# instance fields
.field private mInstance:Lcom/hpplay/sdk/source/browse/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/b/d;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    .line 28
    return-void
.end method

.method public constructor <init>(ILcom/hpplay/sdk/source/browse/b/b;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/d;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/b/d;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    const-class v0, Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/d;

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "LelinkServiceInfo"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/b/d;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/d;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    iget-object v1, p1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/d;->a(Lcom/hpplay/sdk/source/browse/b/d;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->compareTo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)I

    move-result v0

    return v0
.end method

.method public decode(ILorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/b/d;->a(ILorg/json/JSONObject;)V

    .line 190
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->t()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidRemotePort()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->l()I

    move-result v0

    return v0
.end method

.method public getBrowserInfos()Ljava/util/Map;
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
    .line 149
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->q()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaManufacturerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->n()I

    move-result v0

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
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
    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->s()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPinCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->b()I

    move-result v0

    return v0
.end method

.method public getRcvPlf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->k()I

    move-result v0

    return v0
.end method

.method public getTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->m()I

    move-result v0

    return v0
.end method

.method public hasNewVersion()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->o()Z

    move-result v0

    return v0
.end method

.method public isConnect()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->h()Z

    move-result v0

    return v0
.end method

.method public isLocalWifi()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->i()Z

    move-result v0

    return v0
.end method

.method public isOnLine()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->a()Z

    move-result v0

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->d(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setConnect(Z)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->a(Z)V

    .line 124
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->e(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->f(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->c(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setPinCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setPort(I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->a(I)V

    .line 67
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->b(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateByAliveBroserInfo(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/b/d;->b(Lcom/hpplay/sdk/source/browse/b/b;)V

    .line 186
    return-void
.end method

.method public updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/b/d;->a(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 182
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->mInstance:Lcom/hpplay/sdk/source/browse/b/d;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    return-void
.end method
