.class public final enum Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
.super Ljava/lang/Enum;
.source "ConstraintHorizontalLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum BEGIN:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum END:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum LEFT:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum MIDDLE:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum RIGHT:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum TOP:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum VERTICAL_MIDDLE:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BEGIN:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v1, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->END:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v5, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v7, "TOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->TOP:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v9, "VERTICAL_MIDDLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->VERTICAL_MIDDLE:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v9, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v11, "BOTTOM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v11, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v13, "LEFT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v13, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v15, "RIGHT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const/16 v15, 0x8

    new-array v15, v15, [Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 26
    sput-object v15, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    .locals 1

    .line 26
    const-class v0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    .locals 1

    .line 26
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-object v0
.end method
