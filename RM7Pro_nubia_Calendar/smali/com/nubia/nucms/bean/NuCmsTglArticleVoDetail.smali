.class public Lcom/nubia/nucms/bean/NuCmsTglArticleVoDetail;
.super Lcom/nubia/nucms/bean/NuCmsStatusBean;
.source "NuCmsTglArticleVoDetail.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoDetail;->content:Ljava/lang/String;

    return-object v0
.end method
