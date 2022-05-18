.class public Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceBean;
.super Lcom/nubia/nucms/bean/NuCmsStatusBean;
.source "NuCmsSingleSceneServiceBean.java"


# instance fields
.field private data:Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceBean;->data:Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;

    return-object v0
.end method
