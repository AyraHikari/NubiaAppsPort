.class public Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;
.super Ljava/lang/Object;
.source "NuCmsSingleSceneServiceItem.java"


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private serviceId:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private serviceType:I

.field private serviceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;->serviceType:I

    return v0
.end method

.method public getServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;->serviceUrl:Ljava/lang/String;

    return-object v0
.end method
