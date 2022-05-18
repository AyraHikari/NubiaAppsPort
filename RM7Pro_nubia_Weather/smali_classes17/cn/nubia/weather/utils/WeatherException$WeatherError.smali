.class public final enum Lcn/nubia/weather/utils/WeatherException$WeatherError;
.super Ljava/lang/Enum;
.source "WeatherException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/utils/WeatherException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WeatherError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/weather/utils/WeatherException$WeatherError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/weather/utils/WeatherException$WeatherError;

.field public static final enum interrupted:Lcn/nubia/weather/utils/WeatherException$WeatherError;

.field public static final enum noneNetwork:Lcn/nubia/weather/utils/WeatherException$WeatherError;

.field public static final enum other:Lcn/nubia/weather/utils/WeatherException$WeatherError;

.field public static final enum timeout:Lcn/nubia/weather/utils/WeatherException$WeatherError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;

    const-string v1, "noneNetwork"

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/utils/WeatherException$WeatherError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;->noneNetwork:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    new-instance v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;

    const-string v1, "timeout"

    invoke-direct {v0, v1, v3}, Lcn/nubia/weather/utils/WeatherException$WeatherError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;->timeout:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    new-instance v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;

    const-string v1, "interrupted"

    invoke-direct {v0, v1, v4}, Lcn/nubia/weather/utils/WeatherException$WeatherError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;->interrupted:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    new-instance v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;

    const-string v1, "other"

    invoke-direct {v0, v1, v5}, Lcn/nubia/weather/utils/WeatherException$WeatherError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;->other:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/nubia/weather/utils/WeatherException$WeatherError;

    sget-object v1, Lcn/nubia/weather/utils/WeatherException$WeatherError;->noneNetwork:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/weather/utils/WeatherException$WeatherError;->timeout:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/weather/utils/WeatherException$WeatherError;->interrupted:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/weather/utils/WeatherException$WeatherError;->other:Lcn/nubia/weather/utils/WeatherException$WeatherError;

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;->$VALUES:[Lcn/nubia/weather/utils/WeatherException$WeatherError;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/weather/utils/WeatherException$WeatherError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;

    return-object v0
.end method

.method public static values()[Lcn/nubia/weather/utils/WeatherException$WeatherError;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcn/nubia/weather/utils/WeatherException$WeatherError;->$VALUES:[Lcn/nubia/weather/utils/WeatherException$WeatherError;

    invoke-virtual {v0}, [Lcn/nubia/weather/utils/WeatherException$WeatherError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/weather/utils/WeatherException$WeatherError;

    return-object v0
.end method
