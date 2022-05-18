.class public final enum Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
.super Ljava/lang/Enum;
.source "ELocalDataOptType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

.field public static final enum DB:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

.field public static final enum FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

.field public static final enum SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;


# instance fields
.field public sharePrefGetValueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public sharedPrefFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    new-instance v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    const-string v1, "DB"

    invoke-direct {v0, v1, v3}, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->DB:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    new-instance v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    const-string v1, "SHAREDPREF"

    invoke-direct {v0, v1, v4}, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    sget-object v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->DB:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->$VALUES:[Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->$VALUES:[Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    invoke-virtual {v0}, [Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    return-object v0
.end method
