.class public Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
.super Ljava/lang/Object;
.source "AdParameter.java"


# instance fields
.field public adSearchKeyword:Ljava/lang/String;

.field public adSlotId:Ljava/lang/String;

.field public adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public adViewSize:[I

.field public appId:Ljava/lang/String;

.field public extend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pk:Ljava/lang/String;

.field public session_id:Ljava/lang/String;

.field public sspAdSlotId:Ljava/lang/String;

.field public sspAppId:Ljava/lang/String;

.field public str_extend:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "pk"    # Ljava/lang/String;
    .param p4, "adType"    # Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .param p5, "adSearchKeyword"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->session_id:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->extend:Ljava/util/Map;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->str_extend:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->appId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->pk:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    .line 26
    iput-object p5, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSearchKeyword:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "pk"    # Ljava/lang/String;
    .param p4, "adType"    # Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .param p5, "adSearchKeyword"    # Ljava/lang/String;
    .param p6, "sspAppId"    # Ljava/lang/String;
    .param p7, "sspAdSlotId"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->session_id:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->extend:Ljava/util/Map;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->str_extend:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->appId:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->sspAppId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->sspAdSlotId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->pk:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    .line 35
    iput-object p5, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSearchKeyword:Ljava/lang/String;

    .line 36
    return-void
.end method
