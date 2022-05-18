.class public final enum Lcn/nubia/weather/app/Constant$OperationType;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/app/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/weather/app/Constant$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/weather/app/Constant$OperationType;

.field public static final enum ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

.field public static final enum PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

.field public static final enum PULL:Lcn/nubia/weather/app/Constant$OperationType;

.field public static final enum SEARCH:Lcn/nubia/weather/app/Constant$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcn/nubia/weather/app/Constant$OperationType;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/app/Constant$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    new-instance v0, Lcn/nubia/weather/app/Constant$OperationType;

    const-string v1, "PASSIVE"

    invoke-direct {v0, v1, v3}, Lcn/nubia/weather/app/Constant$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    new-instance v0, Lcn/nubia/weather/app/Constant$OperationType;

    const-string v1, "PULL"

    invoke-direct {v0, v1, v4}, Lcn/nubia/weather/app/Constant$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    new-instance v0, Lcn/nubia/weather/app/Constant$OperationType;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v5}, Lcn/nubia/weather/app/Constant$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/app/Constant$OperationType;->SEARCH:Lcn/nubia/weather/app/Constant$OperationType;

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/nubia/weather/app/Constant$OperationType;

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->SEARCH:Lcn/nubia/weather/app/Constant$OperationType;

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/weather/app/Constant$OperationType;->$VALUES:[Lcn/nubia/weather/app/Constant$OperationType;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/weather/app/Constant$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/app/Constant$OperationType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/weather/app/Constant$OperationType;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->$VALUES:[Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v0}, [Lcn/nubia/weather/app/Constant$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/weather/app/Constant$OperationType;

    return-object v0
.end method
