.class public Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;
.super Ljava/lang/Object;
.source "ObserveJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/ObserveJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObserveInfoJsonBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private l1:Ljava/lang/String;

.field private l10:Ljava/lang/String;

.field private l11:Ljava/lang/String;

.field private l12:Ljava/lang/String;

.field private l2:Ljava/lang/String;

.field private l3:Ljava/lang/String;

.field private l4:Ljava/lang/String;

.field private l5:Ljava/lang/String;

.field private l6:Ljava/lang/String;

.field private l7:Ljava/lang/String;

.field private l9:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/weather/jsonbean/ObserveJsonBean;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/jsonbean/ObserveJsonBean;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/jsonbean/ObserveJsonBean;

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->this$0:Lcn/nubia/weather/jsonbean/ObserveJsonBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getL1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l1:Ljava/lang/String;

    return-object v0
.end method

.method public getL10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l10:Ljava/lang/String;

    return-object v0
.end method

.method public getL11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l11:Ljava/lang/String;

    return-object v0
.end method

.method public getL12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l12:Ljava/lang/String;

    return-object v0
.end method

.method public getL2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l2:Ljava/lang/String;

    return-object v0
.end method

.method public getL3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l3:Ljava/lang/String;

    return-object v0
.end method

.method public getL4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l4:Ljava/lang/String;

    return-object v0
.end method

.method public getL5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l5:Ljava/lang/String;

    return-object v0
.end method

.method public getL6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l6:Ljava/lang/String;

    return-object v0
.end method

.method public getL7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l7:Ljava/lang/String;

    return-object v0
.end method

.method public getL9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l9:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l1:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l2:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l3:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l4:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l5:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l7:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setL1(Ljava/lang/String;)V
    .locals 0
    .param p1, "l1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l1:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setL10(Ljava/lang/String;)V
    .locals 0
    .param p1, "l10"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l10:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setL11(Ljava/lang/String;)V
    .locals 0
    .param p1, "l11"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l11:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setL12(Ljava/lang/String;)V
    .locals 0
    .param p1, "l12"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l12:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setL2(Ljava/lang/String;)V
    .locals 0
    .param p1, "l2"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l2:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setL3(Ljava/lang/String;)V
    .locals 0
    .param p1, "l3"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l3:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setL4(Ljava/lang/String;)V
    .locals 0
    .param p1, "l4"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l4:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setL5(Ljava/lang/String;)V
    .locals 0
    .param p1, "l5"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l5:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setL6(Ljava/lang/String;)V
    .locals 0
    .param p1, "l6"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l6:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setL7(Ljava/lang/String;)V
    .locals 0
    .param p1, "l7"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l7:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setL9(Ljava/lang/String;)V
    .locals 0
    .param p1, "l9"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l9:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObserveInfoJsonBean [l1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l10:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l11:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;->l12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
