.class final enum Lcom/android/calculator2/CalculatorService$CalculatorState;
.super Ljava/lang/Enum;
.source "CalculatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CalculatorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/calculator2/CalculatorService$CalculatorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calculator2/CalculatorService$CalculatorState;

.field public static final enum ERROR:Lcom/android/calculator2/CalculatorService$CalculatorState;

.field public static final enum EVALUATE:Lcom/android/calculator2/CalculatorService$CalculatorState;

.field public static final enum INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

.field public static final enum RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 124
    new-instance v0, Lcom/android/calculator2/CalculatorService$CalculatorState;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/CalculatorService$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    new-instance v0, Lcom/android/calculator2/CalculatorService$CalculatorState;

    const-string v1, "EVALUATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/calculator2/CalculatorService$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->EVALUATE:Lcom/android/calculator2/CalculatorService$CalculatorState;

    new-instance v0, Lcom/android/calculator2/CalculatorService$CalculatorState;

    const-string v1, "RESULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/calculator2/CalculatorService$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    new-instance v0, Lcom/android/calculator2/CalculatorService$CalculatorState;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/calculator2/CalculatorService$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->ERROR:Lcom/android/calculator2/CalculatorService$CalculatorState;

    const/4 v0, 0x4

    .line 123
    new-array v0, v0, [Lcom/android/calculator2/CalculatorService$CalculatorState;

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->EVALUATE:Lcom/android/calculator2/CalculatorService$CalculatorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->ERROR:Lcom/android/calculator2/CalculatorService$CalculatorState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->$VALUES:[Lcom/android/calculator2/CalculatorService$CalculatorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/calculator2/CalculatorService$CalculatorState;
    .locals 1

    .line 123
    const-class v0, Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorService$CalculatorState;

    return-object p0
.end method

.method public static values()[Lcom/android/calculator2/CalculatorService$CalculatorState;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/calculator2/CalculatorService$CalculatorState;->$VALUES:[Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-virtual {v0}, [Lcom/android/calculator2/CalculatorService$CalculatorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calculator2/CalculatorService$CalculatorState;

    return-object v0
.end method
