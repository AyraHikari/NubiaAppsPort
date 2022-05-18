.class public Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;
.super Ljava/lang/Object;
.source "HourfcJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/HourfcJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HourJsonBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ja:Ljava/lang/String;

.field private jb:Ljava/lang/String;

.field private jc:Ljava/lang/String;

.field private jd:Ljava/lang/String;

.field private je:Ljava/lang/String;

.field private jf:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/weather/jsonbean/HourfcJsonBean;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/jsonbean/HourfcJsonBean;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/jsonbean/HourfcJsonBean;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->this$0:Lcn/nubia/weather/jsonbean/HourfcJsonBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->ja:Ljava/lang/String;

    return-object v0
.end method

.method public getJb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jb:Ljava/lang/String;

    return-object v0
.end method

.method public getJc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jc:Ljava/lang/String;

    return-object v0
.end method

.method public getJd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jd:Ljava/lang/String;

    return-object v0
.end method

.method public getJe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->je:Ljava/lang/String;

    return-object v0
.end method

.method public getJf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jf:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->ja:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jf:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setJa(Ljava/lang/String;)V
    .locals 0
    .param p1, "ja"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->ja:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setJb(Ljava/lang/String;)V
    .locals 0
    .param p1, "jb"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jb:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setJc(Ljava/lang/String;)V
    .locals 0
    .param p1, "jc"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jc:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setJd(Ljava/lang/String;)V
    .locals 0
    .param p1, "jd"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jd:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setJe(Ljava/lang/String;)V
    .locals 0
    .param p1, "je"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->je:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setJf(Ljava/lang/String;)V
    .locals 0
    .param p1, "jf"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jf:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HourfcInfo [ja="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->ja:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", je="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->je:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->jf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
