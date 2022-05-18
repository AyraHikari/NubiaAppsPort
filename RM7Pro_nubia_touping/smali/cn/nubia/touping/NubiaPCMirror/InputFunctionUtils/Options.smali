.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private bitRate:I

.field private codecOptions:Ljava/lang/String;

.field private control:Z

.field private crop:Landroid/graphics/Rect;

.field private displayId:I

.field private fameRate:I

.field private isH264Deocde:Z

.field private lockedVideoOrientation:I

.field private logLevel:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

.field private maxFps:I

.field private maxSize:I

.field private sendFrameMeta:Z

.field private showTouches:Z

.field private stayAwake:Z

.field private tunnelForward:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOptions()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;
    .locals 13

    .prologue
    .line 180
    new-instance v9, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;

    invoke-direct {v9}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;-><init>()V

    .line 186
    .local v9, "options":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;
    const/4 v8, -0x8

    .line 187
    .local v8, "maxSize":I
    invoke-virtual {v9, v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setMaxSize(I)V

    .line 192
    const/16 v7, 0x90

    .line 193
    .local v7, "maxFps":I
    invoke-virtual {v9, v7}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setMaxFps(I)V

    .line 195
    const/4 v6, -0x1

    .line 196
    .local v6, "lockedVideoOrientation":I
    invoke-virtual {v9, v6}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setLockedVideoOrientation(I)V

    .line 202
    const-string v12, "-"

    invoke-static {v12}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->parseCrop(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    .line 203
    .local v2, "crop":Landroid/graphics/Rect;
    invoke-virtual {v9, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setCrop(Landroid/graphics/Rect;)V

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "control":Z
    invoke-virtual {v9, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setControl(Z)V

    .line 211
    const/4 v3, 0x0

    .line 212
    .local v3, "displayId":I
    invoke-virtual {v9, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setDisplayId(I)V

    .line 214
    const/4 v10, 0x0

    .line 215
    .local v10, "showTouches":Z
    invoke-virtual {v9, v10}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setShowTouches(Z)V

    .line 217
    const/4 v11, 0x0

    .line 218
    .local v11, "stayAwake":Z
    invoke-virtual {v9, v11}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setStayAwake(Z)V

    .line 220
    const-string v0, "-"

    .line 221
    .local v0, "codecOptions":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setCodecOptions(Ljava/lang/String;)V

    .line 222
    const/16 v4, 0x90

    .line 223
    .local v4, "frameRate":I
    invoke-virtual {v9, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setFameRate(I)V

    .line 225
    const/4 v5, 0x1

    .line 226
    .local v5, "isH264Decode":Z
    invoke-virtual {v9, v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->setH264Deocde(Z)V

    .line 228
    return-object v9
.end method

.method private static parseCrop(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 8
    .param p0, "crop"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v5, "-"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    const/4 v5, 0x0

    .line 244
    :goto_0
    return-object v5

    .line 236
    :cond_0
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "tokens":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 238
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Crop must contains 4 values separated by colons: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 240
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, "width":I
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "height":I
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, "x":I
    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 244
    .local v4, "y":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v2

    add-int v7, v4, v0

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getBitRate()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->bitRate:I

    return v0
.end method

.method public getCodecOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->codecOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getControl()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->control:Z

    return v0
.end method

.method public getCrop()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->crop:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->displayId:I

    return v0
.end method

.method public getFameRate()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->fameRate:I

    return v0
.end method

.method public getLockedVideoOrientation()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->lockedVideoOrientation:I

    return v0
.end method

.method public getLogLevel()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->logLevel:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    return-object v0
.end method

.method public getMaxFps()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->maxFps:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->maxSize:I

    return v0
.end method

.method public getSendFrameMeta()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->sendFrameMeta:Z

    return v0
.end method

.method public getShowTouches()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->showTouches:Z

    return v0
.end method

.method public getStayAwake()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->stayAwake:Z

    return v0
.end method

.method public isH264Deocde()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->isH264Deocde:Z

    return v0
.end method

.method public isTunnelForward()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->tunnelForward:Z

    return v0
.end method

.method public setBitRate(I)V
    .locals 0
    .param p1, "bitRate"    # I

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->bitRate:I

    .line 44
    return-void
.end method

.method public setCodecOptions(Ljava/lang/String;)V
    .locals 0
    .param p1, "codecOptions"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->codecOptions:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setControl(Z)V
    .locals 0
    .param p1, "control"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->control:Z

    .line 92
    return-void
.end method

.method public setCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->crop:Landroid/graphics/Rect;

    .line 76
    return-void
.end method

.method public setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 99
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->displayId:I

    .line 100
    return-void
.end method

.method public setFameRate(I)V
    .locals 0
    .param p1, "fameRate"    # I

    .prologue
    .line 139
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->fameRate:I

    .line 140
    return-void
.end method

.method public setH264Deocde(Z)V
    .locals 0
    .param p1, "h264Deocde"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->isH264Deocde:Z

    .line 132
    return-void
.end method

.method public setLockedVideoOrientation(I)V
    .locals 0
    .param p1, "lockedVideoOrientation"    # I

    .prologue
    .line 59
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->lockedVideoOrientation:I

    .line 60
    return-void
.end method

.method public setLogLevel(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;)V
    .locals 0
    .param p1, "logLevel"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->logLevel:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    .line 28
    return-void
.end method

.method public setMaxFps(I)V
    .locals 0
    .param p1, "maxFps"    # I

    .prologue
    .line 51
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->maxFps:I

    .line 52
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 35
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->maxSize:I

    .line 36
    return-void
.end method

.method public setSendFrameMeta(Z)V
    .locals 0
    .param p1, "sendFrameMeta"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->sendFrameMeta:Z

    .line 84
    return-void
.end method

.method public setShowTouches(Z)V
    .locals 0
    .param p1, "showTouches"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->showTouches:Z

    .line 108
    return-void
.end method

.method public setStayAwake(Z)V
    .locals 0
    .param p1, "stayAwake"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->stayAwake:Z

    .line 116
    return-void
.end method

.method public setTunnelForward(Z)V
    .locals 0
    .param p1, "tunnelForward"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->tunnelForward:Z

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options{logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->logLevel:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->bitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->maxFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lockedVideoOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->lockedVideoOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tunnelForward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->tunnelForward:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->crop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendFrameMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->sendFrameMeta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", control="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->control:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showTouches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->showTouches:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stayAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->stayAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codecOptions=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->codecOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isH264Deocde="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->isH264Deocde:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->fameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
