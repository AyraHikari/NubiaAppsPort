.class public Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;
.super Ljava/lang/Object;
.source "NuCmsSceneEventReportBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean$Event;
    }
.end annotation


# instance fields
.field private classify:Ljava/lang/String;

.field private duration:J

.field private sceneId:Ljava/lang/String;

.field private sceneName:Ljava/lang/String;

.field private secClassify:Ljava/lang/String;

.field private serviceId:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private tm:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->classify:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->duration:J

    return-wide v0
.end method

.method public getHappenTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->tm:J

    return-wide v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->sceneName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecClassify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->secClassify:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public setClassify(Ljava/lang/String;)V
    .locals 0
    .param p1, "classify"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->classify:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->duration:J

    .line 57
    return-void
.end method

.method public setHappenTime(J)V
    .locals 1
    .param p1, "tm"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->tm:J

    .line 54
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->sceneId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->sceneName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSecClassify(Ljava/lang/String;)V
    .locals 0
    .param p1, "secClassify"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->secClassify:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->serviceId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSceneEventReportBean;->serviceName:Ljava/lang/String;

    .line 69
    return-void
.end method
