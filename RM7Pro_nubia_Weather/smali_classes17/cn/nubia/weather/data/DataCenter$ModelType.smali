.class public final enum Lcn/nubia/weather/data/DataCenter$ModelType;
.super Ljava/lang/Enum;
.source "DataCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/DataCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/weather/data/DataCenter$ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum ALARM:Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum AQI:Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum FORECAST5D:Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum HOURFC:Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum INDEX:Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum OBSERVE:Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum PASTDAY:Lcn/nubia/weather/data/DataCenter$ModelType;

.field public static final enum WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 916
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "ALARM"

    invoke-direct {v0, v1, v3}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->ALARM:Lcn/nubia/weather/data/DataCenter$ModelType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "FORECAST5D"

    invoke-direct {v0, v1, v4}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->FORECAST5D:Lcn/nubia/weather/data/DataCenter$ModelType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "AQI"

    invoke-direct {v0, v1, v5}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->AQI:Lcn/nubia/weather/data/DataCenter$ModelType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "HOURFC"

    invoke-direct {v0, v1, v6}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->HOURFC:Lcn/nubia/weather/data/DataCenter$ModelType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "INDEX"

    invoke-direct {v0, v1, v7}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->INDEX:Lcn/nubia/weather/data/DataCenter$ModelType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "PASTDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->PASTDAY:Lcn/nubia/weather/data/DataCenter$ModelType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "OBSERVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->OBSERVE:Lcn/nubia/weather/data/DataCenter$ModelType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    const-string v1, "WEATHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/data/DataCenter$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 915
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/nubia/weather/data/DataCenter$ModelType;

    sget-object v1, Lcn/nubia/weather/data/DataCenter$ModelType;->ALARM:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/weather/data/DataCenter$ModelType;->FORECAST5D:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/weather/data/DataCenter$ModelType;->AQI:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/weather/data/DataCenter$ModelType;->HOURFC:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/weather/data/DataCenter$ModelType;->INDEX:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/weather/data/DataCenter$ModelType;->PASTDAY:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/nubia/weather/data/DataCenter$ModelType;->OBSERVE:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->$VALUES:[Lcn/nubia/weather/data/DataCenter$ModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 915
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/weather/data/DataCenter$ModelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 915
    const-class v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/data/DataCenter$ModelType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/weather/data/DataCenter$ModelType;
    .locals 1

    .prologue
    .line 915
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->$VALUES:[Lcn/nubia/weather/data/DataCenter$ModelType;

    invoke-virtual {v0}, [Lcn/nubia/weather/data/DataCenter$ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/weather/data/DataCenter$ModelType;

    return-object v0
.end method
