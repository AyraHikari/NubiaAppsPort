.class public Lcom/nubia/nucms/bean/NuCmsChannelBean;
.super Lcom/nubia/nucms/bean/NuCmsStatusBean;
.source "NuCmsChannelBean.java"


# instance fields
.field private data:Lcom/nubia/nucms/bean/NuCmsChannelData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/nubia/nucms/bean/NuCmsChannelData;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelBean;->data:Lcom/nubia/nucms/bean/NuCmsChannelData;

    return-object v0
.end method
