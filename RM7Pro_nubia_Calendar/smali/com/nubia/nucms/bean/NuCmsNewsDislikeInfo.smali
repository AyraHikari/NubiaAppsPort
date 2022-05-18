.class public Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;
.super Ljava/lang/Object;
.source "NuCmsNewsDislikeInfo.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->msg:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->type:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->code:I

    .line 23
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->msg:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->type:I

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
