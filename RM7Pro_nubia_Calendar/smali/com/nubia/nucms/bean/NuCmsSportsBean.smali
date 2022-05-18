.class public Lcom/nubia/nucms/bean/NuCmsSportsBean;
.super Lcom/nubia/nucms/bean/NuCmsStatusBean;
.source "NuCmsSportsBean.java"


# instance fields
.field private data:Lcom/nubia/nucms/bean/NuCmsSportsData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/nubia/nucms/bean/NuCmsSportsData;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsBean;->data:Lcom/nubia/nucms/bean/NuCmsSportsData;

    return-object v0
.end method

.method public setData(Lcom/nubia/nucms/bean/NuCmsSportsData;)V
    .locals 0
    .param p1, "d"    # Lcom/nubia/nucms/bean/NuCmsSportsData;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsBean;->data:Lcom/nubia/nucms/bean/NuCmsSportsData;

    .line 12
    return-void
.end method
