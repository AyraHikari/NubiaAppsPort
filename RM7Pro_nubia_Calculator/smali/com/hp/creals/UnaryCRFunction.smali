.class public abstract Lcom/hp/creals/UnaryCRFunction;
.super Ljava/lang/Object;
.source "UnaryCRFunction.java"


# static fields
.field public static final absFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final acosFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final asinFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final atanFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final cosFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final expFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final identityFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final inverseFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final lnFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final negateFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final sinFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final sqrtFunction:Lcom/hp/creals/UnaryCRFunction;

.field public static final tanFunction:Lcom/hp/creals/UnaryCRFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/hp/creals/identity_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/identity_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->identityFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 66
    new-instance v0, Lcom/hp/creals/negate_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/negate_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->negateFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 72
    new-instance v0, Lcom/hp/creals/inverse_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/inverse_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->inverseFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 78
    new-instance v0, Lcom/hp/creals/abs_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/abs_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->absFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 84
    new-instance v0, Lcom/hp/creals/exp_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/exp_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->expFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 90
    new-instance v0, Lcom/hp/creals/cos_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/cos_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->cosFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 96
    new-instance v0, Lcom/hp/creals/sin_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/sin_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->sinFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 102
    new-instance v0, Lcom/hp/creals/tan_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/tan_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->tanFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 110
    new-instance v0, Lcom/hp/creals/asin_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/asin_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->asinFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 122
    new-instance v0, Lcom/hp/creals/acos_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/acos_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->acosFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 129
    new-instance v0, Lcom/hp/creals/atan_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/atan_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->atanFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 135
    new-instance v0, Lcom/hp/creals/ln_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/ln_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->lnFunction:Lcom/hp/creals/UnaryCRFunction;

    .line 141
    new-instance v0, Lcom/hp/creals/sqrt_UnaryCRFunction;

    invoke-direct {v0}, Lcom/hp/creals/sqrt_UnaryCRFunction;-><init>()V

    sput-object v0, Lcom/hp/creals/UnaryCRFunction;->sqrtFunction:Lcom/hp/creals/UnaryCRFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compose(Lcom/hp/creals/UnaryCRFunction;)Lcom/hp/creals/UnaryCRFunction;
    .locals 1

    .line 148
    new-instance v0, Lcom/hp/creals/compose_UnaryCRFunction;

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/compose_UnaryCRFunction;-><init>(Lcom/hp/creals/UnaryCRFunction;Lcom/hp/creals/UnaryCRFunction;)V

    return-object v0
.end method

.method public abstract execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
.end method

.method public inverseMonotone(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Lcom/hp/creals/UnaryCRFunction;
    .locals 1

    .line 159
    new-instance v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;

    invoke-direct {v0, p0, p1, p2}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;-><init>(Lcom/hp/creals/UnaryCRFunction;Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public monotoneDerivative(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Lcom/hp/creals/UnaryCRFunction;
    .locals 1

    .line 170
    new-instance v0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;

    invoke-direct {v0, p0, p1, p2}, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;-><init>(Lcom/hp/creals/UnaryCRFunction;Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V

    return-object v0
.end method
