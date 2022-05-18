.class final enum Lcom/android/calculator2/Calculator$CalculatorState;
.super Ljava/lang/Enum;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CalculatorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/calculator2/Calculator$CalculatorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calculator2/Calculator$CalculatorState;

.field public static final enum ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

.field public static final enum ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

.field public static final enum EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

.field public static final enum INIT:Lcom/android/calculator2/Calculator$CalculatorState;

.field public static final enum INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

.field public static final enum INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

.field public static final enum RESULT:Lcom/android/calculator2/Calculator$CalculatorState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 213
    new-instance v0, Lcom/android/calculator2/Calculator$CalculatorState;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/Calculator$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 215
    new-instance v0, Lcom/android/calculator2/Calculator$CalculatorState;

    const-string v1, "EVALUATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/calculator2/Calculator$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 217
    new-instance v0, Lcom/android/calculator2/Calculator$CalculatorState;

    const-string v1, "INIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/calculator2/Calculator$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 219
    new-instance v0, Lcom/android/calculator2/Calculator$CalculatorState;

    const-string v1, "INIT_FOR_RESULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/calculator2/Calculator$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 221
    new-instance v0, Lcom/android/calculator2/Calculator$CalculatorState;

    const-string v1, "ANIMATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/calculator2/Calculator$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 222
    new-instance v0, Lcom/android/calculator2/Calculator$CalculatorState;

    const-string v1, "RESULT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/calculator2/Calculator$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 226
    new-instance v0, Lcom/android/calculator2/Calculator$CalculatorState;

    const-string v1, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/calculator2/Calculator$CalculatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 v0, 0x7

    .line 212
    new-array v0, v0, [Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->$VALUES:[Lcom/android/calculator2/Calculator$CalculatorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/calculator2/Calculator$CalculatorState;
    .locals 1

    .line 212
    const-class v0, Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Calculator$CalculatorState;

    return-object p0
.end method

.method public static values()[Lcom/android/calculator2/Calculator$CalculatorState;
    .locals 1

    .line 212
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->$VALUES:[Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-virtual {v0}, [Lcom/android/calculator2/Calculator$CalculatorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calculator2/Calculator$CalculatorState;

    return-object v0
.end method
