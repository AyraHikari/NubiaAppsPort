.class public Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;
.super Ljava/lang/Object;
.source "AlarmJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/AlarmJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlarmInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/jsonbean/AlarmJsonBean;

.field private w1:Ljava/lang/String;

.field private w10:Ljava/lang/String;

.field private w11:Ljava/lang/String;

.field private w2:Ljava/lang/String;

.field private w3:Ljava/lang/String;

.field private w4:Ljava/lang/String;

.field private w5:Ljava/lang/String;

.field private w6:Ljava/lang/String;

.field private w7:Ljava/lang/String;

.field private w8:Ljava/lang/String;

.field private w9:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/jsonbean/AlarmJsonBean;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/jsonbean/AlarmJsonBean;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->this$0:Lcn/nubia/weather/jsonbean/AlarmJsonBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getW1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w1:Ljava/lang/String;

    return-object v0
.end method

.method public getW10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w10:Ljava/lang/String;

    return-object v0
.end method

.method public getW11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w11:Ljava/lang/String;

    return-object v0
.end method

.method public getW2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w2:Ljava/lang/String;

    return-object v0
.end method

.method public getW3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w3:Ljava/lang/String;

    return-object v0
.end method

.method public getW4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w4:Ljava/lang/String;

    return-object v0
.end method

.method public getW5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w5:Ljava/lang/String;

    return-object v0
.end method

.method public getW6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w6:Ljava/lang/String;

    return-object v0
.end method

.method public getW7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w7:Ljava/lang/String;

    return-object v0
.end method

.method public getW8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w8:Ljava/lang/String;

    return-object v0
.end method

.method public getW9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w9:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w5:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w7:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w8:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w10:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setW1(Ljava/lang/String;)V
    .locals 0
    .param p1, "w1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w1:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setW10(Ljava/lang/String;)V
    .locals 0
    .param p1, "w10"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w10:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setW11(Ljava/lang/String;)V
    .locals 0
    .param p1, "w11"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w11:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setW2(Ljava/lang/String;)V
    .locals 0
    .param p1, "w2"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w2:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setW3(Ljava/lang/String;)V
    .locals 0
    .param p1, "w3"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w3:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setW4(Ljava/lang/String;)V
    .locals 0
    .param p1, "w4"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w4:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setW5(Ljava/lang/String;)V
    .locals 0
    .param p1, "w5"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w5:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setW6(Ljava/lang/String;)V
    .locals 0
    .param p1, "w6"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w6:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setW7(Ljava/lang/String;)V
    .locals 0
    .param p1, "w7"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w7:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setW8(Ljava/lang/String;)V
    .locals 0
    .param p1, "w8"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w8:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setW9(Ljava/lang/String;)V
    .locals 0
    .param p1, "w9"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w9:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmInfo [w1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w10:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->w11:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
