.class public final enum Lcn/nubia/weather/data/DataCenter$OperationType;
.super Ljava/lang/Enum;
.source "DataCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/DataCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/weather/data/DataCenter$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/weather/data/DataCenter$OperationType;

.field public static final enum ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

.field public static final enum CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

.field public static final enum REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

.field public static final enum SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

.field public static final enum UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

.field public static final enum UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 912
    new-instance v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcn/nubia/weather/data/DataCenter$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lcn/nubia/weather/data/DataCenter$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v5}, Lcn/nubia/weather/data/DataCenter$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    const-string v1, "SWTICH"

    invoke-direct {v0, v1, v6}, Lcn/nubia/weather/data/DataCenter$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v7}, Lcn/nubia/weather/data/DataCenter$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    new-instance v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    const-string v1, "UPDATE_LOCATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/data/DataCenter$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    .line 911
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v1, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->$VALUES:[Lcn/nubia/weather/data/DataCenter$OperationType;

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
    .line 911
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/weather/data/DataCenter$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 911
    const-class v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/data/DataCenter$OperationType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/weather/data/DataCenter$OperationType;
    .locals 1

    .prologue
    .line 911
    sget-object v0, Lcn/nubia/weather/data/DataCenter$OperationType;->$VALUES:[Lcn/nubia/weather/data/DataCenter$OperationType;

    invoke-virtual {v0}, [Lcn/nubia/weather/data/DataCenter$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/weather/data/DataCenter$OperationType;

    return-object v0
.end method
