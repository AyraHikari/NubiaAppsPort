.class public Landroid/support/constraint/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/LinearSystem$Row;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FULL_DEBUG:Z = false

.field private static POOL_SIZE:I = 0x3e8


# instance fields
.field private TABLE_SIZE:I

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroid/support/constraint/solver/Cache;

.field private mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroid/support/constraint/solver/ArrayRow;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field private tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 54
    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 55
    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 56
    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    new-array v1, v2, [Z

    .line 59
    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v1, 0x1

    .line 61
    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 62
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 63
    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    .line 67
    sget v1, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    new-array v1, v1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    new-array v0, v2, [Landroid/support/constraint/solver/ArrayRow;

    .line 70
    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    new-array v0, v2, [Landroid/support/constraint/solver/ArrayRow;

    .line 73
    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 74
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 75
    new-instance v0, Landroid/support/constraint/solver/Cache;

    invoke-direct {v0}, Landroid/support/constraint/solver/Cache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    .line 76
    new-instance v1, Landroid/support/constraint/solver/GoalRow;

    invoke-direct {v1, v0}, Landroid/support/constraint/solver/GoalRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    return-void
.end method

.method private acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;
    .locals 2

    .line 273
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v0}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Landroid/support/constraint/solver/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/SolverVariable;->setType(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 279
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/SolverVariable;->setType(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 281
    :goto_0
    iget p1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    sget p2, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 282
    sput p2, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    .line 283
    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 285
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget p2, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private addError(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, p0, v0}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;

    return-void
.end method

.method private addRow(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 5

    .line 505
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 508
    :cond_0
    iget-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 511
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    .line 512
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 513
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 515
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v0, v0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-lez v0, :cond_5

    .line 517
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v1

    if-ge v2, v0, :cond_2

    .line 518
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 523
    iget-object v4, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_5

    .line 526
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_4

    goto :goto_3

    .line 530
    :cond_4
    iget-object v4, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v3, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 531
    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 534
    :cond_5
    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    check-cast p1, Landroid/support/constraint/solver/GoalRow;

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method private addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;II)V

    return-void
.end method

.method private computeValues()V
    .locals 3

    const/4 v0, 0x0

    .line 820
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_0

    .line 821
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 822
    iget-object v2, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v1, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iput v1, v2, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 9

    .line 1264
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 1265
    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/solver/ArrayRow;->createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    if-eqz p8, :cond_0

    const/4 v0, 0x4

    move-object v1, p0

    .line 1268
    invoke-virtual {v8, p0, v0}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;

    :cond_0
    return-object v8
.end method

.method public static createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 1199
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addError(Landroid/support/constraint/solver/ArrayRow;)V

    .line 1201
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object p0

    return-object p0
.end method

.method public static createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 1

    .line 1168
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1169
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 1171
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    :cond_0
    return-object v0
.end method

.method public static createRowGreaterThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 1209
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 1210
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 1211
    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    if-eqz p4, :cond_0

    .line 1213
    iget-object p1, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1214
    invoke-direct {p0, v1, p1}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    :cond_0
    return-object v1
.end method

.method public static createRowLowerThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 1235
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 1236
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 1237
    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    if-eqz p4, :cond_0

    .line 1239
    iget-object p1, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1240
    invoke-direct {p0, v1, p1}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    :cond_0
    return-object v1
.end method

.method private createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 2

    .line 237
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    .line 238
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    :cond_0
    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p2, v0}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p2

    .line 241
    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 243
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 244
    iput v0, p2, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 245
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 248
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method private displayRows()V
    .locals 4

    .line 832
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    const-string v0, ""

    const/4 v1, 0x0

    .line 834
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_0

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private displaySolverVariables()V
    .locals 2

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display Rows ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enforceBFS(Landroid/support/constraint/solver/LinearSystem$Row;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 697
    :goto_0
    iget v3, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 698
    iget-object v3, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 699
    iget-object v3, v3, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v6, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v3, v6, :cond_0

    goto :goto_1

    .line 702
    :cond_0
    iget-object v3, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_e

    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    move v9, v7

    move v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 729
    :goto_4
    iget v12, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v8, v12, :cond_a

    .line 730
    iget-object v12, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v12, v12, v8

    .line 731
    iget-object v13, v12, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 732
    iget-object v13, v13, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v14, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v13, v14, :cond_3

    goto :goto_8

    .line 737
    :cond_3
    iget v13, v12, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_9

    const/4 v13, 0x1

    .line 742
    :goto_5
    iget v14, v0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v13, v14, :cond_9

    .line 743
    iget-object v14, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v14, v14, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v14, v14, v13

    .line 744
    iget-object v15, v12, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v15

    cmpg-float v16, v15, v4

    if-gtz v16, :cond_4

    goto :goto_7

    :cond_4
    const/4 v1, 0x0

    :goto_6
    const/4 v5, 0x7

    if-ge v1, v5, :cond_8

    .line 752
    iget-object v5, v14, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v5, v5, v1

    div-float/2addr v5, v15

    cmpg-float v17, v5, v6

    if-gez v17, :cond_5

    if-eq v1, v11, :cond_6

    :cond_5
    if-le v1, v11, :cond_7

    :cond_6
    move v11, v1

    move v6, v5

    move v9, v8

    move v10, v13

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    if-eq v9, v7, :cond_c

    .line 766
    iget-object v1, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v9

    .line 771
    iget-object v5, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v7, v5, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 772
    iget-object v5, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v10

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 773
    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 774
    iget-object v5, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v9, v5, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v5, 0x0

    .line 776
    :goto_9
    iget v6, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v5, v6, :cond_b

    .line 777
    iget-object v6, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 780
    :cond_b
    move-object/from16 v1, p1

    check-cast v1, Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v3, 0x0

    :cond_e
    const/4 v1, 0x0

    .line 799
    :goto_a
    iget v2, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_11

    .line 800
    iget-object v2, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 801
    iget-object v2, v2, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v5, :cond_f

    goto :goto_b

    .line 804
    :cond_f
    iget-object v2, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_10

    goto :goto_c

    :cond_10
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    :goto_c
    return v3
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 3

    mul-int/lit8 p1, p1, 0x4

    .line 928
    div-int/lit16 v0, p1, 0x400

    div-int/lit16 v1, v0, 0x400

    const-string v2, ""

    if-lez v1, :cond_0

    .line 930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Mb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez v0, :cond_1

    .line 934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Kb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 936
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "LOW"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "MEDIUM"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "HIGH"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "HIGHEST"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "EQUALITY"

    return-object p1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    const-string p1, "FIXED"

    return-object p1

    :cond_5
    const-string p1, "NONE"

    return-object p1
.end method

.method private increaseTableSize()V
    .locals 3

    .line 97
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 98
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 99
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 100
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 101
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 102
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    return-void
.end method

.method private optimize(Landroid/support/constraint/solver/LinearSystem$Row;Z)I
    .locals 11

    const/4 p2, 0x0

    move v0, p2

    .line 551
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v0, v1, :cond_0

    .line 552
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    aput-boolean p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    move v1, v0

    :goto_1
    if-nez v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    .line 569
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1

    return v1

    .line 573
    :cond_1
    invoke-interface {p1}, Landroid/support/constraint/solver/LinearSystem$Row;->getKey()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 574
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1}, Landroid/support/constraint/solver/LinearSystem$Row;->getKey()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput-boolean v3, v2, v4

    .line 576
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1, p0, v2}, Landroid/support/constraint/solver/LinearSystem$Row;->getPivotCandidate(Landroid/support/constraint/solver/LinearSystem;[Z)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 582
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v5, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    return v1

    .line 585
    :cond_3
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v5, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput-boolean v3, v4, v5

    :cond_4
    if-eqz v2, :cond_a

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, -0x1

    move v6, p2

    move v7, v5

    .line 606
    :goto_2
    iget v8, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v6, v8, :cond_7

    .line 607
    iget-object v8, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v8, v8, v6

    .line 608
    iget-object v9, v8, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 609
    iget-object v9, v9, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v10, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_5

    goto :goto_3

    .line 614
    :cond_5
    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/ArrayRow;->hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 620
    iget-object v9, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v9, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_6

    .line 622
    iget v8, v8, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    neg-float v8, v8

    div-float/2addr v8, v9

    cmpg-float v9, v8, v4

    if-gez v9, :cond_6

    move v7, v6

    move v4, v8

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-le v7, v5, :cond_9

    .line 637
    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v7

    .line 638
    iget-object v4, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v5, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 639
    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 640
    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 641
    iget-object v2, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v7, v2, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    move v2, p2

    .line 643
    :goto_4
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v2, v4, :cond_8

    .line 644
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 647
    :cond_8
    move-object v2, p1

    check-cast v2, Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_1

    .line 664
    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "we couldn\'t find an equation to pivot upon"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    return v1
.end method

.method private releaseRows()V
    .locals 3

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 110
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 112
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1296
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 1297
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 1298
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 1299
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    .line 1301
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 1302
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 1303
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    .line 1304
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 1307
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 1308
    invoke-virtual/range {v6 .. v11}, Landroid/support/constraint/solver/ArrayRow;->createRowWithAngle(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    .line 1309
    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 1310
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v2

    .line 1311
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    .line 1312
    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/solver/ArrayRow;->createRowWithAngle(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    .line 1313
    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method public addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    .line 1065
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1066
    invoke-virtual/range {v2 .. v9}, Landroid/support/constraint/solver/ArrayRow;->createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 1068
    invoke-virtual {v10, p0, v1}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1070
    :cond_0
    invoke-virtual {p0, v10}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method public addConstraint(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 402
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/2addr v0, v1

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v2, :cond_2

    .line 403
    :cond_1
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 410
    :cond_2
    iget-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 412
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    .line 414
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 419
    :cond_3
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->ensurePositiveConstant()V

    .line 426
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/ArrayRow;->chooseSubject(Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 428
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createExtraVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 429
    iput-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 430
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->addRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 432
    new-instance v3, Landroid/support/constraint/solver/ArrayRow;

    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-direct {v3, v4}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    .line 433
    invoke-interface {v3, p1}, Landroid/support/constraint/solver/LinearSystem$Row;->initFromRow(Landroid/support/constraint/solver/LinearSystem$Row;)V

    .line 434
    invoke-direct {p0, v3, v1}, Landroid/support/constraint/solver/LinearSystem;->optimize(Landroid/support/constraint/solver/LinearSystem$Row;Z)I

    .line 435
    iget v3, v0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    .line 439
    iget-object v3, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-ne v3, v0, :cond_4

    .line 441
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/ArrayRow;->pickPivot(Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 443
    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 444
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    :cond_4
    move v3, v2

    .line 448
    :goto_0
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_5

    .line 449
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v3

    .line 450
    iget-object v4, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 452
    :goto_1
    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v3, :cond_7

    .line 453
    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v0

    if-eq v3, p1, :cond_6

    .line 455
    invoke-virtual {v3, p1}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 461
    :cond_7
    iget-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v0, :cond_c

    .line 462
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 463
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v0, v0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-lez v0, :cond_c

    .line 465
    :goto_2
    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    array-length v4, v3

    if-ge v4, v0, :cond_8

    .line 466
    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    goto :goto_2

    :cond_8
    move v4, v2

    :goto_3
    if-ge v4, v0, :cond_9

    .line 471
    iget-object v5, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v5, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v5, v5, v4

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-ge v2, v0, :cond_c

    .line 474
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_a

    goto :goto_5

    .line 478
    :cond_a
    iget-object v5, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v5, v4, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 479
    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    move v1, v2

    .line 486
    :cond_c
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->hasKeyVariable()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    move v2, v1

    :cond_e
    if-nez v2, :cond_f

    .line 500
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->addRow(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_f
    return-void
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;
    .locals 1

    .line 1095
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1096
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 1098
    invoke-virtual {v0, p0, p4}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1100
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-object v0
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;I)V
    .locals 3

    .line 1113
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 1114
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1115
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v0, v1, v0

    .line 1116
    iget-boolean v1, v0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_0

    int-to-float p1, p2

    .line 1117
    iput p1, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1119
    :cond_0
    iget-object v1, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v1, v1, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 1120
    iput-boolean p1, v0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    int-to-float p1, p2

    .line 1121
    iput p1, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1124
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1125
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1130
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/ArrayRow;->createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1131
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    :goto_0
    return-void
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 3

    .line 1145
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 1146
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1147
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v0, v1, v0

    .line 1148
    iget-boolean v1, v0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_0

    int-to-float p1, p2

    .line 1149
    iput p1, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1151
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1152
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1153
    invoke-virtual {v0, p0, p3}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1154
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 1157
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1158
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/ArrayRow;->createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1159
    invoke-virtual {v0, p0, p3}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1160
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    :goto_0
    return-void
.end method

.method public addGreaterBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)V
    .locals 3

    .line 1002
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1003
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1004
    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 1005
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1006
    iget-object p1, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x5

    .line 1007
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;II)V

    .line 1008
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method public addGreaterThan(Landroid/support/constraint/solver/SolverVariable;I)V
    .locals 3

    .line 991
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 992
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 993
    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 994
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 995
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method public addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 3

    .line 976
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 977
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 978
    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 979
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 981
    iget-object p1, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 982
    invoke-virtual {p0, v0, p1, p4}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;II)V

    .line 984
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)V
    .locals 3

    .line 1037
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1038
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1039
    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 1040
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1041
    iget-object p1, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x5

    .line 1042
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;II)V

    .line 1043
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 3

    .line 1022
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 1023
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1024
    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 1025
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 1027
    iget-object p1, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1028
    invoke-virtual {p0, v0, p1, p4}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;II)V

    .line 1030
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method public addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V
    .locals 7

    .line 1077
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1078
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p6, p1, :cond_0

    .line 1080
    invoke-virtual {v6, p0, p6}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1082
    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method addSingleError(Landroid/support/constraint/solver/ArrayRow;II)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, p3, v0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p3

    .line 233
    invoke-virtual {p1, p3, p2}, Landroid/support/constraint/solver/ArrayRow;->addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;
    .locals 2

    .line 254
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    .line 255
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 257
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p2

    .line 258
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 259
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 260
    iput v0, p2, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 261
    iput p1, p2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 262
    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object p2, p1, v0

    .line 263
    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    invoke-interface {p1, p2}, Landroid/support/constraint/solver/LinearSystem$Row;->addError(Landroid/support/constraint/solver/SolverVariable;)V

    return-object p2
.end method

.method public createExtraVariable()Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .line 203
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    .line 204
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 206
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 207
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 208
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 209
    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 210
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 153
    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_1

    .line 154
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 157
    :cond_1
    instance-of v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    .line 158
    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 161
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    move-object v0, p1

    .line 163
    :cond_2
    iget p1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    if-gt p1, v2, :cond_3

    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5

    .line 166
    :cond_3
    iget p1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-eq p1, v1, :cond_4

    .line 167
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 169
    :cond_4
    iget p1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 170
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 171
    iput p1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 172
    sget-object p1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object p1, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 173
    iget-object p1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, p1, v1

    :cond_5
    return-object v0
.end method

.method public createRow()Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 180
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v0}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/ArrayRow;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/support/constraint/solver/ArrayRow;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayRow;->reset()V

    .line 186
    :goto_0
    invoke-static {}, Landroid/support/constraint/solver/SolverVariable;->increaseErrorId()V

    return-object v0
.end method

.method public createSlackVariable()Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .line 191
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    .line 192
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 194
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 195
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 196
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 197
    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 198
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method displayReadableRows()V
    .locals 3

    .line 843
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    const-string v0, " #  "

    const/4 v1, 0x0

    .line 845
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_0

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n #  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 849
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    if-eqz v1, :cond_1

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method displaySystemInformations()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 891
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v1, v3, :cond_1

    .line 892
    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 893
    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    .line 897
    :goto_1
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v1, v4, :cond_3

    .line 898
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v5, v4, v1

    if-eqz v5, :cond_2

    .line 899
    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 903
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Linear System -> Table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v5, v5

    .line 904
    invoke-direct {p0, v5}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") -- row sizes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 905
    invoke-direct {p0, v2}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 906
    invoke-direct {p0, v3}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cols: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occupied cells, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 909
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 5

    .line 857
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    const-string v0, ""

    const/4 v1, 0x0

    .line 859
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_1

    .line 860
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v2, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v4, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v4, :cond_0

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCache()Landroid/support/constraint/solver/Cache;
    .locals 1

    .line 940
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    return-object v0
.end method

.method getGoal()Landroid/support/constraint/solver/LinearSystem$Row;
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 872
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_1

    .line 873
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 874
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNumEquations()I
    .locals 1

    .line 881
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .locals 1

    .line 883
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 1

    .line 312
    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getRow(I)Landroid/support/constraint/solver/ArrayRow;
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 1

    .line 304
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 308
    :cond_0
    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    return p1
.end method

.method getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 1

    .line 327
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_1

    .line 332
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public minimize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->minimizeGoal(Landroid/support/constraint/solver/LinearSystem$Row;)V

    return-void
.end method

.method minimizeGoal(Landroid/support/constraint/solver/LinearSystem$Row;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    .line 368
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->enforceBFS(Landroid/support/constraint/solver/LinearSystem$Row;)I

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/LinearSystem;->optimize(Landroid/support/constraint/solver/LinearSystem$Row;Z)I

    .line 378
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->computeValues()V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 122
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 123
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v1, v2, v3}, Landroid/support/constraint/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 129
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    .line 131
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 135
    :cond_2
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 136
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/LinearSystem$Row;

    invoke-interface {v1}, Landroid/support/constraint/solver/LinearSystem$Row;->clear()V

    const/4 v1, 0x1

    .line 137
    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    move v1, v0

    .line 138
    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_3

    .line 139
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroid/support/constraint/solver/ArrayRow;->used:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_3
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 142
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    return-void
.end method

.method updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 2

    .line 386
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V

    .line 388
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v0, v0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    :cond_0
    return-void
.end method
