.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
.super Ljava/lang/Object;
.source "DeviceMessage.java"


# static fields
.field public static final TYPE_ALLMESSAGE_STATUS:I = 0x7

.field public static final TYPE_CLIPBOARD:I = 0x0

.field public static final TYPE_GAME_SPACE_STATUS:I = 0x4

.field public static final TYPE_PACKAGENAME_ACTIVITYNAME:I = 0x1

.field public static final TYPE_PHONE_TOUPINGAPKVERSION:I = 0x6

.field public static final TYPE_PHONE_WIDTHANDHEIGHT_STATUS:I = 0x5

.field public static final TYPE_SOCKET_LINKSTATUS:I = 0x2

.field public static final TYPE_VIEW_FOCUSSTATUS:I = 0x3


# instance fields
.field private text:Ljava/lang/String;

.field private text2:Ljava/lang/String;

.field private type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static createAllMessageStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 82
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    const/4 v1, 0x7

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 83
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method public static createClipboard(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 24
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 25
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 26
    return-object v0
.end method

.method public static createGameSpacesStatus(Z)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 4
    .param p0, "isGameSpaceStatus"    # Z

    .prologue
    .line 62
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 63
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    const/4 v2, 0x4

    iput v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 64
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 65
    .local v1, "isGamestatus":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 66
    return-object v0

    .line 64
    .end local v1    # "isGamestatus":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createPackageNameAndActivityName(Ljava/lang/String;Ljava/lang/String;ZZ)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "isGamePackageName"    # Z
    .param p3, "isLockScreen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 32
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    iput v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 33
    if-eqz p2, :cond_0

    move v1, v2

    .line 34
    .local v1, "isGame":I
    :goto_0
    if-eqz p3, :cond_1

    .line 35
    .local v2, "islocked":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 36
    return-object v0

    .end local v1    # "isGame":I
    .end local v2    # "islocked":I
    :cond_0
    move v1, v3

    .line 33
    goto :goto_0

    .restart local v1    # "isGame":I
    :cond_1
    move v2, v3

    .line 34
    goto :goto_1
.end method

.method public static createPhoneTouPingApkVersion(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 91
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    const/4 v1, 0x6

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 92
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 93
    return-object v0
.end method

.method public static createPhoneWidthAndHeightStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 73
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    const/4 v1, 0x5

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 74
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 75
    return-object v0
.end method

.method public static createSocketLinkStatus(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 2
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 43
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    const/4 v1, 0x2

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 44
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 45
    return-object v0
.end method

.method public static createViewFocusStatus(Z)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .locals 4
    .param p0, "hasFocusTemp"    # Z

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;-><init>()V

    .line 53
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    const/4 v2, 0x3

    iput v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    .line 54
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 55
    .local v1, "hasFocus":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    .line 56
    return-object v0

    .line 54
    .end local v1    # "hasFocus":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->type:I

    return v0
.end method
