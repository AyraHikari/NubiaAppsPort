.class public Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;
.super Ljava/lang/Object;
.source "NuCmsHttpStatus.java"


# instance fields
.field private chiDes:Ljava/lang/String;

.field private code:I

.field private des:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "des"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->code:I

    .line 244
    iput-object p2, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->des:Ljava/lang/String;

    .line 245
    return-void
.end method

.method private getChinese()Ljava/lang/String;
    .locals 5

    .prologue
    .line 269
    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->chiDes:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->chiDes:Ljava/lang/String;

    .line 280
    :goto_0
    return-object v3

    .line 273
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATUS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "fieldName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 276
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    const-class v3, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 280
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->chiDes:Ljava/lang/String;

    goto :goto_0

    .line 277
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->des:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionInChinese()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->des:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->getChinese()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->code:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->code:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
