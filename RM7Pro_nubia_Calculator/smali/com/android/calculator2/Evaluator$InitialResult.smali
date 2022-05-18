.class Lcom/android/calculator2/Evaluator$InitialResult;
.super Ljava/lang/Object;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitialResult"
.end annotation


# instance fields
.field public final errorResourceId:I

.field public final initDisplayOffset:I

.field public final newResultString:Ljava/lang/String;

.field public final newResultStringOffset:I

.field public final val:Lcom/android/calculator2/UnifiedReal;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput p1, p0, Lcom/android/calculator2/Evaluator$InitialResult;->errorResourceId:I

    .line 431
    sget-object p1, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    iput-object p1, p0, Lcom/android/calculator2/Evaluator$InitialResult;->val:Lcom/android/calculator2/UnifiedReal;

    const-string p1, "BAD"

    .line 432
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$InitialResult;->newResultString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 433
    iput p1, p0, Lcom/android/calculator2/Evaluator$InitialResult;->newResultStringOffset:I

    .line 434
    iput p1, p0, Lcom/android/calculator2/Evaluator$InitialResult;->initDisplayOffset:I

    return-void
.end method

.method constructor <init>(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;II)V
    .locals 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 423
    iput v0, p0, Lcom/android/calculator2/Evaluator$InitialResult;->errorResourceId:I

    .line 424
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$InitialResult;->val:Lcom/android/calculator2/UnifiedReal;

    .line 425
    iput-object p2, p0, Lcom/android/calculator2/Evaluator$InitialResult;->newResultString:Ljava/lang/String;

    .line 426
    iput p3, p0, Lcom/android/calculator2/Evaluator$InitialResult;->newResultStringOffset:I

    .line 427
    iput p4, p0, Lcom/android/calculator2/Evaluator$InitialResult;->initDisplayOffset:I

    return-void
.end method


# virtual methods
.method isError()Z
    .locals 1

    .line 437
    iget p0, p0, Lcom/android/calculator2/Evaluator$InitialResult;->errorResourceId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
