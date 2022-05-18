.class public Lcom/nubia/nucms/bean/NuCmsStatusBean;
.super Ljava/lang/Object;
.source "NuCmsStatusBean.java"


# instance fields
.field private code:Ljava/lang/String;

.field private errors:Ljava/lang/Object;

.field private field_errors:Ljava/lang/Object;

.field private message:Ljava/lang/Object;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->errors:Ljava/lang/Object;

    return-object v0
.end method

.method public getFieldErrors()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->field_errors:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 11
    const-string v0, "0"

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nresult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nfield_errors:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->field_errors:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nerrors:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsStatusBean;->errors:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
