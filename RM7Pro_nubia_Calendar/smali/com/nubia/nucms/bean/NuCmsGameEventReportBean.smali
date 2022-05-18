.class public Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;
.super Ljava/lang/Object;
.source "NuCmsGameEventReportBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NuCmsGameEventReportBean"


# instance fields
.field private articleId:Ljava/lang/String;

.field private duration:J

.field private keywords:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private pkgId:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tm:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->duration:J

    return-wide v0
.end method

.method public getHapppenTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->tm:J

    return-wide v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->pkgId:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "articleId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->articleId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->duration:J

    .line 56
    return-void
.end method

.method public setHappenTime(J)V
    .locals 3
    .param p1, "clickTime"    # J

    .prologue
    .line 51
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->tm:J

    .line 52
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->keywords:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->location:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->origin:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPkgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->pkgId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->tags:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->title:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;->type:Ljava/lang/String;

    .line 120
    return-void
.end method
