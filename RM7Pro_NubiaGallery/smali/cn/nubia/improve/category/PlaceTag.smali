.class public Lcn/nubia/improve/category/PlaceTag;
.super Ljava/lang/Object;
.source "PlaceTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/category/PlaceTag$Param;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaceTag"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mCityClassification:Ljava/lang/String;

.field private mParam:Lcn/nubia/improve/category/PlaceTag$Param;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/improve/category/PlaceTag;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityClassification()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/nubia/improve/category/PlaceTag;->mCityClassification:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/nubia/improve/category/PlaceTag;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/improve/category/PlaceTag;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/improve/category/PlaceTag;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Lcn/nubia/improve/category/PlaceTag$Param;
    .locals 1

    .line 128
    iget-object v0, p0, Lcn/nubia/improve/category/PlaceTag;->mParam:Lcn/nubia/improve/category/PlaceTag$Param;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/improve/category/PlaceTag;->city:Ljava/lang/String;

    return-void
.end method

.method public setCityClassification(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/improve/category/PlaceTag;->mCityClassification:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/improve/category/PlaceTag;->country:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/improve/category/PlaceTag;->district:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/improve/category/PlaceTag;->language:Ljava/lang/String;

    return-void
.end method

.method public setParam(Lcn/nubia/improve/category/PlaceTag$Param;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/improve/category/PlaceTag;->mParam:Lcn/nubia/improve/category/PlaceTag$Param;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaceTag [country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/PlaceTag;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/PlaceTag;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/PlaceTag;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/PlaceTag;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_classification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/PlaceTag;->mCityClassification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/PlaceTag;->mParam:Lcn/nubia/improve/category/PlaceTag$Param;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
