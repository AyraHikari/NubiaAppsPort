.class public Lcn/nubia/weather/jsonbean/ForecastJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "ForecastJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fa:Ljava/lang/String;

.field private fb:Ljava/lang/String;

.field private fc:Ljava/lang/String;

.field private fd:Ljava/lang/String;

.field private fe:Ljava/lang/String;

.field private ff:Ljava/lang/String;

.field private fg:Ljava/lang/String;

.field private fh:Ljava/lang/String;

.field private fi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getFa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fa:Ljava/lang/String;

    return-object v0
.end method

.method public getFb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fb:Ljava/lang/String;

    return-object v0
.end method

.method public getFc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fc:Ljava/lang/String;

    return-object v0
.end method

.method public getFd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fd:Ljava/lang/String;

    return-object v0
.end method

.method public getFe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fe:Ljava/lang/String;

    return-object v0
.end method

.method public getFf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->ff:Ljava/lang/String;

    return-object v0
.end method

.method public getFg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fg:Ljava/lang/String;

    return-object v0
.end method

.method public getFh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fh:Ljava/lang/String;

    return-object v0
.end method

.method public getFi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fi:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fd:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFa(Ljava/lang/String;)V
    .locals 0
    .param p1, "fa"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fa:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setFb(Ljava/lang/String;)V
    .locals 0
    .param p1, "fb"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fb:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFc(Ljava/lang/String;)V
    .locals 0
    .param p1, "fc"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fc:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFd(Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fd:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setFe(Ljava/lang/String;)V
    .locals 0
    .param p1, "fe"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fe:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setFf(Ljava/lang/String;)V
    .locals 0
    .param p1, "ff"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->ff:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFg(Ljava/lang/String;)V
    .locals 0
    .param p1, "fg"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fg:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setFh(Ljava/lang/String;)V
    .locals 0
    .param p1, "fh"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fh:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFi(Ljava/lang/String;)V
    .locals 0
    .param p1, "fi"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fi:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForecastJsonBean [fa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->ff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->fi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
