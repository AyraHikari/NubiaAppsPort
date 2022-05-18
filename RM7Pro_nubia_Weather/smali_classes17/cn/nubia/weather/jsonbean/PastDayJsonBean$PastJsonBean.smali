.class public Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;
.super Ljava/lang/Object;
.source "PastDayJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/PastDayJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PastJsonBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private pc:Ljava/lang/String;

.field private pd:Ljava/lang/String;

.field private pj:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/weather/jsonbean/PastDayJsonBean;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/jsonbean/PastDayJsonBean;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/jsonbean/PastDayJsonBean;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->this$0:Lcn/nubia/weather/jsonbean/PastDayJsonBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pc:Ljava/lang/String;

    return-object v0
.end method

.method public getPd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pd:Ljava/lang/String;

    return-object v0
.end method

.method public getPj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pj:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pj:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPc(Ljava/lang/String;)V
    .locals 0
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pd"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pd:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPj(Ljava/lang/String;)V
    .locals 0
    .param p1, "pj"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pj:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PastJsonBean [pc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->pj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
