.class public final enum Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
.super Ljava/lang/Enum;
.source "NeuralNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/NeuralNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExecutionPriorityHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field public static final enum HIGH:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field public static final enum LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field public static final enum NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 82
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 83
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->HIGH:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 84
    new-instance v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const-string v5, "LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 81
    sput-object v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
    .locals 1

    .line 81
    const-class v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-object p0
.end method

.method public static values()[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
    .locals 1

    .line 81
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-object v0
.end method
