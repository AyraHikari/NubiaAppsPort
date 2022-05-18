.class public Lcn/nubia/cloud/accounts/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcn/nubia/cloud/accounts/DeviceInfo;
    .locals 2

    .line 50
    new-instance v0, Lcn/nubia/cloud/accounts/DeviceInfo;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/DeviceInfo;-><init>()V

    .line 51
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/cloud/accounts/DeviceInfo;->make:Ljava/lang/String;

    .line 52
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/cloud/accounts/DeviceInfo;->phone_model:Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/cloud/accounts/DeviceInfo;->imei:Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->getMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/cloud/accounts/DeviceInfo;->meid:Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/cloud/accounts/DeviceInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method private static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 110
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 60
    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->isDigitString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 68
    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->isDigitString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 80
    :cond_0
    invoke-static {p0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 84
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static isDigitString(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
