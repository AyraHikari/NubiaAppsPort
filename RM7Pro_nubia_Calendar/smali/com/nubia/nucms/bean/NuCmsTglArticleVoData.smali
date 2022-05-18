.class public Lcom/nubia/nucms/bean/NuCmsTglArticleVoData;
.super Lcom/nubia/nucms/bean/NuCmsStatusBean;
.source "NuCmsTglArticleVoData.java"


# instance fields
.field private data:Lcom/nubia/nucms/bean/NuCmsTglArticleVoDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/nubia/nucms/bean/NuCmsTglArticleVoDetail;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoData;->data:Lcom/nubia/nucms/bean/NuCmsTglArticleVoDetail;

    return-object v0
.end method
