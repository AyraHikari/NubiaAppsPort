.class public final enum Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 37
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v5, "TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v9, "BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v11, "BASELINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v13, "CENTER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v15, "CENTER_X"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v14, "CENTER_Y"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/16 v14, 0x9

    new-array v14, v14, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .locals 1

    .line 37
    const-class v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .locals 1

    .line 37
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method
