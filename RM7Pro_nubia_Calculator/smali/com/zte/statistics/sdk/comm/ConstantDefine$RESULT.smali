.class public final enum Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;
.super Ljava/lang/Enum;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/comm/ConstantDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

.field public static final enum BUSY:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

.field public static final enum EMP:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

.field public static final enum ERR:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

.field public static final enum OK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;


# instance fields
.field private final result:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    const-string v1, "OK"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->OK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    const-string v1, "ERR"

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->ERR:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    const-string v1, "EMP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->EMP:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    const-string v1, "BUSY"

    const/4 v5, 0x3

    const/16 v6, 0x9

    invoke-direct {v0, v1, v5, v6}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->BUSY:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->OK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->ERR:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->EMP:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->BUSY:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->result:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;
    .locals 1

    .line 28
    const-class v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    return-object p0
.end method

.method public static values()[Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;
    .locals 1

    .line 28
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    invoke-virtual {v0}, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    return-object v0
.end method


# virtual methods
.method public getResultValue()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->result:I

    return p0
.end method
