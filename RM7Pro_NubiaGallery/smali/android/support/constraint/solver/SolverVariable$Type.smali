.class public final enum Landroid/support/constraint/solver/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum CONSTANT:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 68
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 72
    new-instance v1, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->CONSTANT:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 76
    new-instance v3, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v5, "SLACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 80
    new-instance v5, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 84
    new-instance v7, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/support/constraint/solver/SolverVariable$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 64
    sput-object v9, Landroid/support/constraint/solver/SolverVariable$Type;->$VALUES:[Landroid/support/constraint/solver/SolverVariable$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable$Type;
    .locals 1

    .line 64
    const-class v0, Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/SolverVariable$Type;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/solver/SolverVariable$Type;
    .locals 1

    .line 64
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->$VALUES:[Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable$Type;

    return-object v0
.end method
