.class public Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;
.super Ljava/lang/Object;
.source "NuCmsAdEventReportBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;
    }
.end annotation


# instance fields
.field private cid:J

.field private event:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private log_extra:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private show_time:J

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
.method public setAdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setChannelId(J)V
    .locals 1
    .param p1, "cid"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;->cid:J

    .line 30
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;->show_time:J

    .line 36
    return-void
.end method

.method public setEvent(Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;)V
    .locals 1
    .param p1, "event"    # Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;->event:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setHappenTime(J)V
    .locals 1
    .param p1, "tm"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;->tm:J

    .line 24
    return-void
.end method

.method public setLogExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "log_extra"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;->log_extra:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;->origin:Ljava/lang/String;

    .line 42
    return-void
.end method
