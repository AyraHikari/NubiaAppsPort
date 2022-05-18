.class public final enum Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/NeuralNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Runtime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum AIP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v3, "GPU"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    new-instance v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v5, "DSP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    new-instance v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v7, "GPU_FLOAT16"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    new-instance v7, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v9, "AIP"

    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-direct {v7, v9, v10, v11}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->AIP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    new-array v9, v11, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 1

    const-class v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-object p0
.end method

.method public static values()[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-object v0
.end method
