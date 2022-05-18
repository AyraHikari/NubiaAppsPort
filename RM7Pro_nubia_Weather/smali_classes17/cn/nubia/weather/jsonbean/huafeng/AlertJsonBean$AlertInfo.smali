.class public Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
.super Ljava/lang/Object;
.source "AlertJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;,
        Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Color;,
        Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Description;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public AlertID:Ljava/lang/String;

.field public Area:[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;

.field public Category:Ljava/lang/String;

.field public Class:Ljava/lang/String;

.field public Color:Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Color;

.field public CountryCode:Ljava/lang/String;

.field public Description:Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Description;

.field public Disclaimer:Ljava/lang/String;

.field public Level:Ljava/lang/String;

.field public Link:Ljava/lang/String;

.field public MobileLink:Ljava/lang/String;

.field public Priority:Ljava/lang/String;

.field public Source:Ljava/lang/String;

.field public SourceId:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public TypeID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Area:[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Area:[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Area:[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Area:[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;->StartTime:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v0, v1

    .line 57
    .local v0, "isTimeValid":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->AlertID:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Level:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Type:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isTimeValid":Z
    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    .restart local v0    # "isTimeValid":Z
    :cond_1
    move v1, v2

    .line 57
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlertInfo [CountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->CountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AlertID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->AlertID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Description:Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Description;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Priority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TypeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->TypeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Class:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Color:Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->SourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Disclaimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Area:[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MobileLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->MobileLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
