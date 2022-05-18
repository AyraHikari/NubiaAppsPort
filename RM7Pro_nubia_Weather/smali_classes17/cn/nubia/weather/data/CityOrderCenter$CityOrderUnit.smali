.class public Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
.super Ljava/lang/Object;
.source "CityOrderCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/CityOrderCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CityOrderUnit"
.end annotation


# instance fields
.field private mAreaID:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcn/nubia/weather/data/CityOrderCenter;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/data/CityOrderCenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcn/nubia/weather/data/CityOrderCenter;
    .param p2, "mAreaID"    # Ljava/lang/String;
    .param p3, "mType"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->mAreaID:Ljava/lang/String;

    .line 163
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->mType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CityOrderCenter"

    const-string v2, "Wrong CityOrderUnit Type"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->mType:I

    goto :goto_0
.end method


# virtual methods
.method public getmAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->mAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->mType:I

    return v0
.end method
