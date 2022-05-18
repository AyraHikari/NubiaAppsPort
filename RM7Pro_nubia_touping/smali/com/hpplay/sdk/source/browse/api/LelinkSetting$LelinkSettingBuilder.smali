.class public Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/api/LelinkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LelinkSettingBuilder"
.end annotation


# instance fields
.field private final appSecret:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private final appkey:Ljava/lang/String;

.field private userIcon:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appkey:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appSecret:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appkey:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appSecret:Ljava/lang/String;

    .line 125
    invoke-static {p3}, Lcom/hpplay/common/utils/DeviceUtil;->setOAID(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->userIcon:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/hpplay/sdk/source/browse/api/LelinkSetting;
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->access$600(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    move-result-object v0

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->appVersion:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->userIcon:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setUserId(Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->userId:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->userName:Ljava/lang/String;

    .line 141
    return-void
.end method
