.class public Lcn/nubia/weather/jsonbean/ObserveJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "ObserveJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private l:Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getL()Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->l:Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    return-object v0
.end method

.method public setL(Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    .prologue
    .line 15
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->l:Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObserveJsonBean [l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ObserveJsonBean;->l:Lcn/nubia/weather/jsonbean/ObserveJsonBean$ObserveInfoJsonBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
