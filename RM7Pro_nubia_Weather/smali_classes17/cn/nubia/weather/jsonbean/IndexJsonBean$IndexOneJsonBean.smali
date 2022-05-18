.class public Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;
.super Ljava/lang/Object;
.source "IndexJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/IndexJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexOneJsonBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private i1:Ljava/lang/String;

.field private i2:Ljava/lang/String;

.field private i3:Ljava/lang/String;

.field private i4:Ljava/lang/String;

.field private i5:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/weather/jsonbean/IndexJsonBean;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/jsonbean/IndexJsonBean;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/jsonbean/IndexJsonBean;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->this$0:Lcn/nubia/weather/jsonbean/IndexJsonBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getI1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i1:Ljava/lang/String;

    return-object v0
.end method

.method public getI2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i2:Ljava/lang/String;

    return-object v0
.end method

.method public getI3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i3:Ljava/lang/String;

    return-object v0
.end method

.method public getI4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i4:Ljava/lang/String;

    return-object v0
.end method

.method public getI5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i5:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i1:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i4:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setI1(Ljava/lang/String;)V
    .locals 0
    .param p1, "i1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i1:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setI2(Ljava/lang/String;)V
    .locals 0
    .param p1, "i2"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i2:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setI3(Ljava/lang/String;)V
    .locals 0
    .param p1, "i3"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i3:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setI4(Ljava/lang/String;)V
    .locals 0
    .param p1, "i4"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i4:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setI5(Ljava/lang/String;)V
    .locals 0
    .param p1, "i5"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i5:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexOneJsonBean [i1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", i2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", i3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", i4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", i5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->i5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
