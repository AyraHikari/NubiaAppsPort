.class public Lcom/nubia/nucms/bean/NuCmsChannelItem;
.super Ljava/lang/Object;
.source "NuCmsChannelItem.java"


# instance fields
.field private c_id:I

.field private c_name:Ljava/lang/String;

.field private pre_subcribe:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelItem;->c_id:I

    return v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelItem;->c_name:Ljava/lang/String;

    return-object v0
.end method

.method public isPreSubscribe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11
    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsChannelItem;->pre_subcribe:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimpleChannel()Z
    .locals 2

    .prologue
    .line 15
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelItem;->pre_subcribe:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsChannelItem;->c_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsChannelItem;->c_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is_subscribe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsChannelItem;->pre_subcribe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
