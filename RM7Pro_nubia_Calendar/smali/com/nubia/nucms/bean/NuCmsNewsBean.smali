.class public Lcom/nubia/nucms/bean/NuCmsNewsBean;
.super Lcom/nubia/nucms/bean/NuCmsStatusBean;
.source "NuCmsNewsBean.java"


# instance fields
.field private data:Lcom/nubia/nucms/bean/NuCmsNewsData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/nubia/nucms/bean/NuCmsNewsData;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsBean;->data:Lcom/nubia/nucms/bean/NuCmsNewsData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
