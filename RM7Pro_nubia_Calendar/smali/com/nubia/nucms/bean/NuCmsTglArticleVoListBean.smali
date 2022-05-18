.class public Lcom/nubia/nucms/bean/NuCmsTglArticleVoListBean;
.super Lcom/nubia/nucms/bean/NuCmsStatusBean;
.source "NuCmsTglArticleVoListBean.java"


# instance fields
.field private data:Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoListBean;->data:Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;

    return-object v0
.end method
