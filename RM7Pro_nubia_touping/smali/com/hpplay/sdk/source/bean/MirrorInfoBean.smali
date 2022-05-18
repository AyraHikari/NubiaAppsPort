.class public Lcom/hpplay/sdk/source/bean/MirrorInfoBean;
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
            "Lcom/hpplay/sdk/source/bean/MirrorInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioEnable:Z

.field private bitRate:I

.field private connectSessionId:Ljava/lang/String;

.field private frame:I

.field private height:I

.field private iframeInterval:I

.field private isAutoBitRate:Z

.field private isCloudMirror:Z

.field private isCustomAudio:Z

.field private isFullScreen:Z

.field private isShowExternalScreen:Z

.field private isUseRealResolution:Z

.field private mUri:Ljava/lang/String;

.field private screenCode:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCustomAudio:Z

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCustomAudio:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->height:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->width:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->bitRate:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->frame:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->screenCode:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->connectSessionId:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->sessionId:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->mUri:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->audioEnable:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isFullScreen:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isShowExternalScreen:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCloudMirror:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isAutoBitRate:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->iframeInterval:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isUseRealResolution:Z

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCustomAudio:Z

    .line 185
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v0, v2

    .line 178
    goto :goto_1

    :cond_2
    move v0, v2

    .line 179
    goto :goto_2

    :cond_3
    move v0, v2

    .line 180
    goto :goto_3

    :cond_4
    move v0, v2

    .line 181
    goto :goto_4

    :cond_5
    move v0, v2

    .line 183
    goto :goto_5

    :cond_6
    move v1, v2

    .line 184
    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->bitRate:I

    return v0
.end method

.method public getConnectSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->connectSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrame()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->frame:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->height:I

    return v0
.end method

.method public getIframeInterval()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->iframeInterval:I

    return v0
.end method

.method public getScreenCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->screenCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->width:I

    return v0
.end method

.method public getmUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isAudioEnable()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->audioEnable:Z

    return v0
.end method

.method public isAutoBitRate()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isAutoBitRate:Z

    return v0
.end method

.method public isCloudMirror()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCloudMirror:Z

    return v0
.end method

.method public isCustomAudio()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCustomAudio:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isFullScreen:Z

    return v0
.end method

.method public isShowExternalScreen()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isShowExternalScreen:Z

    return v0
.end method

.method public isUseRealResolution()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isUseRealResolution:Z

    return v0
.end method

.method public setAudioEnable(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->audioEnable:Z

    .line 120
    return-void
.end method

.method public setAutoBitRate(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isAutoBitRate:Z

    .line 40
    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->bitRate:I

    .line 72
    return-void
.end method

.method public setCloudMirror(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCloudMirror:Z

    .line 80
    return-void
.end method

.method public setConnectSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->connectSessionId:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setCustomAudio(Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCustomAudio:Z

    .line 152
    return-void
.end method

.method public setFrame(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->frame:I

    .line 68
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isFullScreen:Z

    .line 128
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->height:I

    .line 48
    return-void
.end method

.method public setIframeInterval(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->iframeInterval:I

    .line 144
    return-void
.end method

.method public setScreenCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->screenCode:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->sessionId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setShowExternalScreen(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isShowExternalScreen:Z

    .line 136
    return-void
.end method

.method public setUseRealResolution(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isUseRealResolution:Z

    .line 160
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->width:I

    .line 56
    return-void
.end method

.method public setmUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->mUri:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->frame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->screenCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->connectSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->audioEnable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isFullScreen:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isShowExternalScreen:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCloudMirror:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 202
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isAutoBitRate:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 203
    iget v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->iframeInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isUseRealResolution:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 205
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isCustomAudio:Z

    if-eqz v0, :cond_6

    :goto_6
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 206
    return-void

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    :cond_1
    move v0, v2

    .line 199
    goto :goto_1

    :cond_2
    move v0, v2

    .line 200
    goto :goto_2

    :cond_3
    move v0, v2

    .line 201
    goto :goto_3

    :cond_4
    move v0, v2

    .line 202
    goto :goto_4

    :cond_5
    move v0, v2

    .line 204
    goto :goto_5

    :cond_6
    move v1, v2

    .line 205
    goto :goto_6
.end method
